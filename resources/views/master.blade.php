<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    {{-- page title --}}
    <title>@yield('page_title')</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    {{-- style --}}
    <style>
        body {
            background-image: url("{{ asset('hydrangea-flowers.jpg') }}");
            background-size: cover;
            background-attachment: fixed;
            z-index: -1;
        }

        @media (min-width: 992px) {
            main {
                margin: 70px 200px 200px 200px;
                padding: 20px;
            }
        }
    </style>
    @stack('style')
    {{-- scripts --}}
    @stack('before_scripts')
</head>

<body>

    <main style="z-index: 2;background:white;padding:15px 0px; border-radius:15px;">
        @yield('main_content')
    </main>





    @stack('after_scripts')
</body>

</html>
