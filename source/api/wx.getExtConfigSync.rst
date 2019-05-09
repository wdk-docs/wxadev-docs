:wxapi:`wx.getExtConfigSync`
============================================

.. function:: wx.getExtConfigSync()

基础库 1.1.0 开始支持，低版本需做兼容处理。

wx.getExtConfig 的同步版本。

返回值
Object
属性	类型	说明
extConfig	Object	第三方平台自定义的数据
Tips
本接口暂时无法通过 wx.canIUse 判断是否兼容，开发者需要自行判断 wx.getExtConfigSync 是否存在来兼容
const extConfig = wx.getExtConfigSync ? wx.getExtConfigSync() : {}
console.log(extConfig)
