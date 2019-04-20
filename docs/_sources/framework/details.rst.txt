运行环境
=================

微信小程序运行在三端：iOS（iPhone/iPad）、Android 和 用于调试的开发者工具。

三端的脚本执行环境以及用于渲染非原生组件的环境是各不相同的：

在 iOS 上，小程序逻辑层的 javascript 代码运行在 JavaScriptCore 中，视图层是由 WKWebView 来渲染的，环境有 iOS8、iOS9、iOS10；

在 Android 上，

旧版本，小程序逻辑层的 javascript 代码运行中 X5 JSCore 中，视图层是由 X5 基于 Mobile Chrome 57 内核来渲染的；

新版本，小程序逻辑层的 javascript 代码运行在 V8 中，视图层是由自研 XWeb 引擎基于 Mobile Chrome 67 内核来渲染的；

在 开发工具上，小程序逻辑层的 javascript 代码是运行在 NW.js 中，视图层是由 Chromium 60 Webview 来渲染的。

平台差异
-----------

尽管三端的环境是十分相似的，但是还是有些许区别：

JavaScript 语法和 API 支持不一致：语法上开发者可以通过开启 ES6 转 ES5 的功能来规避（详情）；此外，小程序基础库内置了必要的Polyfill，来弥补API的差异（详情)。

WXSS 渲染表现不一致：尽管可以通过开启样式补全来规避大部分的问题 详情，还是建议开发者需要在 iOS 和 Android 上分别检查小程序的真实表现。

开发者工具仅供调试使用，最终的表现以客户端为准。