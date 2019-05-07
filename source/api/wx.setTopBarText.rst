:wxapi:`wx.setTopBarText`
============================================

.. function:: wx.setTopBarText(Object object)

  基础库 1.4.3 开始支持，低版本需做兼容处理。

从基础库 1.9.9 开始，本接口停止维护

动态设置置顶栏文字内容。只有当前小程序被置顶时能生效，如果当前小程序没有被置顶，也能调用成功，但是不会立即生效，只有在用户将这个小程序置顶后才换上设置的文字内容.

参数
Object object
属性	类型	默认值	必填	说明
text	Object		是	置顶栏文字
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
示例代码
wx.setTopBarText({
  text: 'hello, world!'
})
注意
调用成功后，需间隔 5s 才能再次调用此接口，如果在 5s 内再次调用此接口，会回调 fail，errMsg："setTopBarText: fail invoke too frequently"