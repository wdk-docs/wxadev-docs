:wxapi:`wx.stopLocalServiceDiscovery`
============================================

.. function:: wx.stopLocalServiceDiscovery(Object object)

基础库 2.4.0 开始支持，低版本需做兼容处理。

停止搜索 mDNS 服务

参数
Object object
属性	类型	默认值	必填	说明
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.fail 回调函数
参数
Object res
属性	类型	说明
errMsg	string	错误信息
res.errMsg 的合法值

值	说明	最低版本
task not found	在当前没有处在搜索服务中的情况下调用 stopLocalServiceDiscovery
