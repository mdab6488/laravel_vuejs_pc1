<template>
    <div>
        <ul
            class="list-group">
            <li
                class="list-group-item"
                v-for="program in programs"
                v-text="program">
            </li>
        </ul>
        <br>
        <div class="form-group">
            <input
                type="text"
                class="form-control"
                placeholder="Programing Language Name"
                v-model="NewLanguage">
        </div>
        <input
            type="submit"
            class="btn btn-primary"
            @click="AddNewLanguage">
    </div>
</template>

<script>
    export default {
        data() {
            return {
                NewLanguage: '',
                programs: [
                    'PHP',
                    'VUEJS',
                    'PAYTHON',
                    'C++',
                    'Ruby',
                ],
            }
        },
        
        methods: {
            AddNewLanguage() {
                this.programs.push(this.NewLanguage);
                this.NewLanguage = '';
            }
        },
    }
</script>

<style lang="scss">

</style>