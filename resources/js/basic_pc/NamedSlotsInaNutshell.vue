<template>
    <div>
        <div class="card text-center">
            <div class="card-header">
                <slot name="header">
                    Featured
                </slot>
            </div>
            <div class="card-body">
                <slot></slot>
            </div>
            <div class="card-footer text-muted">
                <slot name="footer">
                    2 days ago
                </slot>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style lang="scss">
    
</style>