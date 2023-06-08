<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Common\Helper;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        return view('cart');
    }

    public function addToCart(Request $request)
    {
        // dd($request);
        $id = $request->get('id');
        $game = Game::findOrFail($id);

        $cart = session()->get('cart', []);

        // If the game already in the cart, increase the amount
        if (isset($cart[$id])) {
            $cart[$id]['quantity']++;
        } else {
            $cart[$id] = [
                'id' => $game->id,
                'name' => $game->name,
                'price' => $game->price,
                'image' => $game->image,
                'quantity' => 1
            ];
        }

        session()->put('cart', $cart);
        return redirect()->route('cart')->with('add_to_cart_success', "Thêm vào giỏ hàng thành công");
    }

    public function updateCart(Request $request)
    {
        try {
            if ($request->id && $request->quantity) {
                $cart = session()->get('cart');
                $cart[$request->id]["quantity"] = $request->quantity;
                session()->put('cart', $cart);
                return redirect()->back()->with('cart_updated', "Cập nhật thành công");
            }
        } catch (\Exception $ex) {
            return redirect()->back()->with('unknow_error', "Something went wrong");
        }
    }

    public function removeItemFromCart(Request $request)
    {
        // If has the id, remove it
        $cart = session()->get('cart');
        if ($request->id) {
            if (isset($cart[$request->id])) {
                unset($cart[$request->id]);
                session()->put('cart', $cart);
            }
            return redirect()->back()->with('remove_item_success', "Xóa sản phẩm thành công");
        }
        // If the request has 'clear_all', remove the entire cart
        if ($request->has('clear_all')) {
            session()->put('cart', null);
            return redirect()->back()->with('clear_cart_success', "Xóa giỏ hàng thành công");
        }
        return redirect()->back()->with('unknow_error', "Something went wrong");
    }

    public function payMomo(Request $request)
    {
        $endpoint = "https://test-payment.momo.vn/v2/gateway/api/create";


        $partnerCode = 'MOMOBKUN20180529';
        $accessKey = 'klm05TvNBzhg7h7j';
        $secretKey = 'at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa';
        $orderInfo = "Thanh toán qua MoMo";
        $amount = $request->get('total');
        $orderId = time() . "";
        $redirectUrl = "http://localhost:8000/cart";
        $ipnUrl = "http://localhost:8000/cart";
        $extraData = "";


        //     $partnerCode = $_POST["partnerCode"];
        //     $accessKey = $_POST["accessKey"];
        //     $serectkey = $_POST["secretKey"];
        //     $orderId = $_POST["orderId"]; // Mã đơn hàng
        //     $orderInfo = $_POST["orderInfo"];
        //     $amount = $_POST["amount"];
        //     $ipnUrl = $_POST["ipnUrl"];
        //     $redirectUrl = $_POST["redirectUrl"];
        //     $extraData = $_POST["extraData"];

        $requestId = time() . "";
        $requestType = "payWithATM";
        // $extraData = ($_POST["extraData"] ? $_POST["extraData"] : "");
        //before sign HMAC SHA256 signature
        $rawHash = "accessKey=" . $accessKey . "&amount=" . $amount . "&extraData=" . $extraData . "&ipnUrl=" . $ipnUrl . "&orderId=" . $orderId . "&orderInfo=" . $orderInfo . "&partnerCode=" . $partnerCode . "&redirectUrl=" . $redirectUrl . "&requestId=" . $requestId . "&requestType=" . $requestType;
        $signature = hash_hmac("sha256", $rawHash, $secretKey);
        $data = array(
            'partnerCode' => $partnerCode,
            'partnerName' => "Test",
            "storeId" => "MomoTestStore",
            'requestId' => $requestId,
            'amount' => $amount,
            'orderId' => $orderId,
            'orderInfo' => $orderInfo,
            'redirectUrl' => $redirectUrl,
            'ipnUrl' => $ipnUrl,
            'lang' => 'vi',
            'extraData' => $extraData,
            'requestType' => $requestType,
            'signature' => $signature
        );
        $result = Helper::execPostRequest($endpoint, json_encode($data));
        dd($result);
        $jsonResult = json_decode($result, true);  // decode json

        return redirect()->to($jsonResult['payUrl']);
    }

    public function payVnpay(Request $request)
    {
        $vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = "http://localhost:8000/cart";
        $vnp_TmnCode = "NGPV5U4Q"; //Mã website tại VNPAY 
        $vnp_HashSecret = "FYXGGFJSWBPVXDVENZXFQUSCJKXYYANK"; //Chuỗi bí mật

        $vnp_TxnRef = Str::random(8); //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = 'Thanh toán VNPAY';
        $vnp_OrderType = 'billpayment';
        $vnp_Amount = $request->get('total') * 100;
        $vnp_Locale = 'vn';
        $vnp_BankCode = 'NCB';
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
        //Add Params of 2.0.1 Version
        // $vnp_ExpireDate = $_POST['txtexpire'];
        //Billing
        // $vnp_Bill_Mobile = $_POST['txt_billing_mobile'];
        // $vnp_Bill_Email = $_POST['txt_billing_email'];
        // $fullName = trim($_POST['txt_billing_fullname']);
        // if (isset($fullName) && trim($fullName) != '') {
        //     $name = explode(' ', $fullName);
        //     $vnp_Bill_FirstName = array_shift($name);
        //     $vnp_Bill_LastName = array_pop($name);
        // }
        // $vnp_Bill_Address = $_POST['txt_inv_addr1'];
        // $vnp_Bill_City = $_POST['txt_bill_city'];
        // $vnp_Bill_Country = $_POST['txt_bill_country'];
        // $vnp_Bill_State = $_POST['txt_bill_state'];
        // // Invoice
        // $vnp_Inv_Phone = $_POST['txt_inv_mobile'];
        // $vnp_Inv_Email = $_POST['txt_inv_email'];
        // $vnp_Inv_Customer = $_POST['txt_inv_customer'];
        // $vnp_Inv_Address = $_POST['txt_inv_addr1'];
        // $vnp_Inv_Company = $_POST['txt_inv_company'];
        // $vnp_Inv_Taxcode = $_POST['txt_inv_taxcode'];
        // $vnp_Inv_Type = $_POST['cbo_inv_type'];
        $inputData = array(
            "vnp_Version" => "2.1.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef
        );

        // "vnp_ExpireDate" => $vnp_ExpireDate,
        // "vnp_Bill_Mobile" => $vnp_Bill_Mobile,
        // "vnp_Bill_Email" => $vnp_Bill_Email,
        // "vnp_Bill_FirstName" => $vnp_Bill_FirstName,
        // "vnp_Bill_LastName" => $vnp_Bill_LastName,
        // "vnp_Bill_Address" => $vnp_Bill_Address,
        // "vnp_Bill_City" => $vnp_Bill_City,
        // "vnp_Bill_Country" => $vnp_Bill_Country,
        // "vnp_Inv_Phone" => $vnp_Inv_Phone,
        // "vnp_Inv_Email" => $vnp_Inv_Email,
        // "vnp_Inv_Customer" => $vnp_Inv_Customer,
        // "vnp_Inv_Address" => $vnp_Inv_Address,
        // "vnp_Inv_Company" => $vnp_Inv_Company,
        // "vnp_Inv_Taxcode" => $vnp_Inv_Taxcode,
        // "vnp_Inv_Type" => $vnp_Inv_Type

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
            $inputData['vnp_Bill_State'] = $vnp_Bill_State;
        }

        //var_dump($inputData);
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
            } else {
                $hashdata .= urlencode($key) . "=" . urlencode($value);
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret); //  
            $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
        }
        $returnData = array(
            'code' => '00', 'message' => 'success', 'data' => $vnp_Url
        );
        if (isset($_POST['redirect'])) {
            header('Location: ' . $vnp_Url);
            die();
        } else {
            echo json_encode($returnData);
        }
    }
}
