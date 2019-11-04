<template>
    <div>
        <li>
            <a
                @click="$modal.show('supportModel')">
                Contact Us
            </a>
        </li>
        <modal 
            name="supportModel"
            :pivotY="0"
            :pivotX="0"
            :scrollable="true">
            <div class="supportModel p-60">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center p-b-60">
                            <h1>Have a Question?</h1>
                        </div>
                        <div class="col-md-8 offset-md-2">
                            <form
                                @submit.prevent="onContactUs"
                                @keydown="form.errors.clear($event.target.name)">
                                <div 
                                    class="form-group">
                                    <input 
                                        type="text" 
                                        name="name"
                                        class="form-control" 
                                        placeholder="What's your name?"
                                        required="required"
                                        v-model="form.name">
                                    <small 
                                        class="form-text text-danger"
                                        v-if="form.errors.has('name')"
                                        v-text="form.errors.get('name')">
                                    </small>
                                </div>
                                <div 
                                    class="form-group">
                                    <input 
                                        type="email" 
                                        name="email"
                                        class="form-control" 
                                        placeholder="Which email address should we respond to?"
                                        required="required"
                                        v-model="form.email">
                                    <small 
                                        class="form-text text-danger"
                                        v-if="form.errors.has('email')"
                                        v-text="form.errors.get('email')">
                                    </small>
                                </div>
                                <div 
                                    class="form-group">
                                    <textarea 
                                        class="form-control" 
                                        name="question"
                                        rows="3"
                                        required="required"
                                        placeholder="What's your question?"
                                        v-model="form.question">
                                    </textarea>
                                    <small 
                                        class="form-text text-danger"
                                        v-if="form.errors.has('question')"
                                        v-text="form.errors.get('question')">
                                    </small>
                                </div>
                                <div 
                                    class="form-group">
                                    <input 
                                        type="number" 
                                        name="verification"
                                        class="form-control" 
                                        placeholder="What is 1 + 4?"
                                        required="required"
                                        v-model="form.verification">
                                    <small 
                                        class="form-text text-danger"
                                        v-if="form.errors.has('verification')"
                                        v-text="form.errors.get('verification')">
                                    </small>
                                </div>
                                <button 
                                    type="button" 
                                    class="btn btn-outline-dark"
                                    @click="cancelForm">
                                    Cancel
                                </button>
                                <input 
                                    type="submit" 
                                    class="btn btn-primary" 
                                    value="Send"
                                    :disabled="form.errors.any()">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </modal>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                form: new Form({
                    name: '',
                    email: '',
                    question: '',
                    verification: '',
                }),
            }
        },

        methods: {
            cancelForm() {
                this.$modal.hide('supportModel');

                this.form = new Form({
                    name: '',
                    email: '',
                    question: '',
                    verification: '',
                });
            }, 

            onContactUs() {
                this.form
                    .post('/contact')
                    .then(data => {
                        this.cancelForm();

                        swal("Thanks!", "We Will Be Touch Soon...", "success");
                    });
                    // .catch(errors => console.log(errors));
            },
        },
    }
</script>

<style lang="scss">
    
</style>