:wxapi:`wx.onWindowResize`
==================================

.. function:: wx.onWindowResize(function callback)


   .. versionadded:: 2.3.0 低版本需做 :ref:`compatibility` 。

监听窗口尺寸变化事件

参数
function callback
窗口尺寸变化事件的回调函数

参数
Object res
属性	类型	说明
size	Object
size 的结构

属性	类型	说明
windowWidth	number	变化后的窗口宽度，单位 px
windowHeight	number	变化后的窗口高度，单位 px
