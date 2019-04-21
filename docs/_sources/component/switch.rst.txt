.. _switch:

switch
===========================

.. versionadded:: 1.0.0 开始支持，低版本需做兼容处理。

开关选择器。

属性	类型	默认值	必填	说明	最低版本
checked	boolean	false	否	是否选中	1.0.0
disabled	boolean	false	否	是否禁用	1.0.0
type	string	switch	否	样式，有效值：switch, checkbox	1.0.0
colo	string	#04BE02	否	switch 的颜色，同 css 的 color	1.0.0
bindchange	eventhandle		否	checked 改变时触发 change 事件，event.detail={ value}	1.0.0
Bug & Tip
.. tip:: switch类型切换时在iOS自带振动反馈，可在系统设置 -> 声音与触感 -> 系统触感反馈中关闭
示例代码
在开发者工具中预览效果

.. code:: html

  <view class="body-view">
    <switch checked bindchange="switch1Change" />
    <switch bindchange="switch2Change" />
  </view>
  Page({
    switch1Change(e) {
      console.log('switch1 发生 change 事件，携带值为', e.detail.value)
    },
    switch2Change(e) {
      console.log('switch2 发生 change 事件，携带值为', e.detail.value)
    }
  })
