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

Vue.component('list', require('./basic_pc/List.vue').default);

Vue.component(
    'vue-event-listener',
    require('./basic_pc/VueEventListeners.vue').default
);

Vue.component(
    'attribute-and-class',
    require('./basic_pc/AttributeAndClass.vue').default
);

Vue.component(
    'theneed-for-computedproperties',
    require('./basic_pc/TheNeedForComputedProperties.vue').default
);

const app = new Vue({
    el: '#app',
    // data: {
    //     name: 'MD AB',
    // },
    // data() {
    //     return {
    //         name: 'MD AB',
    //     };
    // },
});
