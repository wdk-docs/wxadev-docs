.. _live-player:

:wxcomp:`live-player(直播播放器) <live-player>`
=================================================

.. versionadded::  1.7.0 低版本需做兼容处理。

实时音视频播放。相关api：wx.createLivePlayerContext

暂只针对国内主体如下类目的小程序开放，需要先通过类目审核，再在小程序管理后台，「开发」-「接口设置」中自助开通该组件权限。

一级类目/主体类型	二级类目	小程序内容场景
社交	直播	涉及娱乐性质，如明星直播、生活趣事直播、宠物直播等。选择该类目后首次提交代码审核，需经当地互联网主管机关审核确认，预计审核时长 7 天左右
教育	在线视频课程	网课、在线培训、讲座等教育类直播
医疗	互联网医院，公立医院	问诊、大型健康讲座等直播
金融	银行、信托、基金、证券/期货、证券、期货投资咨询、保险、征信业务、新三板信息服务平台、股票信息服务平台（港股/美股）、消费金融	金融产品视频客服理赔、金融产品推广直播等
汽车	汽车预售服务	汽车预售、推广直播
政府主体帐号	/	政府相关工作推广直播、领导讲话直播等
工具	视频客服	不涉及以上几类内容的一对一视频客服服务，如企业售后一对一视频服务等
属性	类型	默认值	必填	说明	最低版本
src	string		否	音视频地址。目前仅支持 flv, rtmp 格式	1.7.0
mode	string	live	否	模式	1.7.0
autoplay	boolean	false	否	自动播放	1.7.0
muted	boolean	false	否	是否静音	1.7.0
orientation	string	vertical	否	画面方向	1.7.0
object-fit	string	contain	否	填充模式，可选值有 contain，fillCrop	1.7.0
background-mute	boolean	false	否	进入后台时是否静音（已废弃，默认退台静音）	1.7.0
min-cache	number	1	否	最小缓冲区，单位s（RTC 模式推荐 0.2s）	1.7.0
max-cache	number	3	否	最大缓冲区，单位s（RTC 模式推荐 0.8s）	1.7.0
sound-mode	string	speaker	否	声音输出方式	1.9.90
auto-pause-if-navigate	boolean	true	否	当跳转到其它小程序页面时，是否自动暂停本页面的实时音视频播放	2.5.0
auto-pause-if-open-native	boolean	true	否	当跳转到其它微信原生页面时，是否自动暂停本页面的实时音视频播放	2.5.0
bindstatechange	eventhandle		否	播放状态变化事件，detail = {code}	1.7.0
bindfullscreenchange	eventhandle		否	全屏变化事件，detail = {direction, fullScreen}	1.7.0
bindnetstatus	eventhandle		否	网络状态通知，detail = {info}	1.9.0
mode 的合法值

值	说明	最低版本
live	直播
RTC	实时通话，该模式时延更低
orientation 的合法值

值	说明	最低版本
vertical	竖直
horizontal	水平
sound-mode 的合法值

值	说明	最低版本
speaker	扬声器
ear	听筒
状态码
代码	说明
2001	已经连接服务器
2002	已经连接服务器,开始拉流
2003	网络接收到首个视频数据包(IDR)
2004	视频播放开始
2005	视频播放进度
2006	视频播放结束
2007	视频播放Loading
2008	解码器启动
2009	视频分辨率改变
-2301	网络断连，且经多次重连抢救无效，更多重试请自行重启播放
-2302	获取加速拉流地址失败
2101	当前视频帧解码失败
2102	当前音频帧解码失败
2103	网络断连, 已启动自动重连
2104	网络来包不稳：可能是下行带宽不足，或由于主播端出流不均匀
2105	当前视频播放出现卡顿
2106	硬解启动失败，采用软解
2107	当前视频帧不连续，可能丢帧
2108	当前流硬解第一个I帧失败，SDK自动切软解
3001	RTMP -DNS解析失败
3002	RTMP服务器连接失败
3003	RTMP服务器握手失败
3005	RTMP 读/写失败
网络状态数据
键名	说明
videoBitrate	当前视频编/码器输出的比特率，单位 kbps
audioBitrate	当前音频编/码器输出的比特率，单位 kbps
videoFPS	当前视频帧率
videoGOP	当前视频 GOP,也就是每两个关键帧(I帧)间隔时长，单位 s
netSpeed	当前的发送/接收速度
netJitter	网络抖动情况，抖动越大，网络越不稳定
videoWidth	视频画面的宽度
videoHeight	视频画面的高度
Bug & Tip

.. tip:: <live-player> 默认宽度300px、高度225px，可通过wxss设置宽高。

.. tip:: 开发者工具上暂不支持。
示例代码
在开发者工具中预览效果

.. code:: html

  <live-player
    src="https://domain/pull_stream"
    mode="RTC"
    autoplay
    bindstatechange="statechange"
    binderror="error"
    style="width: 300px; height: 225px;"
  />
  Page({
    statechange(e) {
      console.log('live-player code:', e.detail.code)
    },
    error(e) {
      console.error('live-player error:', e.detail.errMsg)
    }
  })