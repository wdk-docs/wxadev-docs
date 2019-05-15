:wxapi:`wx.stopWifi`
============================================

.. function:: wx.stopWifi(Object object)

基础库 1.6.0 开始支持，低版本需做兼容处理。

关闭 Wi-Fi 模块。

参数
Object object
属性	类型	默认值	必填	说明
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
错误
错误码	错误信息	说明
0	ok	正常
12000	not init	未先调用 startWifi 接口
12001	system not support	当前系统不支持相关能力
12002	password error Wi-Fi	密码错误
12003	connection timeout	连接超时
12004	duplicate request	重复连接 Wi-Fi
12005	wifi not turned on	Android 特有，未打开 Wi-Fi 开关
12006	gps not turned on	Android 特有，未打开 GPS 定位开关
12007	user denied	用户拒绝授权链接 Wi-Fi
12008	invalid SSID	无效 SSID
12009	system config err	系统运营商配置拒绝连接 Wi-Fi
12010	system internal error	系统其他错误，需要在 errmsg 打印具体的错误原因
12011	weapp in background	应用在后台无法配置 Wi-Fi
12013	wifi config may be expired	系统保存的 Wi-Fi 配置过期，建议忘记 Wi-Fi 后重试
示例代码
wx.stopWifi({
  success(res) {
    console.log(res.errMsg)
  }
})
