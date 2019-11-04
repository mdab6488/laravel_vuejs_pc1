/*= ===================================
Imaports
====================================== */
import './bootstrap';

// import store from './models/SharedState101';

import router from './router';

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

Vue.component('component-101', {
    template: '<li><slot></slot></li>',
});

// component-with-component
Vue.component('component-with-component', {
    template: `
        <div>
            <task 
                v-for="task in tasks"> 
                {{ task.title }} - <b> {{ task.status }} </b> 
            </task>
        </div>
    `,
    data() {
        return {
            tasks: [
                {
                    title: 'laravel Login System',
                    status: true,
                },
                {
                    title: 'laravel Messaging System',
                    status: false,
                },
                {
                    title: 'laravel CRUD System',
                    status: true,
                },
                {
                    title: 'laravel Dashboard System',
                    status: false,
                },
            ],
        };
    },
});

Vue.component('task', {
    template: '<li><slot></slot></li>',
});

Vue.component(
    'pra-component-ex1-message',
    require('./basic_pc/PracticeComponentEx1Message.vue').default
);

Vue.component(
    'pra-component-ex2-modal',
    require('./basic_pc/PracticeComponentEx2Modal.vue').default
);

Vue.component(
    'tabs',
    require('./basic_pc/PracticeComponentEx3Tabs.vue').default
);

Vue.component('tab', require('./basic_pc/PracticeComponentEx3Tab.vue').default);

Vue.component(
    'coupon',
    require('./basic_pc/ComponentCommunicationEx1CustomEvents.vue').default
);

Vue.component(
    'named-slots-in-a-nutshell',
    require('./basic_pc/NamedSlotsInaNutshell.vue').default
);

Vue.component(
    'single-use-components-and-inline-template',
    require('./basic_pc/SingleUseComponentsAndInlineTempates.vue').default
);

Vue.component(
    'vue-axios',
    require('./basic_pc/VueAjaxRequestWithAxios.vue').default
);

Vue.component(
    'object-oriented-form',
    require('./components/ObjectOrientedForm.vue').default
);

Vue.component(
    'vue-coupon',
    require('./basic_pc/CustomInputComponent.vue').default
);

/*
FOR DASHBORD APP
*/
// Vue.component(
//     'dummy',
//     require('./basic_pc/CustomInputComponent.vue').default
// );

Vue.component(
    'flickity-carousel-slider',
    require('./components/CarouselSlider.vue').default
);

Vue.component(
    'vue-glide-slider',
    require('./components/VueGlideSlider.vue').default
);

Vue.component('series-menu', require('./components/SeriesMenu.vue').default);

Vue.component(
    'support-button',
    require('./components/SupportButton.vue').default
);

const app = new Vue({
    el: '#app',

    router,
    // data: {
    //     name: 'MD AB',
    // },
    // data() {
    //     return {
    //         name: 'MD AB',
    //     };
    // },

    // data: {
    //     coupon: '',
    // },
});

// new Vue({
//     el: '#one',
//     data: {
//         foo: 'bar',
//         shared: store.user.name,
//     },
// });
// new Vue({
//     el: '#two',
//     data: {
//         foo: 'barrrr',
//         shared: store,
//     },
// });
