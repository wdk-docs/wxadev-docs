逻辑层 App Service
=====================

小程序开发框架的逻辑层使用 JavaScript 引擎为小程序提供开发者 JavaScript 代码的运行环境以及微信小程序的特有功能。

逻辑层将数据进行处理后发送给视图层，同时接受视图层的事件反馈。

开发者写的所有代码最终将会打包成一份 JavaScript 文件，并在小程序启动的时候运行，
直到小程序销毁。这一行为类似 ServiceWorker，所以逻辑层也称之为 App Service。

在 JavaScript 的基础上，我们增加了一些功能，以方便小程序的开发：

增加 App 和 Page 方法，进行程序注册和页面注册。
增加 getApp 和 getCurrentPages 方法，分别用来获取 App 实例和当前页面栈。
提供丰富的 API，如微信用户数据，扫一扫，支付等微信特有能力。
提供模块化能力，每个页面有独立的作用域。

.. attention:: 小程序框架的逻辑层并非运行在浏览器中，因此 JavaScript 在 web 中一些能力都无法使用，如 window，document 等。


.. toctree::
   :maxdepth: 1
   :glob:

   scene
   route
   page
   page-life-cycle
   module
   app
   api
