<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
    'facebook' => [
        'client_id' => "948505973086987",
        'client_secret' => "1cd7ec8f616d2d1f89968673f723cab9",
        'redirect' => "https://./auth/fb/callback",
    ],
    'google' => [
        'client_id' => '868021255911-astpl298v08fgh8cntgh1jk7a5c79tk0.apps.googleusercontent.com',
        'client_secret' => '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',
        'redirect' => 'https://kasenibara.000webhostapp.com/auth/gg/callback',
    ],

];
