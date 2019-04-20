web-view
===========================

.. versionadded:: 1.6.4 开始支持，低版本需做兼容处理。

承载网页的容器。会自动铺满整个小程序页面，个人类型与海外类型的小程序暂不支持使用。

客户端 6.7.2 版本开始，navigationStyle: custom 对 <web-view> 组件无效

属性	类型	默认值	必填	说明	最低版本
src	string		否	webview 指向网页的链接。可打开关联的公众号的文章，其它网页需登录小程序管理后台配置业务域名。	1.6.4
bindmessage	eventhandler		否	网页向小程序 postMessage 时，会在特定时机（小程序后退、组件销毁、分享）触发并收到消息。e.detail = { data }，data是多次 postMessage 的参数组成的数组	1.6.4
bindload	eventhandler		否	网页加载成功时候触发此事件。e.detail = { src }	1.6.4
binderror	eventhandler		否	网页加载失败的时候触发此事件。e.detail = { src }	1.6.4
相关接口 1
<web-view>网页中可使用JSSDK 1.3.2提供的接口返回小程序页面。 支持的接口有：

接口名	说明	最低版本
wx.miniProgram.navigateTo	参数与小程序接口一致	1.6.4
wx.miniProgram.navigateBack	参数与小程序接口一致	1.6.4
wx.miniProgram.switchTab	参数与小程序接口一致	1.6.5
wx.miniProgram.reLaunch	参数与小程序接口一致	1.6.5
wx.miniProgram.redirectTo	参数与小程序接口一致	1.6.5
wx.miniProgram.postMessage	向小程序发送消息，会在特定时机（小程序后退、组件销毁、分享）触发组件的message事件	1.7.1
wx.miniProgram.getEnv	获取当前环境	1.7.1
示例代码
在开发者工具中预览效果

.. code:: html

  <!-- html -->
  <script
    type="text/javascript"
    src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"
  ></script>

  // javascript wx.miniProgram.navigateTo({url: '/path/to/page'})
  wx.miniProgram.postMessage({ data: 'foo' }) wx.miniProgram.postMessage({ data:
  {foo: 'bar'} }) wx.miniProgram.getEnv(function(res) {
  console.log(res.miniprogram) // true })

相关接口 2
<web-view>网页中仅支持以下JSSDK接口：

接口模块	接口说明	具体接口
判断客户端是否支持js		checkJSApi
图像接口	拍照或上传	chooseImage
预览图片	previewImage
上传图片	uploadImage
下载图片	downloadImage
获取本地图片	getLocalImgData
音频接口	开始录音	startRecord
停止录音	stopRecord
监听录音自动停止	onVoiceRecordEnd
播放语音	playVoice
暂停播放	pauseVoice
停止播放	stopVoice
监听语音播放完毕	onVoicePlayEnd
上传接口	uploadVoice
下载接口	downloadVoice
智能接口	识别音频	translateVoice
设备信息	获取网络状态	getNetworkType
地理位置	使用内置地图打开地点	openLocation
获取地理位置	getLocation
摇一摇周边	开启ibeacon	startSearchBeacons
关闭ibeacon	stopSearchBeacons
监听ibeacon	onSearchBeacons
微信扫一扫	调起微信扫一扫	scanQRCode
微信卡券	拉取使用卡券列表	chooseCard
批量添加卡券接口	addCard
查看微信卡包的卡券	openCard
长按识别	小程序圆形码	无
相关接口 3
用户分享时可获取当前<web-view>的URL，即在onShareAppMessage回调中返回webViewUrl参数。

示例代码
示例代码：

.. code:: html

  Page({
    onShareAppMessage(options) {
      console.log(options.webViewUrl)
    }
  })
  相关接口 4
  在网页内可通过window.__wxjs_environment变量判断是否在小程序环境，建议在WeixinJSBridgeReady回调中使用，也可以使用JSSDK 1.3.2提供的getEnv接口。

  示例代码
  // web-view下的页面内
  function ready() {
    console.log(window.__wxjs_environment === 'miniprogram') // true
  }
  if (!window.WeixinJSBridge || !WeixinJSBridge.invoke) {
    document.addEventListener('WeixinJSBridgeReady', ready, false)
  } else {
    ready()
  }

  // 或者
  wx.miniProgram.getEnv(function (res) {
    console.log(res.miniprogram) // true
  })

相关接口 5
从微信7.0.0开始，可以通过判断userAgent中包含miniProgram字样来判断小程序web-view环境。

Bug & Tip

.. tip:: 网页内 iframe 的域名也需要配置到域名白名单。

.. tip:: 开发者工具上，可以在 <web-view> 组件上通过右键 - 调试，打开 <web-view> 组件的调试。

.. tip:: 每个页面只能有一个 <web-view>，<web-view> 会自动铺满整个页面，并覆盖其他组件。

.. tip:: <web-view> 网页与小程序之间不支持除 JSSDK 提供的接口之外的通信。

.. tip:: 在 iOS 中，若存在JSSDK接口调用无响应的情况，可在 <web-view> 的 src 后面加个#wechat_redirect解决。

.. tip:: 避免在链接中带有中文字符，在 iOS 中会有打开白屏的问题，建议加一下 encodeURIComponent