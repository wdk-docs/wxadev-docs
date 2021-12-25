:wxapi:`Animation`
============================================

.. class:: Animation

   动画对象 由 :func:`wx.createAnimation` 创建

方法
-------------

.. function:: Animation.export()

   导出动画队列。export 方法每次调用后会清掉之前的动画操作。

   :rtype: Array.<Object>
   :return: animationData

.. function:: Animation.step(Object object)

   表示一组动画完成。可以在一组动画中调用任意多个动画方法，一组动画中的所有动画会同时开始，一组动画完成后才会进行下一组动画。

   :param number duration: 400 否 动画持续时间，单位 ms
   :param string timingFunction: 'linear' 否 动画的效果

      - 'linear' 动画从头到尾的速度是相同的
      - 'ease' 动画以低速开始，然后加快，在结束前变慢
      - 'ease-in' 动画以低速开始
      - 'ease-in-out' 动画以低速开始和结束
      - 'ease-out' 动画以低速结束
      - 'step-start' 动画第一帧就跳至结束状态直到结束
      - 'step-end' 动画一直保持开始状态，最后一帧跳到结束状态

   :param number delay: 0 否 动画延迟时间，单位 ms
   :param string transformOrigin: '50% 50% 0' 否
   :rtype: Animation
   :returns: animation

.. function:: Animation.matrix()

   同 `transform-function matrix <https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/matrix>`_

   :rtype: Animation
   :returns: animation

.. function:: Animation.matrix3d()

   同 `transform-function matrix3d <https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/matrix3d>`_

   :rtype: Animation
   :returns: animation

.. function:: Animation.rotate(number angle)

   从原点顺时针旋转一个角度

   :param number angle: 旋转的角度。范围 [-180, 180]
   :rtype: Animation
   :returns: animation

.. function:: Animation.rotate3d(number x, number y, number z, number angle)

   从 X 轴顺时针旋转一个角度

   :param number x: 旋转轴的 x 坐标
   :param number y: 旋转轴的 y 坐标
   :param number z: 旋转轴的 z 坐标
   :param number angle: 旋转的角度。范围 [-180, 180]
   :rtype: Animation
   :returns: animation

.. function:: Animation.rotateX(number angle)

   从 X 轴顺时针旋转一个角度

   :param number angle: 旋转的角度。范围 [-180, 180]


.. function:: Animation.rotateY(number angle)

   从 Y 轴顺时针旋转一个角度

   :param number angle: 旋转的角度。范围 [-180, 180]

.. function:: Animation.rotateZ(number angle)

   从 Z 轴顺时针旋转一个角度

   :param number angle: 旋转的角度。范围 [-180, 180]

.. function:: Animation.scale(number sx, number sy)

   缩放

   :param number sx: 当仅有 sx 参数时，表示在 X 轴、Y 轴同时缩放sx倍数
   :param number sy: 在 Y 轴缩放 sy 倍数

.. function:: Animation.scale3d(number sx, number sy, number sz)

   缩放

   :param number sx: x 轴的缩放倍数
   :param number sy: y 轴的缩放倍数
   :param number sz: z 轴的缩放倍数

.. function:: Animation.scaleX(number scale)

   缩放 X 轴

   :param number scale: X 轴的缩放倍数

.. function:: Animation.scaleY(number scale)

   缩放 Y 轴

   :param number scale: Y 轴的缩放倍数

.. function:: Animation.scaleZ(number scale)

   缩放 Z 轴

   :param number scale: Z 轴的缩放倍数

.. function:: Animation.skew(number ax, number ay)

   对 X、Y 轴坐标进行倾斜

   :param number ax: 对 X 轴坐标倾斜的角度，范围 [-180, 180]
   :param number ay: 对 Y 轴坐标倾斜的角度，范围 [-180, 180]

.. function:: Animation.skewX(number angle)

   对 X 轴坐标进行倾斜

   :param number angle: 倾斜的角度，范围 [-180, 180]


.. function:: Animation.skewY(number angle)

   对 Y 轴坐标进行倾斜

   :param number angle: 倾斜的角度，范围 [-180, 180]

.. function:: Animation.translate(number tx, number ty)

   平移变换

   :param number tx: 当仅有该参数时表示在 X 轴偏移 tx，单位 px
   :param number ty: 在 Y 轴平移的距离，单位为 px


.. function:: Animation.translate3d(number tx, number ty, number tz)

   对 xyz 坐标进行平移变换

   :param number tx: 在 X 轴平移的距离，单位为 px
   :param number ty: 在 Y 轴平移的距离，单位为 px
   :param number tz: 在 Z 轴平移的距离，单位为 px

.. function:: Animation.translateX(number translation)

   对 X 轴平移

   :param number translation: 在 X 轴平移的距离，单位为 px

.. function:: Animation.translateY(number translation)

   对 Y 轴平移

   :param number translation: 在 Y 轴平移的距离，单位为 px

.. function:: Animation.translateZ(number translation)

   对 Z 轴平移

   :param number translation: 在 Z 轴平移的距离，单位为 px

.. function:: Animation.opacity(number value)

   设置透明度

   :param number value: 透明度，范围 0-1

.. function:: Animation.backgroundColor(string value)

   设置背景色

   :param string value: 颜色值

.. function:: Animation.width(number|string value)

   设置宽度

   :param number|string value: 长度值，如果传入 number 则默认使用 px，可传入其他自定义单位的长度值

.. function:: Animation.height(number|string value)

   设置高度

   :param number|string value: 长度值，如果传入 number 则默认使用 px，可传入其他自定义单位的长度值

.. function:: Animation.left(number|string value)

   设置 left 值

   :param number|string value: 长度值，如果传入 number 则默认使用 px，可传入其他自定义单位的长度值

.. function:: Animation.right(number|string value)

   设置 right 值

   :param number|string value: 长度值，如果传入 number 则默认使用 px，可传入其他自定义单位的长度值

.. function:: Animation.top(number|string value)

   设置 top 值

   :param number|string value: 长度值，如果传入 number 则默认使用 px，可传入其他自定义单位的长度值

.. function:: Animation.bottom(number|string value)

   设置 bottom 值

   :param number|string value: 长度值，如果传入 number 则默认使用 px，可传入其他自定义单位的长度值


示例代码
-----------------------

:download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/Swab8kmW7v2V>`

.. code:: html

   <view
     animation="{{animationData}}"
     style="background:red;height:100rpx;width:100rpx"
   ></view>

.. code:: js

   Page({
     data: {
       animationData: {}
     },
     onShow() {
       const animation = wx.createAnimation({
         duration: 1000,
         timingFunction: 'ease',
       })

       this.animation = animation

       animation.scale(2, 2).rotate(45).step()

       this.setData({
         animationData: animation.export()
       })

       setTimeout(function () {
         animation.translate(30).step()
         this.setData({
           animationData: animation.export()
         })
       }.bind(this), 1000)
     },
     rotateAndScale() {
       // 旋转同时放大
       this.animation.rotate(45).scale(2, 2).step()
       this.setData({
         animationData: this.animation.export()
       })
     },
     rotateThenScale() {
       // 先旋转后放大
       this.animation.rotate(45).step()
       this.animation.scale(2, 2).step()
       this.setData({
         animationData: this.animation.export()
       })
     },
     rotateAndScaleThenTranslate() {
       // 先旋转同时放大，然后平移
       this.animation.rotate(45).scale(2, 2).step()
       this.animation.translate(100, 100).step({duration: 1000})
       this.setData({
         animationData: this.animation.export()
       })
     }
   })
