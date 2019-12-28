:wxapi:`wx.createAnimation`
============================================

Animation

.. function:: wx.createAnimation({[duration][, timingFunction][, delay][, transformOrigin]})

   创建一个动画实例 animation。调用实例的方法来描述动画。最后通过动画实例的 export 方法导出动画数据传递给组件的 animation 属性。

   :param number duration: **400** 动画持续时间，单位 ms
   :param string timingFunction: **'linear'** 动画的效果

      - *'linear'* 动画从头到尾的速度是相同的
      - *'ease'* 动画以低速开始，然后加快，在结束前变慢
      - *'ease-in'* 动画以低速开始
      - *'ease-in-out'* 动画以低速开始和结束
      - *'ease-out'* 动画以低速结束
      - *'step-start'* 动画第一帧就跳至结束状态直到结束
      - *'step-end'* 动画一直保持开始状态，最后一帧跳到结束状态

   :param number delay: **0** 动画延迟时间，单位 ms
   :param string transformOrigin: **'50% 50% 0'**

   :returns: :class:`Animation`

