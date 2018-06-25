@@Author: Aryan.chen
@@Date: 2018-06-25
@@Subject: Vuejs - 单文件组件
[ref:1](https://yugasun.com/post/you-may-not-know-vuejs-5.html)
---
@20180625

###初始 webpack
npm init

填写项目相关信息,项目根目录下会出现 package.json 文件
[1](http://javascript.ruanyifeng.com/nodejs/packagejson.html)

npm 安装我们需要的 vue 库:
```
### 添加 --save 参数，会将 vue 依赖添加到 package.json 文件中
npm install vue --save
```
###在 src 目录下创建一个 app.js 入口文件
```
// 模块化的引入 vue，并将其赋值给 Vue 变量
var Vue = require('vue')

new Vue({
  el: "#app",
  template: "<h1>{{ msg }}</h1>",
  data () {
    return {
      msg: 'Hello Vue.js'
    }
  }
})
```
require 函数浏览器是无法识别的，
就需要通过 webpack 帮我们实现编译打包工作，
转化为主流浏览器可是别的 ES5 代码
------
###安装 webpack 包依赖：
```
# 添加 --save-dev 参数，会将 webpack 开发依赖添加到 package.json 文件中
npm install webpack --save-dev
```
module.exports = {
  // 入口文件
  entry: './src/app.js',
  // 编译输出文件
  output: {
    filename: 'build.js'
  },
  resolve: {
    alias: {
      // 因为我们这里用的是 require 引入方式，所以应该使用vue.common.js/vue.js/vue.min.js
      'vue$': 'vue/dist/vue.common.js'
    }
  }
}

-----