# vueStudio
my frist vue project
@2018.06.08 15:08
create Demo1
@2018.06.12 before 1:01
create spa-router-project

# ========================
##新手vue构建单页面应用实例
步骤：
1.使用vue-cli创建项目
2.使用vue-router实现单页路由
3.用vuex管理我们的数据流
4.使用vue-resource请求我们的node服务端
5.使用.vue文件进行组件化的开发
# ========================
##搭建项目
```
1.  需先安装淘宝镜像：npm install -g cnpm --registry=https://registry.npm.taobao.org
2.  Mac安装 vue-cli： sudo npm install -g vue-cli
    Windows 安装 vue-cli：npm install -g vue-cli
3.  构建初始化项目：vue init webpack project（创建webpack项目并下载依赖）
4.  输入命令进入项目： cd project  
5.  安装依赖： npm install
    npm i
6.  开始运行： npm run dev (或输入http://localhost:8080)，在热加载中运行我们的应用
```
    它会去找到package.json的scripts对象，执行node bulid/dev-server.js
在这文件里，配置了Webpack，会让它去编译项目文件，并且运行服务器。
这些都准备好后，我们需要为我们的路由、XHR请求、数据管理下载三个库，可以从vue的官网中找到他们。
    另外使用bootstrap作为我的UI库：
npm i vue-resource vue-router vuex bootstrap --save

# ========================
 href: https://www.cnblogs.com/CinderellaStory/p/6875516.html
@2018.06.12 after 1:10
PS C:\MyRepository@Github\vueStudio>  vue init webpack spa-project

  A newer version of vue-cli is available.
  latest:    2.9.6
  installed: 2.9.3

? Project name spa-project
? Project description A Vue.js project
? Author aryansky <aryan86_2014@163.com>
? Vue build standalone
? Install vue-router? Yes
? Use ESLint to lint your code? Yes
? Pick an ESLint preset Standard
? Set up unit tests Yes
? Pick a test runner karma
? Setup e2e tests with Nightwatch? Yes
? Should we run `npm install` for you after the project has been created? (recommended) npm

   vue-cli · Generated "spa-project".

# Installing project dependencies ...
# ========================