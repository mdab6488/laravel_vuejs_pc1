<template>
    <div>
        <div 
            class="card" 
            v-if="IsActive">
            <div class="card-body">
                <h5 
                    class="card-title">
                    {{ title }}
                </h5>
                <p 
                    class="card-text">
                    {{ message }}
                </p>
                <a 
                    href="#" 
                    class="card-link">
                    Card link
                </a>
                <a 
                    href="#" 
                    class="card-link">
                    Another link
                </a>
            </div>
        </div>
        <br>
        <button 
            type="button" 
            class="btn btn-primary"
            @click="InActive"
            v-text="status">
        </button>
    </div>
</template>

<script>
    export default {
        props: [
            'title',
            'message',
        ],

        data() {
            return {
                IsActive: true,
                status: 'Hide Message',
            }
        },

        methods: {
            InActive() {
                if(this.IsActive === true){
                    this.IsActive = false;
                    this.status = 'Show Message';
                }else{
                    this.IsActive = true;
                }
            }
        },
    }
</script>

<style lang="scss">
    
</style>