<template>
    <div>
        <div class="form-group">
            <input 
                class="form-control"
                type="text"
                placeholder="Add Cupon Code"
                v-model="couponCode"
                @blur="onCouponApplied">
        </div>
        <b  v-if="couponApplied">
            You Use A Coupon
        </b>
        <b  v-if="couponApplied === false">
            This Coupon Code Is Incorrect!
        </b>
    </div>
</template>

<script>
    window.Event  = new class{
        constructor() {
            this.vue = new Vue();
        }
        fire(event, data = null){
            this.vue.$emit(event, data);
        }
        listen(event, callback){
            this.vue.$on(event, callback);
        }
    };
    export default {
        data() {
            return {
                couponCode: '',
                validCouponCodes: [
                    'mdab',
                    'mitu',
                ],
                couponApplied: null,
            }
        },

        created(){
            Event.listen('applied', () => alert('handling it'));
        },

        methods: {
            onCouponApplied() {
                Event.fire('applied');

                this.couponApplied = this.validCouponCodes.includes(this.couponCode);
            },
        },
    }
</script>

<style lang="scss">
    
</style>