<template>
    <div>
        <div
            class="text-center">
            <h1>Welcome Home</h1>
        </div>
        <hr>        
       <h3>User Status:</h3>
        <br>
        <StatusList :statuses="statuses">
            <template slot="footer">
                <div>
                    <div class="row">
                        <div class="col-md-6 text-left">
                            <button 
                                type="button" 
                                class="btn btn-default">
                                <i 
                                    class="far fa-heart"></i> 
                                Like
                            </button>
                        </div>
                        <div class="col-md-6 text-right">
                            <button 
                                type="button" 
                                class="btn btn-default">
                                <i 
                                    class="far fa-comments"></i> 
                                Comment
                            </button>
                        </div>
                    </div>
                </div>
            </template>
        </StatusList>
        <AddStatus @completed="addStatus"></AddStatus>
    </div>
</template>

<script>
    import Status from '../models/Status';

    import StatusList from '../components/Status';

    import AddStatus from '../components/AddStatus';

    export default {  
        components: {
            StatusList,
            AddStatus,
        },

        data() {
            return {
                statuses: [],
            }
        },

        created() {
            Status.all(data => this.statuses = data);
                // .then(response => this.statuses = response.data);
                // ES - 2015
                // .then(({data}) => this.statuses = data);
        },

        methods: {
            addStatus(status) {
                // Set To The Top
                this.statuses.unshift(status);

                // Set To The Bottom
                // this.statuses.push(status);

                // alert('Your Status Is Added!');

                window.scrollTo(0, 0);
            }
        },
    }
</script>

<style lang="scss">

</style>
