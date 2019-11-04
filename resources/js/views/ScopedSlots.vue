<template>
    <div>
        <h1>Scoped Slots</h1>
        <ScopedSlots 
            :items="items">
            <!--ES 2016-->
            <!--
                const person = {'firstName': 'MD', 'lastName': 'AB'};
                undefined

                const { firstName } = person;
                undefined

                firstName
                "MD"
            -->
            <template 
                slot="listData" 
                slot-scope="{ item }">
                <h4 
                    v-text="item"></h4>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam officiis sed quae saepe minus deleniti tempore unde harum eum molestias?
                </p>
            </template>
            <!-- <template 
                slot="test" 
                slot-scope="{ item, think }">
                <h1>
                    {{ myName }} - 
                    {{ item.title }} - 
                    {{ item.status }} - 
                    {{ think }}
                </h1>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam officiis sed quae saepe minus deleniti tempore unde harum eum molestias?
                </p>
            </template> -->
            <!-- <template 
                slot-scope="{ think, bar }">
                <h4 
                    v-text="think"></h4>
                <h4 
                    v-text="bar"></h4>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam officiis sed quae saepe minus deleniti tempore unde harum eum molestias?
                </p>
            </template> -->
            <!-- <template 
                slot-scope="props">
                <h4 
                    v-text="props.item"></h4>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam officiis sed quae saepe minus deleniti tempore unde harum eum molestias?
                </p>
            </template> -->
        </ScopedSlots>
    </div>
</template>

<script>
    import ScopedSlots from '../components/Scoped_Slots';

    export default {
        components: {
            ScopedSlots,
        },

        data() {
            return {
                items: [
                    'php', 
                    'vuejs', 
                    'laravel', 
                    'javascripts',
                    'python', 
                    'ruby'
                ],
                // items: [
                //     {
                //         title: 'php',
                //         status: true,
                //     },
                //     {
                //         title: 'paython',
                //         status: false,
                //     },
                //     {
                //         title: 'laravel',
                //         status: false,
                //     },
                //     {
                //         title: 'botstrap',
                //         status: true,
                //     },
                //     {
                //         title: 'vuejs',
                //         status: false,
                //     },
                // ],
                // myName: 'MD AB',
            }
        },
    }
</script>

<style lang="scss">

</style>
