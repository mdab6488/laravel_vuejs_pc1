@extends('layout.master')
@section('style')
    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links > a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }
    </style>
@endsection

@section('content')
    {{-- <div class="flex-center position-ref full-height">
        @if (Route::has('login'))
            <div class="top-right links">
                @auth
                    <a href="{{ url('/home') }}">Home</a>
                @else
                    <a href="{{ route('login') }}">Login</a>

                    @if (Route::has('register'))
                        <a href="{{ route('register') }}">Register</a>
                    @endif
                @endauth
            </div>
        @endif

        <div class="content">
            <div class="title m-b-md">
                Laravel
            </div>

            <div class="links">
                <a href="https://laravel.com/docs">Docs</a>
                <a href="https://laracasts.com">Laracasts</a>
                <a href="https://laravel-news.com">News</a>
                <a href="https://blog.laravel.com">Blog</a>
                <a href="https://nova.laravel.com">Nova</a>
                <a href="https://forge.laravel.com">Forge</a>
                <a href="https://vapor.laravel.com">Vapor</a>
                <a href="https://github.com/laravel/laravel">GitHub</a>
            </div>
        </div>
    </div> --}}
    <div class="flex-center position-ref">
        <div class="container">
            <h1>Basic Data Binding:</h1>
            <basic-data-binding></basic-data-binding>
            <hr>
            <div class="row">
                <div class="col-md-6">
                    <h1>List Javascript Event Listeners:</h1>
                    <list></list>
                </div>
                <div class="col-md-6">
                    <h1>List Vue Event Listeners:</h1>
                    <vue-event-listener></vue-event-listener>
                </div>
            </div>
            <hr>
            <h1>Attribute and Class Binding:</h1>
            <attribute-and-class></attribute-and-class>
            <hr>
            <h1>The Need for Computed Properties:</h1>
            <theneed-for-computedproperties></theneed-for-computedproperties>
            <hr>
            <h1>Component 101:</h1>
            <component-101>
                Laravel Framwork
            </component-101>
            <component-101>
                Vue Js
            </component-101>
            <hr>
            <h1>Component With Component:</h1>
            <component-with-component></component-with-component>
            <hr>
            <h1>Practical Component Exercise 1 Message:</h1>
            <pra-component-ex1-message
                title="The standard Lorem Ipsum passage, used since the 1500s"
                message="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.">
            </pra-component-ex1-message>
            <hr>
            <h1>Practical Component Exercise 2 Modal:</h1>
            <pra-component-ex2-modal
                button="Show Modal"
                title="The Title">
                mdab
            </pra-component-ex2-modal>
            <hr>
            <h1>Practical Component Exercise 3 Tabs:</h1>
            <tabs>
                <tab name="laravel" :selected="true">
                    Learning Laravel
                </tab>
                <tab name="php">
                    Learning Php
                </tab>
                <tab name="vuejs">
                    Learning vuejs
                </tab>
            </tabs>
            <hr>
            <h1>Component Communication Example 1 Custom Events:</h1>
            <coupon></coupon>
            <hr>
            <h1>Named Slots in a Nutshell:</h1>
            <named-slots-in-a-nutshell
                >
            </named-slots-in-a-nutshell>
            <hr>
            <h1>Single-Use Components and Inline Templates:</h1>
            <single-use-components-and-inline-template
                >
            </single-use-components-and-inline-template>
            <hr>
        </div>
    </div>
@endsection

@section('scripts')

@endsection
