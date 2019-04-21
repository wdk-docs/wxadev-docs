.. _canvas:

canvas
===========================

.. versionadded::  1.0.0 开始支持，低版本需做兼容处理。

画布。相关api：wx.createCanvasContext。

属性	类型	默认值	必填	说明	最低版本
canvas-id	string		是	canvas 组件的唯一标识符	1.0.0
disable-scroll	boolean	false	否	当在 canvas 中移动时且有绑定手势事件时，禁止屏幕滚动以及下拉刷新	1.0.0
bindtouchstart	eventhandle		否	手指触摸动作开始	1.0.0
bindtouchmove	eventhandle		否	手指触摸后移动	1.0.0
bindtouchend	eventhandle		否	手指触摸动作结束	1.0.0
bindtouchcancel	eventhandle		否	手指触摸动作被打断，如来电提醒，弹窗	1.0.0
bindlongtap	eventhandle		否	手指长按 500ms 之后触发，触发了长按事件后进行移动不会触发屏幕的滚动	1.0.0
binderror	eventhandle		否	当发生错误时触发 error 事件，detail = {errMsg}	1.0.0
Bug & Tip

.. tip:: canvas 标签默认宽度300px、高度150px

.. tip:: 同一页面中的 canvas-id 不可重复，如果使用一个已经出现过的 canvas-id，该 canvas 标签对应的画布将被隐藏并不再正常工作

.. tip:: 请注意原生组件使用限制。
bug: 避免设置过大的宽高，在安卓下会有crash的问题
示例代码
在开发者工具中预览效果 下载

.. code:: html

  <!-- canvas.wxml -->
  <canvas style="width: 300px; height: 200px;" canvas-id="firstCanvas"></canvas>
  <!-- 当使用绝对定位时，文档流后边的 canvas 的显示层级高于前边的 canvas -->
  <canvas style="width: 400px; height: 500px;" canvas-id="secondCanvas"></canvas>
  <!-- 因为 canvas-id 与前一个 canvas 重复，该 canvas 不会显示，并会发送一个错误事件到 AppService -->
  <canvas
    style="width: 400px; height: 500px;"
    canvas-id="secondCanvas"
    binderror="canvasIdErrorCallback"
  ></canvas>
  Page({
    canvasIdErrorCallback(e) {
      console.error(e.detail.errMsg)
    },
    onReady(e) {
      // 使用 wx.createContext 获取绘图上下文 context
      const context = wx.createCanvasContext('firstCanvas')

      context.setStrokeStyle('#00ff00')
      context.setLineWidth(5)
      context.rect(0, 0, 200, 200)
      context.stroke()
      context.setStrokeStyle('#ff0000')
      context.setLineWidth(2)
      context.moveTo(160, 100)
      context.arc(100, 100, 60, 0, 2 * Math.PI, true)
      context.moveTo(140, 100)
      context.arc(100, 100, 40, 0, Math.PI, false)
      context.moveTo(85, 80)
      context.arc(80, 80, 5, 0, 2 * Math.PI, true)
      context.moveTo(125, 80)
      context.arc(120, 80, 5, 0, 2 * Math.PI, true)
      context.stroke()
      context.draw()
    }
  })