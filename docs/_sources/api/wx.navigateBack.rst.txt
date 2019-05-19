:wxapi:`wx.navigateBack`
=============================

.. function:: wx.navigateBack({delta[, success][, fail][, complete]})

   关闭当前页面，返回上一页面或多级页面。可通过 :func:`getCurrentPages` 获取当前的页面栈，决定需要返回几层。

   :param number delta: 返回的页面数，如果 delta 大于现有页面数，则返回到首页。
   :param funcion success: 接口调用成功的回调函数
   :param funcion fail: 接口调用失败的回调函数
   :param funcion complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

     .. code::

       // 此处是A页面
       wx.navigateTo({
         url: 'B?id=1'
       })

       // 此处是B页面
       wx.navigateTo({
         url: 'C?id=1'
       })

       // 在C页面内 navigateBack，将返回A页面
       wx.navigateBack({
         delta: 2
       })

.. attention::

   注意：调用 :func:`wx.navigateTo` 跳转时，调用该方法的页面会被加入堆栈，
   而 :func:`wx.redirectTo` 方法则不会。见上方示例代码
