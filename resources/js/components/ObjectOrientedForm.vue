<template>
    <div>
        <form
            @submit.prevent="onProjectSubmit"
            @keydown="form.errors.clear($event.target.name)">
            <div 
                class="form-group">
                <input 
                    type="text" 
                    name="title"
                    class="form-control"
                    placeholder="Project Title"
                    v-model="form.title">
                <small 
                    class="form-text text-danger"
                    v-if="form.errors.has('title')"
                    v-text="form.errors.get('title')">
                </small>
            </div>
            <div 
                class="form-group">
                <textarea 
                    class="form-control"
                    rows="3"
                    name="body"
                    placeholder="Project Description"
                    v-model="form.body">
                </textarea>
                <small 
                    class="form-text text-danger"
                    v-if="form.errors.has('body')"
                    v-text="form.errors.get('body')">
                </small>
            </div>
            <input 
                type="submit" 
                class="btn btn-primary btn-block" 
                value="Create New Project"
                :disabled="form.errors.any()">
        </form>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                form: new Form({
                    title: '',
                    body: '',
                }),
            }
        },
        
        methods: {
            onProjectSubmit() {
                this.form
                    .post('/projects')
                    .then(data => alert('Submitting....'))
                    .catch(errors => console.log(errors));
            },
        },
    }
</script>

<style lang="scss">
    
</style>