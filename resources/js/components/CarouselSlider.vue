<template>
    <div>
        <!-- 
            // With this.$el
        <slot></slot> -->
        <div class="main-carousel">
            <slot></slot>
        </div>
    </div>
</template>

<script>
    import Flickity from 'flickity';
    
    import 'flickity/dist/flickity.min.css';

    export default {
        props: {
            wrapAround: {default: false},
            freeScroll: {default: false},
            groupCells: {default: false},
            autoPlay: {default: false},
            lazyLoad: {default: false},
            Parallax: {default: false},
        },
        mounted() {
            // new Flickity( this.$el, {
            //     // options
            //     cellAlign: 'left',
            //     contain: true
            // });

            new Flickity( '.main-carousel', {
                // options
                cellAlign: 'left',
                contain: true,
                wrapAround: this.wrapAround,
                freeScroll: this.freeScroll,
                groupCells: this.groupCells,
                autoPlay: this.autoPlay,
                lazyLoad: this.lazyLoad,
                Parallax: this.Parallax,
            });
        },
    }
</script>

<style lang="scss">
    
</style>