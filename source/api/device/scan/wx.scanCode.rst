:wxapi:`wx.scanCode`
================================

.. function:: wx.scanCode(Object object)

调起客户端扫码界面进行扫码

参数
Object object
属性	类型	默认值	必填	说明	最低版本
onlyFromCamera	boolean	false	否	是否只能从相机扫码，不允许从相册选择图片	1.2.0
scanType	Array.<string>	['barCode', 'qrCode']	否	扫码类型	1.7.0
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.scanType 的合法值

值	说明	最低版本
barCode	一维码
qrCode	二维码
datamatrix	Data Matrix 码
pdf417	PDF417 条码
object.success 回调函数
参数
Object res
属性	类型	说明
result	string	所扫码的内容
scanType	string	所扫码的类型
charSet	string	所扫码的字符集
path	string	当所扫的码为当前小程序二维码时，会返回此字段，内容为二维码携带的 path
rawData	string	原始数据，base64编码
res.scanType 的合法值

值	说明	最低版本
QR_CODE	二维码
AZTEC	一维码
CODABAR	一维码
CODE_39	一维码
CODE_93	一维码
CODE_128	一维码
DATA_MATRIX	二维码
EAN_8	一维码
EAN_13	一维码
ITF	一维码
MAXICODE	一维码
PDF_417	二维码
RSS_14	一维码
RSS_EXPANDED	一维码
UPC_A	一维码
UPC_E	一维码
UPC_EAN_EXTENSION	一维码
WX_CODE	二维码
CODE_25	一维码
示例代码
// 允许从相机和相册扫码
wx.scanCode({
  success(res) {
    console.log(res)
  }
})

// 只允许从相机扫码
wx.scanCode({
  onlyFromCamera: true,
  success(res) {
    console.log(res)
  }
})
