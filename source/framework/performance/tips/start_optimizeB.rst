:wxfrwk:`代码注入优化 <performance/tips/start_optimizeB>`
===========================================================

小程序代码注入的优化可以从优化代码量和优化执行耗时两个角度着手。

1. 使用按需注入
----------------------

.. important:: 推荐所有小程序使用


通常情况下，在小程序启动时，启动页面所在分包和主包（独立分包除外）的所有 JS 代码会全部合并注入，
包括其他未访问的页面以及未用到自定义组件，造成很多没有使用的代码注入到小程序运行环境中，影响注入耗时和内存占用。

自基础库版本 2.11.1 起，可以通过开启「按需注入」特性避免无用代码注入，以降低小程序的启动时间和运行时内存。

.. code:: json

    {
      "lazyCodeLoading": "requiredComponents"
    }

2. 使用用时注入
----------------------

在打开上述「按需注入」特性的前提下，可以通过「用时注入」特性使一部分自定义组件不在启动时注入，
而是在真正被渲染时才进行注入，进一步降低小程序的启动和首屏时间。

3. 避免启动过程同步 API 调用
---------------------------

在小程序启动流程中，会注入开发者代码并顺序同步执行 App.onLaunch, App.onShow, Page.onLoad, Page.onShow。

在小程序初始化代码（Page，App 定义之外的内容）和上述启动相关的几个生命周期中，应尽量避免调用同步 API。绝大多数同步 API 会以 Sync 结尾，但有部分特例，比如 getSystemInfo。

同步 API 虽然使用起来更简单，但是会阻塞当前 JS 线程，影响代码执行。如非必要，应尽可能的使用异步 API 代替同步，并将启动过程中非必要的同步 API 调用延迟到启动完成后进行。

常见的开发者容易在启动时过于频繁调用的 API 有：

3.1 getSystemInfo/getSystemInfoSync
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

由于历史原因，这两个接口都是同步实现。由于 getSystemInfo 接口里承载了过多内容，单次调用可能比较久。

如非必要，建议开发者对调用结果进行缓存，避免重复调用。启动过程中应尽可能最多调用一次。

建议优先使用拆分后的 getSystemSetting/getAppAuthorizeSetting/getDeviceInfo/getWindowInfo/getAppBaseInfo 按需获取信息，或使用使用异步版本 getSystemInfoSync。

3.2 getStorageSync/setStorageSync
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

getStorageSync/setStorageSync 应只用来进行数据的持久化存储，不应用于运行时的数据传递或全局状态管理。启动过程中过多的读写存储，也会显著影响小程序代码注入的耗时。

对于简单的数据共享，可以使用在 App 上增加全局数据对象完成：

.. code:: JavaScript

    // app.js
    App({
      globalData: { // 全局共享的数据
        userName: 'Wechat'
      }
    })

    // pages/index.js
    const app = getApp()
    Page({
      onLoad() {
        const { userName } = app.globalData
      }
    })

4. 避免启动过程进行复杂运算
-------------------------

在小程序初始化代码（Page，App 定义之外的内容）和启动相关的几个生命周期中，应避免执行复杂的运算逻辑。复杂运算也会阻塞当前 JS 线程，影响启动耗时。建议将复杂的运算延迟到启动完成后进行。
