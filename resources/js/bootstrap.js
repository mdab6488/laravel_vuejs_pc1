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

// npm install --save portal-vue
// https://github.com/LinusBorg/portal-vue
import PortalVue from 'portal-vue';

// npm install vue-js-modal --save
// https://www.npmjs.com/package/vue-js-modal
import vmodal from 'vue-js-modal';

// javascript sweetalert
// npm install sweetalert --save
// https://sweetalert.js.org/guides/
import swal from 'sweetalert';

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

Vue.use(PortalVue);

Vue.use(vmodal);
