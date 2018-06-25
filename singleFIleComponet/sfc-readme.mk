@@Author: Aryan.chen
@@Date: 2018-06-25
@@Subject: Vuejs - 单文件组件
[ref:1](https://yugasun.com/post/you-may-not-know-vuejs-6.html)
---

@20180625

.vue 文件 webpack 是没法运行的，需要对应的 vue-loader 来处理才行；
hello.vue 中用到了 ES6 语法，需用到相应的语法转化 loader 将 ES6 转化成主流浏览器兼容的 ES5 语法，
就需要用到官方推荐的 babel 工具了。
###先安装需要的 loader:
```
# hello.vue 文件中使用了 css，所以需要 css-loader 来处理，vue-loader 会自动调用
npm install vue-loader css-loader babel-loader babel-core babel-preset-env --save-devs
```
###peerDependencies
[1](https://docs.npmjs.com/files/package.json#peerdependencies)
In some cases, you want to express the compatibility of your package with a host tool or library,
 while not necessarily doing a require of this host. 
 This is usually referred to as a plugin. 
 Notably, your module may be exposing a specific interface,
  expected and specified by the host documentation.
  ```
{
  "name": "tea-latte",
  "version": "1.3.5",
  "peerDependencies": {
    "tea": "2.x"
  }
}
```
This ensures your package tea-latte can be installed along with 
the second major version of the host package tea only.

 npm install tea-latte could possibly yield the following dependency graph:

├── tea-latte@1.3.5
└── tea@2.2.0
NOTE: npm versions 1 and 2 will automatically install peerDependencies 
if they are not explicitly depended upon higher in the dependency tree. 
In the next major version of npm (npm@3), this will no longer be the case. 
You will receive a warning that the peerDependency is not installed instead. 
---
vue-loader ,其 package.json 文件中是将 vue-template-compiler 和 css-loader 作为 peerDependencies
```
npm install vue-template-compiler css-loader --save-dev

```
===

###使用预处理器
```
npm install sass-loader node-sass --save-dev

```
###加载全局设置文件
编写 sass 文件时，经常会将全局的 scss 变量提取出来，放到一个单独的文件中，
但是这样就有个问题:
每个需要用到的组件，都需要手动 @import './styles/_var.scss' 进来，非常不友好。
插件 sass-resources-loader 就很好地帮我们解决这个问题:
```
npm install sass-resources-loader --save-dev
```
---
###有作用域的 style
单文件组件中提供了一个非常便利的功能:
当 style 标签添加 scoped 属性时，标签内的样式将只作用于当前组件中的元素。

[webpack-github:1]
https://github.com/vuejs-templates/webpack

###实时重新加载(live reloading)
```
npm install webpack-dev-server --save-dev

```

