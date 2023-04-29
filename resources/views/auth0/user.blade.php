// 📂 resources/views/auth0/user.blade.php

<!DOCTYPE html>
<html>
    <body>
        <p>Welcome! You are authenticated. <a href="{{ route('logout') }}">Log out</a></p>
        <div>
            <pre><?php print_r(Auth::user()) ?></pre>
        </div>
    </body>
</html>