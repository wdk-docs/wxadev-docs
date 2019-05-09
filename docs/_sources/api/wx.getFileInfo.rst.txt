:wxapi:`wx.getFileInfo`
============================================

wx.getFileInfo(Object object)
基础库 1.4.0 开始支持，低版本需做兼容处理。

获取文件信息

参数
Object object
属性	类型	默认值	必填	说明
filePath	string		是	本地文件路径
digestAlgorithm	string	'md5'	否	计算文件摘要的算法
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.digestAlgorithm 的合法值

值	说明	最低版本
md5	md5 算法
sha1	sha1 算法
object.success 回调函数
参数
Object res
属性	类型	说明
size	number	文件大小，以字节为单位
digest	string	按照传入的 digestAlgorithm 计算得出的的文件摘要
示例代码
wx.getFileInfo({
  success(res) {
    console.log(res.size)
    console.log(res.digest)
  }
})
