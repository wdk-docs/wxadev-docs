��    	      d               �      �      �      �      �      �   ,   �       =   3  w  q     �               )     +  ,   .    [  =   o	   :wxapi:`wx.getHCEState` console.log(res.errCode) success(res) { } }) 判断当前设备是否支持 HCE 能力。 参数 Object object 属性      类型      默认值     必填      说明 success function                否       接口调用成功的回调函数 fail    function                否       接口调用失败的回调函数 complete        function                否       接口调用结束的回调函数（调用成功、失败都会执行） 错误 错误码     错误信息    说明 0       ok      正常 13000           当前设备不支持NFC 13001           当前设备支持NFC，但系统NFC开关未开启 13002           当前设备支持NFC，但不支持HCE 13003           AID列表参数格式错误 13004           未设置微信为默认NFC支付应用 13005           返回的指令不合法 13006           注册AID失败 示例代码 wx.getHCEState({ 基础库 1.7.0 开始支持，低版本需做兼容处理。 Project-Id-Version: wxadev 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-09 22:55+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :wxapi:`wx.getHCEState` console.log(res.errCode) success(res) { } }) 判断当前设备是否支持 HCE 能力。 参数 Object object 属性      类型      默认值     必填      说明 success function                否       接口调用成功的回调函数 fail    function                否       接口调用失败的回调函数 complete        function                否       接口调用结束的回调函数（调用成功、失败都会执行） 错误 错误码     错误信息    说明 0       ok      正常 13000           当前设备不支持NFC 13001           当前设备支持NFC，但系统NFC开关未开启 13002           当前设备支持NFC，但不支持HCE 13003           AID列表参数格式错误 13004           未设置微信为默认NFC支付应用 13005           返回的指令不合法 13006           注册AID失败 示例代码 wx.getHCEState({ 基础库 1.7.0 开始支持，低版本需做兼容处理。 