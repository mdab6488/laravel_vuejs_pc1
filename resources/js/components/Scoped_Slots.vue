<template>
    <div>
        <ul 
            class="list-group">
            <li 
                class="list-group-item" 
                v-for="item in items">
                <slot 
                    name="listData" 
                    :item="item">
                    {{ item }}
                </slot>
                <!-- <slot 
                    name="test" 
                    think="foo" 
                    :item="item">
                    {{ item }}
                </slot> -->
                <!-- <slot 
                    think="foo" 
                    bar="barrr">
                </slot> -->
            </li>
        </ul>
    </div>
</template>

<script>
    export default {
        props: ['items'],

    }
</script>

<style lang="scss">
    
</style>