//app.js

import './styles/app.scss';
import Vue from 'vue';
import userinfo from './info';
import { deepClone } from './utils';
import * as utils from './utils';
import hello1 from './hello1.vue';
import hello2 from './hello2.vue';

new Vue({
    el:"#app",
    template:'<div><hello1 v-bind:info="userinfo"/><hello2/></div>',
    data (){
        return {
            userinfo: deepClone(userinfo)
        }
    },
    components:{
        hello1,
        hello2
    },
    created (){
        //这里同时改变了源数据info,
        //∴需要用到深拷贝数据赋值给 data中s的info
        this.userinfo.name = 'aryan.chen'
        utils.log(userinfo);
    }
});