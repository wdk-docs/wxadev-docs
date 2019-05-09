:wxapi:`wx.onPageNotFound`
================================

.. function:: wx.onPageNotFound(function callback)

   .. versionadded:: 2.1.2 低版本需做 :ref:`compatibility` 。

   监听小程序要打开的页面不存在事件。该事件与 App.onPageNotFound 的回调时机一致。

   :param function callback: 小程序要打开的页面不存在事件的回调函数

参数
Object res
属性	类型	说明
path	string	不存在页面的路径
query	Object	打开不存在页面的 query 参数
isEntryPage	boolean	是否本次启动的首个页面（例如从分享等入口进来，首个页面是开发者配置的分享页面）
注意
开发者可以在回调中进行页面重定向，但必须在回调中同步处理，异步处理（例如 setTimeout 异步执行）无效。
若开发者没有调用 wx.onPageNotFound 绑定监听，也没有声明 App.onPageNotFound，当跳转页面不存在时，将推入微信客户端原生的页面不存在提示页面。
如果回调中又重定向到另一个不存在的页面，将推入微信客户端原生的页面不存在提示页面，并且不再第二次回调。