<template>
    <div>
        <ul>
            <li v-for="skill in skills" v-text="skill"></li>
        </ul>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                skills: [],
            }
        },
        
        created() {
            axios.get('/codes').then(response => this.skills = response.data);
        },
    }
</script>

<style lang="scss">
    
</style>