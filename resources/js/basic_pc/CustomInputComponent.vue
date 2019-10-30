<!-- 
<template>
    <input 
        type="text"
        class="form-control"
        placeholder="Apply Coupon Code"
        :value="code"
        @input="updateCode($event.target.value)"
        ref="input">
</template>

<script>
    export default {
        props: ['code'],

        data() {
            return {
                inValidCoupon: [
                    'allfree',
                    '10dc',
                    '20dc',
                ],
            }
        },  
        
        methods: {
            updateCode(upCode) {
                if(this.inValidCoupon.includes(upCode)) 
                {
                    alert('This Code Is Invalid');

                    this.$refs.input.value = upCode = '';
                }

                this.$emit('input', upCode);
            }
        },
    }
</script>

<style lang="scss">
    
</style>
-->

<template>
    <div>
        <input 
        type="text" 
        placeholder="Use Coupon Code"
        class="form-control"
        v-model="newCoupon"
        @input="updateCode($event.target.value)">
        <p v-if="isApply">
            <br>
            Cupon Code Is Apply
        </p>
        <p v-if="expiredCoupon">
            <br>
            Cupon Code Is Expired
        </p>
        <p v-if="isApply === false">
            <br>
            Cupon Code Is Incorrect
        </p>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                newCoupon: '',
                validCoupon: [
                    '#ffffff',
                    '#000000',
                    '#f9f9f9',
                ],
                inValidCoupon: [
                    'allfree',
                    '10dc',
                    '20dc',
                ],
                isApply: null,
                expiredCoupon: false,
            }
        },

        methods: {
            updateCode(upCode) {
                if(this.validCoupon.includes(upCode)) 
                {
                    this.newCoupon = upCode;
                    
                    this.isApply = true;

                    this.expiredCoupon = false;
                }
                else if (this.inValidCoupon.includes(upCode))
                {
                    this.newCoupon = upCode = '';

                    this.expiredCoupon = true;

                    this.isApply = null;
                }
                else
                {
                    this.isApply = false;

                    this.expiredCoupon = false;
                }

                this.$emit('input', upCode);
            }
        },
    }
</script>

<style lang="scss">
    
</style>