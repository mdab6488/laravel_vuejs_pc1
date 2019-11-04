@extends('layout.master')

@section('title')
    Welcome To Fucking Coding World
@endsection

@section('style')

@endsection

@section('content')
    <div class="welcome">
        <aside class="main-sidebar">
            <div class="header text-center">
                <h2>VUEJS <span> WITH AB</span></h2>
            </div>
            <ul class="sidebar-menu">
                <router-link tag="li" to="/" exact>
                    <a>Home</a>
                </router-link>
                <router-link tag="li" to="/scopedslots" exact>
                    <a>Scoped Slots</a>
                </router-link>
                <router-link tag="li" to="/carousel" exact>
                    <a>Carousel</a>
                </router-link>
                <router-link tag="li" to="/testimonials_components" exact>
                    <a>Ts Comp</a>
                </router-link>
                <series-menu></series-menu>
                <li>
                    <a href="/faq">
                        Faq
                    </a>
                </li>
                <support-button></support-button>
                <div class="menu-btn-area">
                    <a href="/basicPractice" target="_blank" class="menu-btn">
                        Basic Practice
                    </a>
                </div>
            </ul>
        </aside>
        <div class="content-wrapper">
            <div class="fix-menu">
                <div class="social-media text-center">
                    <a href="#"><i class="fab fa-facebook-square"></i> Facebook</a>
                    <a href="#"><i class="fab fa-twitter-square"></i> Twitter</a>
                    <a href="#"><i class="fab fa-instagram"></i> Instagram</a>
                    <a href="#"><i class="fab fa-youtube"></i> Youtube</a>
                </div>
            </div>
            <div class="main-content">
                <router-view></router-view>
            </div>
        </div>

    </div>
@endsection

@section('scripts')

@endsection
