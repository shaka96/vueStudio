module.exports = {
    // ...
    module: {
        entry:'./src/app.js',

        output:{
            filename:'build.js',

        },
        resolve:{
            alias:{
                'vue$':'vue/dist/vue.common.js'
            }
        },
        devServer:{
            contentBase:'./'
        },
      // 这里用来配置处理不同后缀文件所使用的loader
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
        ]
    }
}