view
===========================

.. versionadded:: 1.0.0 开始支持，低版本需做兼容处理。

视图容器

属性	类型	默认值	必填	说明	最低版本
hover-class	string	none	否	指定按下去的样式类。当 hover-class="none" 时，没有点击态效果	1.0.0
hover-stop-propagation	boolean	false	否	指定是否阻止本节点的祖先节点出现点击态	1.5.0
hover-start-time	number	50	否	按住后多久出现点击态，单位毫秒	1.0.0
hover-stay-time	number	400	否	手指松开后点击态保留时间，单位毫秒	1.0.0
Bug & Tip
.. tip:: 如果需要使用滚动视图，请使用 scroll-view
示例代码
在开发者工具中预览效果

.. code:: html

  <view class="section">
    <view class="section__title">flex-direction: row</view>
    <view class="flex-wrp" style="flex-direction:row;">
      <view class="flex-item bc_green">1</view>
      <view class="flex-item bc_red">2</view>
      <view class="flex-item bc_blue">3</view>
    </view>
  </view>
  <view class="section">
    <view class="section__title">flex-direction: column</view>
    <view class="flex-wrp" style="height: 300px;flex-direction:column;">
      <view class="flex-item bc_green">1</view>
      <view class="flex-item bc_red">2</view>
      <view class="flex-item bc_blue">3</view>
    </view>
  </view>
