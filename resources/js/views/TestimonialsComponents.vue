<template>
    <div>
        <div class="container text-center">
            <h1 class="title p-t-60 p-b-60">Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC</h1>
            <img src="/img/_.debounceor_.throttle.PNG" class="img-thumbnail" alt="">
            <br>
            <br>
            <br>
            <div class="testimonials" id="testimonials">
                <div class="left">
                    <ul>
                        <li :id="`testimonial-${++index}`"
                            :class="activeTestimonial.id === testimonial.id ? 'active' : 'in-active'"
                            v-for="(testimonial, index) in testimonials"
                            @mouseover="setActiveTestimonial(testimonial)"
                            @mouseout="clearTimer">
                            <img 
                                :src="testimonial.path"
                                :alt="testimonial.name"
                                :title="testimonial.name">
                        </li>
                    </ul>
                </div>
                <div class="right">
                    <div class="review-user-infos">
                        <img 
                            :src="activeTestimonial.path"
                            :alt="activeTestimonial.name"
                            :title="activeTestimonial.name">
                        <h5>
                            {{ activeTestimonial.name }}
                        </h5>
                        <p>
                            {{ activeTestimonial.body }}
                        </p>
                        <button class="btn btn-primary">
                            More Testimonials
                        </button>
                    </div>
                </div>
            </div>
            <AddTestimonial @completed="addTestimonial"></AddTestimonial>
        </div>
    </div>
</template>

<script>
    
    import Testimonial from '../models/Testimonial'

    import AddTestimonial from '../components/AddTestimonial'


    export default {
        components: {
            AddTestimonial,
        },

        data() {
            return {
                testimonials: [],
                activeTestimonial: {},
                timer: null,
            }
        },
        created() {
            Testimonial.all(data => {
                this.testimonials = data;
                this.activeTestimonial = data[0];
            });
        },

        methods: {
            addTestimonial(testimonial) {
                this.testimonials.unshift(testimonial);

                // window.scrollTop('testimonials');
            },

            //Debounce
            // setActiveTestimonial: _.debounce(function (data) {
            //     console.log('updating testimonial ' + data.name + ' Set');

            //     this.activeTestimonial = data;
            // }, 250),

            //Throttle
            // setActiveTestimonial: _.throttle(function (data) {
            //     console.log('updating testimonial ' + data.name + ' Set');

            //     this.activeTestimonial = data;
            // }, 250),

            //Raguler
            setActiveTestimonial(data) {
                this.timer = setTimeout(() => {
                    // console.log('updating testimonial ' + data.name + ' Set');
                    this.activeTestimonial = data;
                }, 250);
            },

            clearTimer() {
                clearTimeout(this.timer);
            }
        },
    }
</script>

<style lang="scss">
    
</style>