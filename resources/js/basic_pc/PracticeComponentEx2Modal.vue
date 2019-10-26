<template>
    <div>
        <button 
            type="button" 
            class="btn btn-primary"
            @click="IsActiveModel">
            {{ button }}
        </button>
        
        <div 
            class="modal fade" 
            id="exampleModalCenter" 
            style="display: block"
            v-if="IsActive"
            :class="{'show' : IsActive}">
            <div 
                class="modal-dialog modal-dialog-centered" 
                role="document">
                <div 
                    class="modal-content">
                    <div 
                        class="modal-header">
                        <h5 
                            class="modal-title" 
                            id="exampleModalLongTitle">
                            {{ title }}
                        </h5>
                        <button 
                            type="button" 
                            class="close"
                            @click="InActiveModel">
                            <span>&times;</span>
                        </button>
                    </div>
                    <div 
                        class="modal-body">
                        <slot></slot>
                    </div>
                    <div 
                        class="modal-footer">
                        <button 
                            type="button" 
                            class="btn btn-secondary"
                            @click="InActiveModel">
                            Close
                        </button>
                        <button 
                            type="button" 
                            class="btn btn-primary">
                            Save changes
                        </button>
                    </div>
                </div>
            </div>
            <div 
                class="modal-backdrop fade"
                v-if="IsActive"
                :class="{'show' : IsActive}"
                @click="InActiveModel"></div>
        </div>
    </div>
</template>

<script>
    export default {
        props: [
            'button',
            'title',
        ],
        data() {
            return {
                IsActive: false,
            }
        },
        methods: {
            IsActiveModel() {
                this.IsActive = true;
            },
            InActiveModel() {
                this.IsActive = false;
                console.log('work');
            }
        },
    }
</script>

<style lang="scss">
    .modal{
        .modal-dialog{
            position: relative;
            z-index: 1050;
        }
    }
    .modal-backdrop{
        cursor: pointer;
    }
</style>