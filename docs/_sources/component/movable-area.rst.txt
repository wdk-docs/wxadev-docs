.. _movable-area:

movable-area
===========================

.. versionadded:: 1.2.0 开始支持，低版本需做兼容处理。

<movable-view>的可移动区域。

属性	类型	默认值	必填	说明	最低版本
scale-area	Boolean	false	否	当里面的movable-view设置为支持双指缩放时，设置此值可将缩放手势生效区域修改为整个movable-area	1.9.90
Bug & Tip
.. tip:: movable-area 必须设置width和height属性，不设置默认为10px**
.. tip:: 当movable-view小于movable-area时，movable-view的移动范围是在movable-area内；
.. tip:: 当movable-view大于movable-area时，movable-view的移动范围必须包含movable-area（x轴方向和y轴方向分开考虑）
示例代码
在开发者工具中预览效果


.. code:: html


  <view class="section">
    <view class="section__title">movable-view区域小于movable-area</view>
    <movable-area style="height: 200px; width: 200px; background: red;">
      <movable-view
        style="height: 50px; width: 50px; background: blue;"
        x="{{x}}"
        y="{{y}}"
        direction="all"
      ></movable-view>
    </movable-area>
    <view class="btn-area">
      <button size="mini" bindtap="tap">click me to move to (30px, 30px)</button>
    </view>
    <view class="section__title">movable-view区域大于movable-area</view>
    <movable-area style="height: 100px; width: 100px; background: red;">
      <movable-view
        style="height: 200px; width: 200px; background: blue;"
        direction="all"
      ></movable-view>
    </movable-area>
    <view class="section__title">可放缩</view>
    <movable-area
      style="height: 200px; width: 200px; background: red;"
      scale-area
    >
      <movable-view
        style="height: 50px; width: 50px; background: blue;"
        direction="all"
        bindchange="onChange"
        bindscale="onScale"
        scale
        scale-min="0.5"
        scale-max="4"
        scale-value="2"
      ></movable-view>
    </movable-area>
  </view>
  Page({
    data: {
      x: 0,
      y: 0
    },
    tap(e) {
      this.setData({
        x: 30,
        y: 30
      })
    },
    onChange(e) {
      console.log(e.detail)
    },
    onScale(e) {
      console.log(e.detail)
    }
  })