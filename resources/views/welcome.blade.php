<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel</title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <!-- Styles -->
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Figtree', sans-serif;
            background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20230610/pngtree-the-gym-scene-where-people-are-sitting-in-a-gym-image_2949922.jpg');
            background-size: cover;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .auth-container {
            background-color: rgba(255, 255, 255, 0);
            border-color: white;
            border-style: solid;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            text-align: center;
           margin-bottom: 500px;
         color: white
        }
        .auth-links {
            margin-top: 20px;
        }
        .auth-links a {
            font-weight: 600;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 0 10px;
            background-color: rgba(255, 255, 255,);
           
        }
        .auth-links a:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    
    <div class="auth-container">
        @if (Route::has('login'))
            <div class="auth-links">
                @auth
                    <a href="{{ url('/dashboard') }}">Dashboard Admin</a>
                @else
                <h1>Palestra Xelba</h1>
                    <a href="{{ route('login') }}">Log in</a>
                    @if (Route::has('register'))
                        <a href="{{ route('register') }}">Registrati</a>
                    @endif
                @endauth
            </div>
        @endif
    </div>
</body>
</html>