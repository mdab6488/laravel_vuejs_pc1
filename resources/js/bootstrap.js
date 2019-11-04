/*= ===================================
CONFUSING
====================================== */
/*= ===================================
Require
ex: window.Vue = require('vue');
====================================== */
// window.Vue = require('vue');

// window.axios = require('axios');

// window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

// window.Form = require('./utilities/Form');

// window._ = require('lodash');

/*= ===================================
Imports
ex: import Form from './utilities/Form';
====================================== */

import Vue from 'vue';

import axios from 'axios';

import _ from 'lodash';

import VueRouter from 'vue-router';

import VueGlide from 'vue-glide-js';

import 'vue-glide-js/dist/vue-glide.css';

import Form from './utilities/Form';

/*= ===================================
Imports Alies
ex: window.Form = Form;
====================================== */
window.Vue = Vue;

window.axios = axios;

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

window.Form = Form;

window._ = _;
/*= ===================================
Methods
ex: Vue.use(vmodal);
====================================== */
Vue.use(VueRouter);

Vue.use(VueGlide);
