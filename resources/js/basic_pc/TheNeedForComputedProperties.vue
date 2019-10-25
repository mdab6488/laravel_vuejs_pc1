<template>
    <div>
        <b>All List: </b>
        <ul class="list-group">
            <li 
                class="list-group-item"
                v-for="task in tasks">
                {{ task.title }}
            </li>
        </ul>
        <br>
        <br>
        <b>Complete List: </b>
        <ul class="list-group">
            <li 
                class="list-group-item"
                v-for="task in tasks"
                v-if="task.status">
                {{ task.title }}
            </li>
        </ul>
        <br>
        <br>
        <b>InComplete List: </b>
        <ul class="list-group">
            <li 
                class="list-group-item"
                v-for="InCompletTask in InCompletTasks">
                {{ InCompletTask.title }}
            </li>
        </ul>
        <br>
        <br>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                tasks: [
                    {
                        title: 'php',
                        status: true,
                    },
                    {
                        title: 'paython',
                        status: false,
                    },
                    {
                        title: 'laravel',
                        status: false,
                    },
                    {
                        title: 'botstrap',
                        status: true,
                    },
                    {
                        title: 'vuejs',
                        status: false,
                    },
                ],
            }
        },

        computed: {
            InCompletTasks() {
                return this.tasks.filter(task => ! task.status); 
            }
        },
    }
</script>

<style lang="scss">
    
</style>