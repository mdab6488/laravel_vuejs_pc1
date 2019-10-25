/*= ===================================
Imaports
====================================== */
import './bootstrap';

/*= ===================================
Components
====================================== */
Vue.component(
    'basic-data-binding',
    require('./basic_pc/BasicDataBinding.vue').default
);

const app = new Vue({
    el: '#app',
});
