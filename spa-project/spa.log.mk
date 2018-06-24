 # LOG
 PS C:\MyRepository@Github\vueStudio>  vue init webpack spa-project

   vue-cli · Failed to download repo vuejs-templates/webpack: getaddrinfo ENOTFOUND github.com github.com:443

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


> phantomjs-prebuilt@2.1.16 install C:\MyRepository@Github\vueStudio\spa-project\node_modules\phantomjs-prebuilt
> node install.js

PhantomJS not found on PATH
Downloading https://github.com/Medium/phantomjs/releases/download/v2.1.1/phantomjs-2.1.1-windows.zip
Saving to C:\Users\aryansky\AppData\Local\Temp\phantomjs\phantomjs-2.1.1-windows.zip
Receiving...
  [=---------------------------------------] 3%
Error making request.
Error: read ECONNRESET
    at _errnoException (util.js:1022:11)
    at TLSWrap.onread (net.js:628:25)

Please report this full log at https://github.com/Medium/phantomjs
npm WARN rollback Rolling back node-pre-gyp@0.10.0 failed (this is probably harmless): EPERM: operation not permitt
ed, scandir 'C:\MyRepository@Github\vueStudio\spa-project\node_modules\fsevents\node_modules'
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.4 (node_modules\fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.4: wanted {"os":"darwin","arch"
:"any"} (current: {"os":"win32","arch":"x64"})

npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! phantomjs-prebuilt@2.1.16 install: `node install.js`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the phantomjs-prebuilt@2.1.16 install script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     C:\Users\aryansky\AppData\Roaming\npm-cache\_logs\2018-06-12T17_18_17_650Z-debug.log


Running eslint --fix to comply with chosen preset rules...
# ========================


> spa-project@1.0.0 lint C:\MyRepository@Github\vueStudio\spa-project
> eslint --ext .js,.vue src test/unit test/e2e/specs "--fix"


# Project initialization finished!
# ========================

To get started:

  cd spa-project
  npm run dev

Documentation can be found at https://vuejs-templates.github.io/webpack
