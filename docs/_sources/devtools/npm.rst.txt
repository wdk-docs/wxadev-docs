.. _npm:

npm 支持
================

从小程序基础库版本 2.2.1 或以上、及开发者工具 1.02.1808300 或以上开始，小程序支持使用 npm 安装第三方包。

此文档要求开发者们对 npm 有一定的了解，因此不会再去介绍 npm 的基本功能。如若之前未接触过 npm，请翻阅官方 npm 文档进行学习。

使用 npm 包
-------------------

在小程序中执行命令安装 npm 包：
npm install
此处并没有强制要求 node_modules 必须在小程序根目录下（即 project.config.js 中的 miniprogramRoot 字段），也可以存在于小程序根目录下的各个子目录中。但是不允许 node_modules 在小程序根目录外。

PS：从开发者工具 v1.02.1811150 版本开始，调整为根据 package.json 的 dependencies 字段构建，所以声明在 devDependencies 里的包也可以在开发过程中被安装使用而不会参与到构建中。如果是这之前的版本，则建议使用--production选项，可以减少安装一些业务无关的 npm 包，从而减少整个小程序包的大小。

点击开发者工具中的菜单栏：工具 --> 构建 npm
construction

勾选“使用 npm 模块”选项：
use npm

构建完成后即可使用 npm 包。

js 中引入 npm 包：

const myPackage = require('packageName')
const packageOther = require('packageName/other')
使用 npm 包中的自定义组件：

{
  "usingComponents": {
    "myPackage": "packageName",
    "package-other": "packageName/other"
  }
}
PS：此处使用 npm 包时如果只引入包名，则默认寻找包名下的 index.js 文件或者 index 组件。

发布 npm 包
-------------------

发布小程序 npm 包的约束
这里要发布的 npm 包是特指专为小程序定制的 npm 包（下称小程序 npm 包）。因为小程序自定义组件的特殊性，原有的 npm 包机制无法满足我们的需求，所以这里需要对小程序 npm 包做一些约束：

小程序 npm 包要求根目录下必须有构建文件生成目录（默认为 miniprogram_dist 目录），此目录可以通过在 package.json 文件中新增一个 miniprogram 字段来指定，比如：
{
  "name": "miniprogram-custom-component",
  "version": "1.0.0",
  "description": "",
  "miniprogram": "dist",
  "devDependencies": {},
  "dependencies": {}
}
小程序 npm 包里只有构建文件生成目录会被算入小程序包的占用空间，上传小程序代码时也只会上传该目录的代码。如果小程序 npm 包有一些测试、构建相关的代码请放到构建文件生成目录外。另外也可以使用.npmignore文件来避免将一些非业务代码文件发布到 npm 中。
测试、构建相关的依赖请放入 devDependencies 字段中避免被一起打包到小程序包中。

发布其他 npm 包的约束
--------------------------------

如果是已经发布过的一些 npm 包，因为一些原因无法改造成小程序 npm 包的结构的话，也可以通过微调后被使用，但是请确保遵循以下几点：

只支持纯 js 包，不支持自定义组件。
必须有入口文件，即需要保证 package.json 中的 main 字段是指向一个正确的入口，如果 package.json 中没有 main 字段，则以 npm 包根目录下的 index.js 作为入口文件。
测试、构建相关的依赖请放入 devDependencies 字段中避免被一起打包到小程序包中，这一点和小程序 npm 包的要求相同。
不支持依赖 c++ addon，不支持依赖 nodejs 的内置库：
const addon = require('./addon.node') // 不支持！
const http = require('http') // 不支持！
PS：对于一些纯 js 实现的 nodejs 内置库（如 path 模块），可以通过额外安装其他开发者实现的 npm 包来支持。

使用 require 依赖的时候下列几种方式也是不允许的：
// 不允许将 require 赋值给其他变量后再使用，以下代码不会去解析出具体依赖
let r
r = require
r('testa')

const r2 = require
r2('testa')

// 不允许 require 一个变量，以下代码依赖运行时，无法解析出具体依赖
const m = 'testa'
require(m)
小程序环境比较特殊，一些全局变量（如 window 对象）和构造器（如 Function 构造器）是无法使用的。
发布流程
发布 npm 包的流程简述如下：

如果还没有 npm 帐号，可以到 npm 官网注册一个 npm 帐号。
在本地登录 npm 帐号，在本地执行：
npm adduser
或者

npm login
在已完成编写的 npm 包根目录下执行：
npm publish
到此，npm 包就成功发布到 npm 平台了。

PS：一些开发者在开发过程中可能修改过 npm 的源，所以当进行登录或发布时需要注意要将源切回 npm 的源。

原理介绍
--------------

为了帮助大家更好的理解发布 npm 包中提到的各种要求，这里简单介绍一下原理：

首先 node_modules 目录不会参与编译、上传和打包中，所以小程序想要使用 npm 包必须走一遍“构建 npm”的过程，在最外层的 node_modules 的同级目录下会生成一个 miniprogram_npm 目录，里面会存放构建打包后的 npm 包，也就是小程序真正使用的 npm 包。
构建打包分为两种：小程序 npm 包会直接拷贝构建文件生成目录下的所有文件到 miniprogram_npm 中；其他 npm 包则会从入口 js 文件开始走一遍依赖分析和打包过程（类似 webpack）。
寻找 npm 包的过程和 npm 的实现类似，从依赖 npm 包的文件所在目录开始逐层往外找，直到找到可用的 npm 包或是小程序根目录为止。

下面简单介绍下构建打包前后的目录情况，构建之前的结构::

    |--node_modules
    |    |--testComp // 小程序 npm 包
    |    |    |--package.json
    |    |    |--src
    |    |    |--miniprogram_dist
    |    |         |-index.js
    |    |         |-index.json
    |    |         |-index.wxss
    |    |         |-index.wxml
    |    |--testa // 其他 npm 包
    |         |--package.json
    |         |--lib
    |         |    |--entry.js
    |         |--node_modules
    |              |--testb
    |                   |--package.json
    |                   |--main.js
    |--pages
    |--app.js
    |--app.wxss
    |--app.json
    |--project.config.js

构建之后的结构::

    |--node_modules
    |--miniprogram_npm
    |    |--testComp // 小程序 npm 包
    |    |    |-index.js
    |    |    |-index.json
    |    |    |-index.wxss
    |    |    |-index.wxml
    |    |--testa // 其他 npm 包
    |         |--index.js // 打包后的文件
    |         |--miniprogram_npm
    |              |--testb
    |                   |--index.js // 打包后的文件
    |                   |--index.js.map
    |--pages
    |--app.js
    |--app.wxss
    |--app.json
    |--project.config.js

PS：打包生成的代码在同级目录下会生成 source map 文件，方便进行逆向调试。

js 模块示例
---------------

以下为官方提供的 js 模块，可以参考并使用：

sm-crypto

自定义组件相关示例
----------------------

请查阅开发第三方自定义组件文档。
