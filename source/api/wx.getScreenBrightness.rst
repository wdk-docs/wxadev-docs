:wxapi:`wx.getScreenBrightness`
============================================

.. function:: wx.getScreenBrightness(Object object)

基础库 1.2.0 开始支持，低版本需做兼容处理。

获取屏幕亮度

参数
Object object
属性	类型	默认值	必填	说明
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object object
属性	类型	说明
value	number	屏幕亮度值，范围 0 ~ 1，0 最暗，1 最亮
说明
若安卓系统设置中开启了自动调节亮度功能，则屏幕亮度会根据光线自动调整，该接口仅能获取自动调节亮度之前的值，而非实时的亮度值。
