:wxapi:`LogManager`
============================================

LogManager
日志管理器实例，可以通过 wx.getLogManager 获取。

方法
LogManager.debug()
写 debug 日志

LogManager.info()
写 info 日志

LogManager.log()
写 log 日志

LogManager.warn()
写 warn 日志

使用说明
最多保存5M的日志内容，超过5M后，旧的日志内容会被删除。
用户可以通过使用 <Button> 组件的 open-type="feedback" 来上传打印的日志。开发者可以通过小程序管理后台左侧菜单“反馈管理”页面查看。

基础库默认会把 App、Page 的生命周期函数和 wx 命名空间下的函数调用写入日志。