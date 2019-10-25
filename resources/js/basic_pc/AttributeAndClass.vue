<template>
    <div>
        <div 
            class="alert alert-primary" 
            role="alert"
            v-if="isToggle">
            This is a primary alert—check it out!
        </div>
        <button 
            type="button" 
            class="btn btn-primary"
            :class="{ 'btn-success' : isToggle }"
            @click="ShowAlert">
            Toggle Me
        </button>
        <button 
            type="button" 
            class="btn btn-primary"
            :title="elementTitle">
            Hover Over Me!
        </button>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                elementTitle: 'Inside Data Title',
                isToggle: true,
            }
        },

        methods: {
            ShowAlert() {
                if(this.isToggle === true) {
                    this.isToggle = false;
                }else{
                    this.isToggle = true;
                }
            },
            toggleClass(){
                this.isLoading = true;
            }
        },
    }
</script>

<style lang="">

</style>