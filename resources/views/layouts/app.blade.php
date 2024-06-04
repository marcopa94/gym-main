<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Gym</title>
    <link rel="icon" href="/gym_icon.svg">
    <!-- Fonts and icons -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <style>
        body {
            font-family: 'Figtree', sans-serif;
            background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20230610/pngtree-the-gym-scene-where-people-are-sitting-in-a-gym-image_2949922.jpg');
            background-size: cover;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        main {
            flex-grow: 1; /* Per far sì che il main si estenda per riempire lo spazio disponibile */
            padding: 20px; /* Aggiungo spazio intorno al contenuto principale */
        }
 
    </style>
    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="font-sans antialiased">
    @include('layouts.navigation')
    <!-- Page Heading -->
    @if (isset($header))
        <header class="bg-white dark:bg-gray-800 shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                {{ $header }}
            </div>
        </header>
    @endif
    <!-- Page Content -->
    <main>
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8 rounded-lg">
            {{ $slot }}
        </div>
    </main>
    
        @component('components.footer') @endcomponent
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>