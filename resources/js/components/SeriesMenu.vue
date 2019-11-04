<template>
    <div>
        <li 
            @mouseover="active = true"
            @mouseout="active = false">
            <a>
                Series
            </a>
            <portal-target name="nav-after" slim></portal-target>
        </li>
        <!-- for this example here don't need portal i am just for store an example how to work if any project need this. so here i found the my own example -->
        <portal to="nav-after">
            <div 
                class="nav-after"
                v-show="active">
                <div class="mega-menu">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="left">
                                <ul>
                                    <li 
                                        v-for="skill in skills" 
                                        v-text="skill"
                                        :class="{active : skill === selected}"
                                        @mouseover="ShowSkill(skill)">
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="right">
                                <ul>
                                    <li 
                                        v-for="item in seriesList"
                                        v-if="selected === item.series">
                                        <a 
                                            :href="`/series/` + item.slug">
                                            {{ item.name }}
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </portal>
    </div>
</template>

<script>
    import Series from '../models/Series'

    export default {
        data() {
            return {
                active: false,
                selected: 'Php',
                series: {},
            }
        },

        created() {
            Series.all(data => this.series = data);
        },

        computed: {
            skills() {
                return ['Php', 'Laravel', 'Testing', 'Vue', 'Tooling'];
            },

            seriesList() {
                // return this.series[this.selected];
                return this.series;
            }
        },

        methods: {
            ShowSkill(data) {
                this.selected = data;
            },
        },
    }
</script>

<style lang="scss">
    
</style>