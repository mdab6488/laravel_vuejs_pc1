<template>
    <div>
        <div
            class="status">
            <div
                class="card"
                style="margin-bottom: 15px;"
                v-for="status in statuses">
                <div
                    class="card-header">
                    {{ status.user.name }}
                    <span
                        class="float-right">
                        {{ status.created_at | ago | capitalize }}
                    </span>
                </div>
                <div
                    class="card-body">
                    <p
                        class="card-text">
                        {{ status.body }}
                    </p>
                    <slot name="footer"></slot>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import moment from 'moment';
    
    export default {
        props: ['statuses'],
        
        filters: {
            ago(data) {
                return moment(data).fromNow();
            },

            capitalize(value) {
                return value.toUpperCase();
            }
        },
    }
</script>

<style lang="scss">
    
</style>