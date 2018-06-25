
###[Handle:]安装所需的 loader:
# 因为 `sass-loader` 需要依赖 `node-sass`, 所以这里一并安装
npm install style-loader css-loader sass-loader node-sass --save-dev
###[Error:]
npm ERR! Unexpected end of JSON input while parsing near '...slint-parser.git#bfb1'
###[Solution:]
[1](https://blog.csdn.net/qq_38372358/article/details/79551446)
[first:]
```
npm install --registry=https://registry.npm.taobao.org --loglevel=silly
```
[then:]
```
npm cache clean --force
```