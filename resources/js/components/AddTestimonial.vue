<template>
    <div>
        <div class="card" style="margin-top: 60px;margin-bottom: 60px;">
            <div class="card-header">
                Create New Testimonial
            </div>
            <div class="card-body text-left">
                <form
                    @submit.prevent="OnSatatusSubmit"
                    @keydown="form.errors.clear($event.target.name)">
                    <div 
                        class="form-group">
                        <input 
                            type="text"
                            name="path"
                            class="form-control"
                            placeholder="Url"
                            v-model="form.path">
                        <span class="form-text text-danger" 
                            v-if="form.errors.has('path')"
                            v-text="form.errors.get('path')"></span>
                    </div>
                    <div 
                        class="form-group">
                        <input 
                            type="text"
                            name="name"
                            class="form-control"
                            placeholder="Name"
                            v-model="form.name">
                        <span class="form-text text-danger" 
                            v-if="form.errors.has('name')"
                            v-text="form.errors.get('name')"></span>
                    </div>
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
                    name: '',
                    body: '',
                    path: '',
                }),
            }
        },
        
        methods: {
            OnSatatusSubmit() {
                this.form
                    .post('/testimonials')
                    .then(testimonial => this.$emit('completed', testimonial));
                    // .then(data => alert('submitting...'));
            },
        },
    }
</script>

<style lang="scss">
    
</style>