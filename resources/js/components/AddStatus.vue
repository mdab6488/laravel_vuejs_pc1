<template>
    <div>
        <div class="card">
            <div class="card-header">
                Create New Status
            </div>
            <div class="card-body">
                <form
                    @submit.prevent="OnSatatusSubmit"
                    @keydown="form.errors.clear($event.target.name)">
                      <div 
                        class="form-group">
                        <textarea 
                        class="form-control" 
                        name="body"
                        rows="3"
                        placeholder="I Have Something To Say..."
                        v-model="form.body"></textarea>
                        <span class="form-text text-danger" 
                            v-if="form.errors.has('body')"
                            v-text="form.errors.get('body')"></span>
                    </div>
                    <input 
                        type="submit" 
                        class="btn btn-primary btn-block" 
                        value="Create New Status"
                        :disabled="form.errors.any()">
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                form: new Form({
                    body: '',
                }),
            }
        },
        
        methods: {
            OnSatatusSubmit() {
                this.form
                    .post('/statuses')
                    .then(status => this.$emit('completed', status));
                    // .then(data => alert('submitting...'));
            },
        },
    }
</script>

<style lang="scss">
    
</style>