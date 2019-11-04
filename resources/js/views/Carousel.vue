<template>
    <div>
        <h1>Carousel Slots:</h1>
        <div 
            class="alert alert-primary">
            <h4>Flickity Slider</h4>
        </div>
        <flickity-carousel-slider 
            :autoPlay="true">
            <img src="https://placeimg.com/640/480/any">
            <img src="https://placeimg.com/640/480/any?2">
            <img src="https://placeimg.com/640/480/any?3">
            <img src="https://placeimg.com/640/480/any?4">
            <img src="https://placeimg.com/640/480/any?5">
        </flickity-carousel-slider>
        <br>
        <br>
        <br>
        <!-- https://antonreshetov.github.io/vue-glide/install/ -->
        <div 
            class="alert alert-primary">
            <h4>Vue Glide Slider</h4>
        </div>
        <vue-glide 
            :autoplay="true"
            :perView="2"
            :animationDuration="1500">
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?1">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?2">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?3">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?4">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?5">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?6">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?7">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?8">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?9">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?10">
            </vue-glide-slide>
            <vue-glide-slide>
                <img src="https://placeimg.com/300/300/any?11">
            </vue-glide-slide>

            <!-- <template slot="control">
                <button data-glide-dir="<">prev</button>
                <button data-glide-dir=">">next</button>
            </template> -->
        </vue-glide>
    </div>
</template>

<script>
    import { Glide, GlideSlide } from 'vue-glide-js'
 
    export default {
        // props: {
        //     'type': 'carousel',
        // },
        props: {
            type: 'carousel',
        },
        components: {
            [Glide.name]: Glide,
            [GlideSlide.name]: GlideSlide
        }
    }
</script>

<style lang="scss">
    
</style>