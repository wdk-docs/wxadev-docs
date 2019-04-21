.. _live-pusher:

:wxcomp:`live-pusher(直播录像机) <live-pusher>`
================================================

.. versionadded::  1.7.0 低版本需做兼容处理。

实时音视频录制。需要用户授权 scope.camera、scope.record。

暂只针对国内主体如下类目的小程序开放，需要先通过类目审核，再在小程序管理后台，「开发」-「接口设置」中自助开通该组件权限。

一级类目/主体类型	二级类目	小程序内容场景
社交	直播	涉及娱乐性质，如明星直播、生活趣事直播、宠物直播等。选择该类目后首次提交代码审核，需经当地互联网主管机关审核确认，预计审核时长7天左右
教育	在线视频课程	网课、在线培训、讲座等教育类直播
医疗	互联网医院，公立医院	问诊、大型健康讲座等直播
金融	银行、信托、基金、证券/期货、证券、期货投资咨询、保险、征信业务、新三板信息服务平台、股票信息服务平台（港股/美股）、消费金融	金融产品视频客服理赔、金融产品推广直播等
汽车	汽车预售服务	汽车预售、推广直播
政府主体帐号	/	政府相关工作推广直播、领导讲话直播等
工具	视频客服	不涉及以上几类内容的一对一视频客服服务，如企业售后一对一视频服务等
相关api：wx.createLivePusherContext

属性	类型	默认值	必填	说明	最低版本
url	string		否	推流地址。目前仅支持 flv, rtmp 格式	1.7.0
mode	string	RTC	否	SD（标清）, HD（高清）, FHD（超清）, RTC（实时通话）	1.7.0
autopush	boolean	false	否	自动推流	1.7.0
muted	boolean	false	否	是否静音	1.7.0
enable-camera	boolean	true	否	开启摄像头	1.7.0
auto-focus	boolean	true	否	自动聚集	1.7.0
orientation	string	vertical	否	画面方向	1.7.0
beauty	number	0	否	美颜，取值范围 0-9 ，0 表示关闭	1.7.0
whiteness	number	0	否	美白，取值范围 0-9 ，0 表示关闭	1.7.0
aspect	string	9:16	否	宽高比，可选值有 3:4, 9:16	1.7.0
min-bitrate	number	200	否	最小码率	1.7.0
max-bitrate	number	1000	否	最大码率	1.7.0
waiting-image	string		否	进入后台时推流的等待画面	1.7.0
waiting-image-hash	string		否	等待画面资源的MD5值	1.7.0
zoom	boolean	false	否	调整焦距	2.1.0
device-position	string	front	否	前置或后置，值为front, back	2.3.0
background-mute	boolean	false	否	进入后台时是否静音	1.7.0
bindstatechange	eventhandle		否	状态变化事件，detail = {code}	1.7.0
bindnetstatus	eventhandle		否	网络状态通知，detail = {info}	1.9.0
binderror	eventhandle		否	渲染错误事件，detail = {errMsg, errCode}	1.7.4
bindbgmstart	eventhandle		否	背景音开始播放时触发	2.4.0
bindbgmprogress	eventhandle		否	背景音进度变化时触发，detail = {progress, duration}	2.4.0
bindbgmcomplete	eventhandle		否	背景音播放完成时触发	2.4.0
orientation 的合法值

值	说明	最低版本
vertical	竖直
horizontal	水平
Bug & Tip

.. tip:: 开发者工具上暂不支持。

.. tip:: <live-pusher> 默认宽度为100%、无默认高度，请通过wxss设置宽高。

.. tip:: waiting-image 属性在 2.3.0 起完整支持网络路径、临时文件和包内路径。

.. tip:: 请注意原生组件使用限制。
错误码（errCode）
代码	说明
10001	用户禁止使用摄像头
10002	用户禁止使用录音
10003	背景音资源（BGM）加载失败
10004	等待画面资源（waiting-image）加载失败
状态码（code）
代码	说明
1001	已经连接推流服务器
1002	已经与服务器握手完毕,开始推流
1003	打开摄像头成功
1004	录屏启动成功
1005	推流动态调整分辨率
1006	推流动态调整码率
1007	首帧画面采集完成
1008	编码器启动
-1301	打开摄像头失败
-1302	打开麦克风失败
-1303	视频编码失败
-1304	音频编码失败
-1305	不支持的视频分辨率
-1306	不支持的音频采样率
-1307	网络断连，且经多次重连抢救无效，更多重试请自行重启推流
-1308	开始录屏失败，可能是被用户拒绝
-1309	录屏失败，不支持的Android系统版本，需要5.0以上的系统
-1310	录屏被其他应用打断了
-1311	Android Mic打开成功，但是录不到音频数据
-1312	录屏动态切横竖屏失败
1101	网络状况不佳：上行带宽太小，上传数据受阻
1102	网络断连, 已启动自动重连
1103	硬编码启动失败,采用软编码
1104	视频编码失败
1105	新美颜软编码启动失败，采用老的软编码
1106	新美颜软编码启动失败，采用老的软编码
3001	RTMP -DNS解析失败
3002	RTMP服务器连接失败
3003	RTMP服务器握手失败
3004	RTMP服务器主动断开，请检查推流地址的合法性或防盗链有效期
3005	RTMP 读/写失败
网络状态数据（info）
键名	说明
videoBitrate	当前视频编/码器输出的比特率，单位 kbps
audioBitrate	当前音频编/码器输出的比特率，单位 kbps
videoFPS	当前视频帧率
videoGOP	当前视频 GOP,也就是每两个关键帧(I帧)间隔时长，单位 s
netSpeed	当前的发送/接收速度
netJitter	网络抖动情况，抖动越大，网络越不稳定
videoWidth	视频画面的宽度
videoHeight	视频画面的高度
示例代码
在开发者工具中预览效果

.. code:: html

  <live-pusher
    url="https://domain/push_stream"
    mode="RTC"
    autopush
    bindstatechange="statechange"
    style="width: 300px; height: 225px;"
  />
  Page({
    statechange(e) {
      console.log('live-pusher code:', e.detail.code)
    }
  })