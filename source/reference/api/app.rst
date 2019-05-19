:wxref:`注册小程序(App) <api/App>`
===================================


.. class:: App({[onLaunch][, onShow][, onHide][, onError][, onPageNotFound][...]})

   接受一个 Object 参数，其指定小程序的生命周期回调等。

   :class:`App()` 必须在 ``app.js`` 中调用，必须调用且只能调用一次。不然会出现无法预期的后果。

   关于小程序前后台的定义和小程序的运行机制，请参考 :ref:`operating-mechanism` 章节。

   :param function onLaunch:
     监听小程序初始化。小程序初始化完成时触发，全局只触发一次。参数也可以使用 :func:`wx.getLaunchOptionsSync` 获取。
   :param function onShow:
     监听小程序启动或切前台。小程序启动，或从后台进入前台显示时触发。也可以使用 :func:`wx.onAppShow` 绑定监听。
   :param function onHide:
     监听小程序切后台。小程序从前台进入后台时触发。也可以使用 :func:`wx.onAppHide` 绑定监听。
   :param function onError:
     错误监听函数。小程序发生脚本错误或 API 调用报错时触发。也可以使用 :func:`wx.onError` 绑定监听。
   :param function onPageNotFound: 页面不存在监听函数。
     小程序要打开的页面不存在时触发。也可以使用 :func:`wx.onPageNotFound` 绑定监听。注意事项请参考 :func:`wx.onPageNotFound` 。

     .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。

     :示例:

       .. code:: js

         App({
           onPageNotFound(res) {
             wx.redirectTo({
               url: 'pages/...'
             }) // 如果是 tabbar 页面，请使用 wx.switchTab
           }
         })

   :param any 其他: 开发者可以添加任意的函数或数据变量到 Object 参数中，用 this 可以访问

   :示例:

   .. code:: js

     App({
       onLaunch(options) {
         // Do something initial when launch.
       },
       onShow(options) {
         // Do something when show.
       },
       onHide() {
         // Do something when hide.
       },
       onError(msg) {
         console.log(msg)
       },
       globalData: 'I am global data'
     })


.. function:: App.onLaunch(Object object)

   小程序初始化完成时触发，全局只触发一次。参数也可以使用 :func:`wx.getLaunchOptionsSync` 获取。

   参数：与 :func:`wx.getLaunchOptionsSync` 一致

.. function:: App.onShow(Object object)

   小程序启动，或从后台进入前台显示时触发。也可以使用 :func:`wx.onAppShow` 绑定监听。

   参数：与 :func:`wx.onAppShow` 一致

.. function:: App.onHide()

   小程序从前台进入后台时触发。也可以使用 :func:`wx.onAppHide` 绑定监听。

.. function:: App.onError(String error)

   小程序发生脚本错误或 API 调用报错时触发。也可以使用 :func:`wx.onError` 绑定监听。

   参数：与 :func:`wx.onError` 一致

.. function:: App.onPageNotFound(Object object)

   .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。

   小程序要打开的页面不存在时触发。也可以使用 :func:`wx.onPageNotFound` 绑定监听。注意事项请参考 :func:`wx.onPageNotFound` 。

   参数：与 :func:`wx.onPageNotFound` 一致

   :示例:

      .. code-block::

        App({
          onPageNotFound(res) {
            wx.redirectTo({
              url: 'pages/...'
            }) // 如果是 tabbar 页面，请使用 wx.switchTab
          }
        })

