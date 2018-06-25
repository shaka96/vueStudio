// ES6 引入模块语法
import Vue from 'vue';
import hello from './hello.vue';
import hello1 from './hello1.vue';
import hello2 from './hello2.vue';

new Vue({
  el: "#app",
//   template: '<hello/>',
  template: '<div><hello1/><hell2/></div>',
  components: {
    hello1,
    hello2
  }
});