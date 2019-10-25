<template>
    <div>
        <h4 v-text="property"></h4>
        <ul
            class="list-group">
            <li
                class="list-group-item"
                v-for="girl in girls"
                v-text="girl"
            >
            </li>
        </ul>
        <br>
        <div class="form-group">
            <input
                type="text"
                class="form-control"
                placeholder="Girl Name"
                name="girl"
                id="girlName">
        </div>
        <input
            type="submit"
            class="btn btn-primary"
            name="submit"
            id="submit">
</div>
</template>

<script>
    export default {
        data() {
            return {
                girls: [
                    'MITU',
                    'ETC1',
                    'ETC2',
                    'ETC3',
                    'ETC4',
                    'etc5',
                ],
                property: 'Blank',
            }
        },
        mounted() {
            document.querySelector('#submit').addEventListener('click', () => {
                const name = document.querySelector('#girlName').value;
                this.girls.push(name);
                document.querySelector('#girlName').value = null;
            });
        },

        created() {
            this.girls = ['Who', 'Are', 'You?'],
            this.property = 'Evos Blink'
        },
    }
</script>

<style lang="scss">

</style>
