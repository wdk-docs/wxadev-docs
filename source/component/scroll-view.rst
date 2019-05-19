.. _scroll-view:

:wx_comp:`scroll-view`
===========================

.. versionadded:: 1.0.0  低版本需做 :ref:`compatibility` 。

可滚动视图区域。使用竖向滚动时，需要给<:doc:`scroll-view`>一个固定高度，通过 WXSS 设置 height。组件属性的长度单位默认为px，2.4.0起支持传入单位(rpx/px)。

+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
|         属性          |     类型      | 默认值 | 必填 |                                             说明                                              | 最低版本 |
+=======================+===============+========+======+===============================================================================================+==========+
| scroll-x              | boolean       | false  | 否   | 允许横向滚动                                                                                  | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| scroll-y              | boolean       | false  | 否   | 允许纵向滚动                                                                                  | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| upper-threshold       | number/string | 50     | 否   | 距顶部/左边多远时，触发 scrolltoupper 事件                                                    | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| lower-threshold       | number/string | 50     | 否   | 距底部/右边多远时，触发 scrolltolower 事件                                                    | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| scroll-top            | number/string |        | 否   | 设置竖向滚动条位置                                                                            | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| scroll-left           | number/string |        | 否   | 设置横向滚动条位置                                                                            | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| scroll-into-view      | string        |        | 否   | 值应为某子元素id（id不能以数字开头）。设置哪个方向可滚动，则在哪个方向滚动到该元素            | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| scroll-with-animation | boolean       | false  | 否   | 在设置滚动条位置时使用动画过渡                                                                | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| enable-back-to-top    | boolean       | false  | 否   | iOS点击顶部状态栏、安卓双击标题栏时，滚动条返回顶部，只支持竖向                               | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| bindscrolltoupper     | eventhandle   |        | 否   | 滚动到顶部/左边时触发                                                                         | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| bindscrolltolower     | eventhandle   |        | 否   | 滚动到底部/右边时触发                                                                         | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+
| bindscroll            | eventhandle   |        | 否   | 滚动时触发，event.detail = {scrollLeft, scrollTop, scrollHeight, scrollWidth, deltaX, deltaY} | 1.0.0    |
+-----------------------+---------------+--------+------+-----------------------------------------------------------------------------------------------+----------+


.. tip:: 请勿在 scroll-view 中使用 textarea、map、canvas、video 组件

.. tip:: scroll-into-view 的优先级高于 scroll-top

.. tip:: 在滚动 scroll-view 时会阻止页面回弹，所以在 scroll-view 中滚动，是无法触发 onPullDownRefresh

.. tip:: 若要使用下拉刷新，请使用页面的滚动，而不是 scroll-view ，这样也能通过点击顶部状态栏回到页面顶部


示例代码

.. code:: html

  <view class="section">
    <view class="section__title">vertical scroll</view>
    <scroll-view
      scroll-y
      style="height: 200px;"
      bindscrolltoupper="upper"
      bindscrolltolower="lower"
      bindscroll="scroll"
      scroll-into-view="{{toView}}"
      scroll-top="{{scrollTop}}"
    >
      <view id="green" class="scroll-view-item bc_green"></view>
      <view id="red" class="scroll-view-item bc_red"></view>
      <view id="yellow" class="scroll-view-item bc_yellow"></view>
      <view id="blue" class="scroll-view-item bc_blue"></view>
    </scroll-view>

    <view class="btn-area">
      <button size="mini" bindtap="tap">click me to scroll into view</button>
      <button size="mini" bindtap="tapMove">click me to scroll</button>
    </view>
  </view>
  <view class="section section_gap">
    <view class="section__title">horizontal scroll</view>
    <scroll-view class="scroll-view_H" scroll-x style="width: 100%">
      <view id="green" class="scroll-view-item_H bc_green"></view>
      <view id="red" class="scroll-view-item_H bc_red"></view>
      <view id="yellow" class="scroll-view-item_H bc_yellow"></view>
      <view id="blue" class="scroll-view-item_H bc_blue"></view>
    </scroll-view>
  </view>

.. code:: js

  const order = ['red', 'yellow', 'blue', 'green', 'red']
  Page({
    data: {
      toView: 'red',
      scrollTop: 100
    },
    upper(e) {
      console.log(e)
    },
    lower(e) {
      console.log(e)
    },
    scroll(e) {
      console.log(e)
    },
    tap(e) {
      for (let i = 0; i < order.length; ++i) {
        if (order[i] === this.data.toView) {
          this.setData({
            toView: order[i + 1]
          })
          break
        }
      }
    },
    tapMove(e) {
      this.setData({
        scrollTop: this.data.scrollTop + 10
      })
    }
  })
