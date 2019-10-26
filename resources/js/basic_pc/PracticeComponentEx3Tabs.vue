<template>
    <div>
        <ul 
            class="nav nav-tabs" 
            id="myTab">
            <li 
                class="nav-item"
                v-for="tab in tabs">
                <a 
                    class="nav-link" 
                    id="home-tab"
                    :class="{'active' : tab.isActive}"
                    :href="tab.href"
                    @click="selectTab(tab)">
                    {{ tab.name }}
                </a>
            </li>
        </ul>
        <br>
        <div 
            class="tab-content" 
            id="myTabContent">
            <slot></slot>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                tabs: [],
            }
        },
        
        created() {
            this.tabs = this.$children;
        },

        methods: {
            selectTab(selectedTab) {
                this.tabs.forEach(tab => {
                    tab.isActive = (tab.name === selectedTab.name);
                });
            }
        },
    }
</script>

<style lang="scss">
    
</style>