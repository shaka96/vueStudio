const path = require('path');
// 引入相关插件
const ExtractTextPlugin = require('extract-text-webpack-plugin');

function resolve(dir){
    return path.resolve(__dirname,dir);
}
module.exports = {
    // module: {
        // 入口文件
        entry:'./src/app.js',

        output:{
            filename:'build.js',

        },
        resolve:{
            alias:{
                // 因为我们这里用的是 require 引入方式，所以应该使用vue.common.js/vue.js/vue.min.js
                'vue$':'vue/dist/vue.common.js'
            }
        },
        devServer:{
            contentBase:'./'
        },
        module:{
                rules: [
                    {
                        test: /.vue$/,
                        loader: 'vue-loader',
                        options: {
                        loaders:{
                            scss:[
                                {
                                    loader:'vue-style-loader'
                                },
                                {
                                    loader:'css-loader'
                                },
                                {
                                    loader:'sass-loader'
                                },
                                {
                                    loader:'sass-resources-loader',
                                    options:{
                                        resources:[resolve('./src/styles/_var.scss')]
                                    }
                                }
                            ]
                        }
                    }
                },
                {
                    test : /.js$/,
                    loader : 'babel-loader'
                }
            ]
        },
      // 这里用来配置处理不同后缀文件所使用的loader
        plugins:[
            new ExtractTextPlugin('docs.md')
        ]
    // }
}