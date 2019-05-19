:wxapi:`wx.setNavigationBarColor`
============================================

.. function:: wx.setNavigationBarColor({frontColor,backgroundColor,animation[, success][, fail][, complete]})

   .. versionadded:: 1.4.0 低版本需做 :ref:`compatibility` 。

   设置页面导航条颜色

   :param string frontColor: 是 前景颜色值，包括按钮、标题、状态栏的颜色，仅支持 #ffffff 和 #000000
   :param string backgroundColor: 是 背景颜色值，有效值为十六进制颜色
   :param Object animation: *{duration:0, timingFunc:'linear'}* 动画效果

      - **duration** (*number*) - *0* 否 动画变化时间，单位 ms
      - **timingFunc** (*string*) - *'linear'* 否 动画变化方式

        - 'linear' 动画从头到尾的速度是相同的
        - 'easeIn' 动画以低速开始
        - 'easeOut' 动画以低速结束
        - 'easeInOut' 动画以低速开始和结束

   :param function success: 接口调用成功的回调函数
   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例代码:

     .. code::

       wx.setNavigationBarColor({
         frontColor: '#ffffff',
         backgroundColor: '#ff0000',
         animation: {
           duration: 400,
           timingFunc: 'easeIn'
         }
       })
