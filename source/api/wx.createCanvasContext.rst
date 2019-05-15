:wxapi:`wx.createCanvasContext`
============================================

.. function:: wx.createCanvasContext(canvasId, this)

   创建 :ref:`canvas` 的绘图上下文 :class:`CanvasContext` 对象

   :param string canvasId: 要获取上下文的 :ref:`<canvas> <canvas>` 组件 canvas-id 属性
   :param Object this: 在自定义组件下，当前组件实例的this，表示在这个自定义组件下查找拥有 canvas-id 的 :ref:`<canvas> <canvas>` ，如果省略则不在任何自定义组件内查找
   :return: :class:`CanvasContext`
