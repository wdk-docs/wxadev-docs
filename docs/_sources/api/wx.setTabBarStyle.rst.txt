:wxapi:`wx.setTabBarStyle`
============================================

wx.setTabBarStyle(Object object)

   .. versionadded:: 1.9.0 低版本需做 :ref:`compatibility` 。

动态设置 tabBar 的整体样式

参数
Object object
属性	类型	默认值	必填	说明
color	string		是	tab 上的文字默认颜色，HexColor
selectedColor	string		是	tab 上的文字选中时的颜色，HexColor
backgroundColor	string		是	tab 的背景色，HexColor
borderStyle	string		是	tabBar上边框的颜色， 仅支持 black/white
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
示例代码
wx.setTabBarStyle({
  color: '#FF0000',
  selectedColor: '#00FF00',
  backgroundColor: '#0000FF',
  borderStyle: 'white'
})
