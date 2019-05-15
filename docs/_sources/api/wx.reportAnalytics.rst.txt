:wxapi:`wx.reportAnalytics`
===============

.. function:: wx.reportAnalytics(string eventName, Object data)

自定义分析数据上报接口。使用前，需要在小程序管理后台自定义分析中新建事件，配置好事件名与字段。

参数
string eventName
事件名

Object data
上报的自定义数据。

属性	类型	默认值	必填	说明
key	string		是	配置中的字段名
value	Any		是	上报的数据
示例代码
wx.reportAnalytics('purchase', {
  price: 120,
  color: 'red'
})
