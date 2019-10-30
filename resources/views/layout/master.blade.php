<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('title')</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <link rel="stylesheet" href="/css/app.css">
        <link rel="stylesheet" href="/css/libs.css">
        @yield('style')
    </head>
    <body>
        <div id="app" class="">
            @yield('content')
        </div>
        <script src="/js/app.js"></script>
        @yield('scripts')
    </body>
</html>
