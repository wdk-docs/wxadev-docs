.. _radio:

radio
========

.. versionadded:: 1.0.0 开始支持，低版本需做兼容处理。

单选项目。

属性	类型	默认值	必填	说明	最低版本
value	string		否	<radio> 标识。当该<radio> 选中时，<radio-group> 的 change 事件会携带<radio>的value	1.0.0
checked	boolean	false	否	当前是否选中	1.0.0
disabled	boolean	false	否	是否禁用	1.0.0
color	string	#09BB07	否	radio的颜色，同css的color	1.0.0
示例代码
在开发者工具中预览效果

.. code:: html

  <radio-group class="radio-group" bindchange="radioChange">
    <label class="radio" wx:for="{{items}}">
      <radio value="{{item.name}}" checked="{{item.checked}}" />
      {{item.value}}
    </label>
  </radio-group>
  Page({
    data: {
      items: [
        {name: 'USA', value: '美国'},
        {name: 'CHN', value: '中国', checked: 'true'},
        {name: 'BRA', value: '巴西'},
        {name: 'JPN', value: '日本'},
        {name: 'ENG', value: '英国'},
        {name: 'TUR', value: '法国'},
      ]
    },
    radioChange(e) {
      console.log('radio发生change事件，携带value值为：', e.detail.value)
    }
  })
