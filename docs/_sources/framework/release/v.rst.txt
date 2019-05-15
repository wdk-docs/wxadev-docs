基础库更新日志
===================

查看开发者工具更新日志
----------------------------------


查看云开发更新日志
----------------------------------


v2.7.0 (2019-05-09)
----------------------------------------------

- A 新增 组件 <editor> 富文本编辑器组件 详情
- A 新增 API wx.onKeyboardHeightChange 全局监听键盘高度变化 详情
- A 新增 UDP 通信接口 wx.createUDPSocket
- A 新增小游戏实时语音能力 详情
- U 更新 组件 <live-pusher> 直播组件支持设置镜像 详情
- U 更新 组件 <live-pusher> 支持在不推流时打开摄像头 详情
- U 更新 框架 原生组件支持 zIndex 控制层级 反馈详情
- U 更新 组件 <image> 在非预览模式下支持长按唤起图片操作菜单 详情
- U 更新 组件 <map> 支持卫星图、实时路况 详情
- U 更新 组件 <camera> 增加相机初始化完成事件 详情
- U 更新 组件 <camera> 增加返回逐帧数据接口 反馈详情 详情
- U 更新 组件 <official-account> 公众号关注组件去除扫二维码场景 详情
- U 更新 API wx.getSystemInfo 增加属性 safeArea 详情
- U 更新 框架 tabBar 图片支持临时文件和网络文件 详情
- F 修复 云开发 wx.cloud.deleteFile 参数类型检查受 Array.prototype 修改影响 反馈详情
- F 修复 框架 以不同屏幕方向预加载时，进入页面时 rpx 转换不正确
- F 修复 框架 安卓自定义 tabBar 受下拉刷新影响 反馈详情
- F 修复 框架 小程序分享自定义图片ios不显示 反馈详情
- F 修复 框架 pageOrientation 为 auto时，竖屏视频转到横屏情况下显示不全
- F 修复 框架 iOS 上页面栈较多时，navigateBack 返回页面生命周期函数不执行，事件不生效 反馈详情)
- F 修复 组件 <live-player> 全屏模式下无法更新 src 反馈详情
- F 修复 组件 <web-view> 打开公众号文章但无法跳转阅读原文的链接 反馈详情
- F 修复 组件 <cover-view> iOS 上 animation之后不响应事件
- F 修复 组件 <cover-view> iOS 上 opacity 异常 反馈详情
- F 修复 组件 <camera> 通过 if 控制显示隐藏时，扫码失败 反馈详情
- F 修复 组件 <camera> iOS 上设置前置摄像头无效 反馈详情)
- F 修复 组件 <picker-view> 更新数组后不显示 反馈详情)
- F 修复 组件 <slider> step 为 0.1 时拖动闪烁
- F 修复 组件 <input> iOS 上动态修改 password 属性无效 反馈详情
- F 修复 组件 <input> 安卓刘海屏中上推会被刘海挡住
- F 修复 组件 <textarea> iOS 上 textAlign 右对齐无效问题 反馈详情
- F 修复 组件 <textarea> iOS上设置 style 为 text-align，对 placeholder 无效 反馈详情
- F 修复 组件 <video> 动态设置初始时间 initial-time 无效 反馈详情)
- F 修复 组件 <video> iOS 上视频长度太小时无法播放 反馈详情
- F 修复 组件 <video> 拖动进度条时未触发 bindtimeupdate 事件
- F 修复 组件 <video> 调用 playbackRate 后，拖动视频进度导致倍速无效 反馈详情
- F 修复 组件 <video> 安卓上设置的src有误时没有及时回调 onError
- F 修复 组件 <video> 倍速播放问题 反馈详情)
- F 修复 组件 <video> 安卓上 seek 后进度条不更新
- F 修复 组件 <video> iPhone 6s 上 touch 事件没有冒泡
- F 修复 组件 <video> iOS 上自动循环时不触发 ended 事件 反馈详情
- F 修复 组件 <map> iOS 上 callout 的点击响应区域只有文本区域
- F 修复 组件 <map> 地图安卓scale与IOS缩放级别不统一
- F 修复 API wx.chooseVideo iOS 上选择太大的视频会触发自动清理逻辑 反馈详情
- F 修复 API wx.chooseImage 安卓上选择图片闪退 反馈详情
- F 修复 API CanvasContext.drawImage iOS上 drawImage卡顿
- F 修复 API CanvasContext.drawImage 安卓上 drawImage 绘制不全 反馈详情
- F 修复 API wx.getMenuButtonBoundingClientRect 小游戏启动立刻获取菜单按钮布局信息接口在部分机型上获取结果不正确
- F 修复 API <MapContext.includePoints> iOS 上坐标点在一条线上时缩放不正确
- F 修复 API wx.connectWifi 返回密码错误 反馈详情)

v2.6.5 (2019.04.02)
----------------------------------------------

- A 新增 框架 自定义组件增强样式隔离支持 详情
- U 更新 组件 <swiper> 支持自定义过渡动画 详情
- U 更新 组件 <picker> mode=regin 的 value 属性能够接受区划分码 反馈详情
- F 修复 组件 <swiper> circular 属性衔接动画问题 反馈详情
- F 修复 组件 <movable-view>位置被 <movable-area> 属性影响 反馈详情
- F 修复 组件 <canvas> 安卓上 setLineDash 不能清空设置
- F 修复 组件 <video> 退出全屏字体变大 反馈详情
- F 修复 组件 <video> 工具中切换页面，原页面的 <video> 仍在播放 反馈详情
- F 修复 组件 <scroll-view> 触摸屏幕边缘的部分无法滑动 反馈详情
- F 修复 API wx.getUserInfo 统一用户授权拒绝 errMsg 反馈详情
- F 修复 API wx.loadSubpackage 失败的时候会有两次 fail 和两次 complete 回调
- F 修复 工具 体验评分存在短时间内发起太多的图片请求 反馈详情
- F 修复 插件 收货地址功能页在同一个小程序引用插件时未返回 success
- F 修复 框架 安卓上使用 <Mweb-view> 后自定义 tabBar 看不到
- F 修复 框架 安卓上切换页面并转屏时使用的屏幕宽度可能有误 反馈详情

v2.6.4 (2019.03.22)
----------------------------------------------

- A 新增 插件 新增 getSetting 接口
- F 修复 组件 <checkbox> text-indent导致checkbox样式错乱 反馈详情
- F 修复 组件 <web-view> 存在tabbar的页面隐藏tabbar的时候底部留白 反馈详情
- F 修复 组件 <web-view> 高度适应虚拟键隐藏
- F 修复 组件 <web-view> 安卓下使用 <web-view> 后自定义 tabBar 看不到 反馈详情
- F 修复 组件 <textarea> iOS 键盘输入异常 反馈详情
- F 修复 组件 <textarea> display:none 情况下有 padding 依然可以 focus 反馈详情
- F 修复 组件 <textarea> placeholder 位置会飘移 反馈详情
- F 修复 组件 <map> enable-3D不生效 反馈详情
- F 修复 组件 <map> 工具上 getCenterLocation 页面切换后失效 反馈详情
- F 修复 组件 <map> 安卓 marker 旋转时不应旋转callout 反馈详情
- F 修复 组件 <map> label 被 marker 覆盖 反馈详情
- F 修复 组件 <map> 工具上设置scale为小数时无法显示 反馈详情
- F 修复 组件 <map> 安卓多次切换到有地图组件的页面，markers 随机丢失 反馈详情
- F 修复 组件 <map> 工具 moveToLocation 触发 bindregionchange 事件时与真机不一致 反馈详情
- F 修复 组件 <map> includePoints 回调函数不触发 反馈详情
- F 修复 组件 <input> 支持单独给 placeholder 设置居中 反馈详情
- F 修复 组件 <input><textarea> hidden的时候focus应该无效 反馈详情
- F 修复 组件 <input> 安卓输入草稿模式不触发 input 事件 反馈详情
- F 修复 组件 <live-player> 全屏导致的各类问题 反馈详情
- F 修复 组件 <swiper> 安卓或其它低端设备下滑动会偶现<swiper-item>卡在中间的问题
- F 修复 组件 <swiper> setData改变内容后，内容不显示问题 反馈详情
- F 修复 组件 <swiper> 点击不应触发 animationfinish 事件 反馈详情
- F 修复 组件 <swiper> display-multiple-items >= swiper-item 时显示异常 反馈详情
- F 修复 组件 <text> iOS 设置 selectable 属性后无法关闭选择区域 反馈详情
- F 修复 组件 <camera> 拒绝授权后重新去 setting 授权再返回小程序相机仍无权限 反馈详情
- F 修复 组件 <video> iOS 下移除 video 后页面无法滚动 反馈详情
- F 修复 组件 <video> 安卓 play 事件里 timeStamp 为 NaN 反馈详情
- F 修复 框架 安卓 media query 转屏时可能错乱
- F 修复 框架 disableScroll三端行为不一致 反馈详情
- F 修复 插件 插件中的 live-player 在 reLaunch 时可能会报无权限错误
- F 修复 框架 收货地址功能页返回值不正确 反馈详情
- F 修复 框架 启用自定义 tabbar 之后 setData 回调错乱 反馈详情
- F 修复 API wx.pageScrollTo pageScrollTo 导致 fixed 元素闪动
- F 修复 API wx.pageScrollTo 安卓往上翻时直接闪现到目标位置，没有动画，疑似 duration 参数无效

v2.6.2 (2019.02.27)
----------------------------------------------

- A 新增 小程序音频中断开始和结束事件 wx.onAudioInterruptionBegin、wx.onAudioInterruptionEnd
- F 修复 安卓从公众号菜单二次进入小程序会白屏 反馈详情
- F 修复 框架 意见反馈断网再联网弹框 反馈详情
- F 修复 框架 iOS上tabbar内容未居中，文字过去靠下 反馈详情
- F 修复 框架 自定义tabbar下vConsole被遮挡
- F 修复 框架 安卓onPageNotFound无法正常推出错误页面
- F 修复 插件 无法直接跳转到分包中的插件页面
- F 修复 API wx.previewImage iOS上微信版本7.0.0预览时没有总图片数和当前图片index 反馈详情
- F 修复 API wx.getLocation 在系统中禁止地理位置权限后，getLocation API 返回的错误信息为 fail 1 反馈详情
- F 修复 API wx.startSoterAuthentication 部分华为手机调用报错，返回errCode90007 反馈详情
- F 修复 API wx.openSetting 修改授权信息后无法立刻生效 反馈详情
- F 修复 API wx.chooseVideo iOS上微信版本6.7.3版本调起相机不会执行onHide和onShow 反馈详情
- F 修复 API wx.onCompassChange 返回精度值跳变 反馈详情
- F 修复 组件 <canvas> iOS上fillText的位置不正确 反馈详情
- F 修复 组件 <textarea> 复制app中带样式的文本错乱 反馈详情
- F 修复 组件 <video> iOS上全屏出现黑块
- F 修复 组件 <video> iOS上部分视频无法播放 反馈详情
- F 修复 组件 <video> iOS上seek精度应为ms 反馈详情
- F 修复 组件 <video> iOS上微信版本7.0.3切换tabBar后全屏失效 反馈详情
- F 修复 组件 <video> iOS上播放视频无法seek 反馈详情
- F 修复 组件 <cover-view> iOS上fixed属性异常 反馈详情
- F 修复 组件 <cover-view> 设置scrollTop 或 scrollLeft 导致滚动失效 反馈详情
- F 修复 组件 <cover-image> iOS上设置css rotate后消失 反馈详情
- F 修复 组件 <input> iOS上placeholder部分被截断 反馈详情
- F 修复 组件 <web-view> iOS上src包含中文则无法显示
- F 修复 组件 <web-view> 安卓上页面如果title为空，会显示该页面 url
- F 修复 组件 <web-view> 页面先全屏再退出，会出现白色遮挡物 反馈详情

v2.6.1 (2019.02.21)
----------------------------------------------

- A 新增 框架 自定义组件支持数据监听器 详情

v2.6.0 (2019.02.01)
----------------------------------------------

- U 更新 API wx.chooseMessageFile 新增extension参数根据扩展名过滤
- F 修复 组件 <input>、<textarea> iOS 7.0.3 下搜狗输入法会触发多次 focus 事件
- F 修复 组件 <input> 安卓部分机型获取焦点时，点击空白或非 input 区域无法失焦收起键盘 反馈详情

v2.5.2 (2019.01.29)
----------------------------------------------

- U 更新 框架 功能页顶栏背景色改成浅灰色#F2F2F2
- F 修复 API wx.pageScrollTo在开发者工具上缺失回调
- F 修复 组件 <picker>的current为负值时会导致ios客户端crash
- F 修复 组件 <cover-view>在iOS上出现了错误的截断 反馈详情
- F 修复 组件 <cover-view>嵌套 <navigator> 失效
- F 修复 组件 <canvas>开发者工具上多个canvas同时绘制，绘制完只会触发一个draw的回调
- F 修复 组件 <official-account>增加hidden支持
- F 修复 组件 <web-view>里的<video>全屏后返回高度变小 反馈详情
- F 修复 框架 自定义 tabBar 中的 cover-view 在无 tabBar 的页面中未被移除
- F 修复 框架 挂载在 slot 中的自定义组件无法触发 pageLifeTimes 反馈详情
- F 修复 框架 tabbar 页面销毁时，存在未触发自定义组件 detached 生命周期的 bug 反馈详情
- F 修复 框架 Component 构造器 onTabItemTap 不触发

v2.5.1 (2019.01.22)
----------------------------------------------

- A 新增 框架 小游戏 game.json 配置项 deviceOrientation 支持值 landscapeLeft/landscapeRight 详情
- U 更新 <live-player> 和 <video> 完全退出小程序时才静音 详情1 详情2
- U 更新 组件 <web-view> userAgent 中包含 miniProgram 字样来判断小程序环境 详情
- U 更新 API wx.showModal 的 confirmColor 默认值修改为#576b95 详情
- F 修复 插件 开发者工具上无法调用 wx.getImageInfo 反馈详情
- F 修复 插件 退出功能页之后从列表进入，iOS 有时没有 reLaunch
- F 修复 API wx.getImageInfo 三端返回不一致
- F 修复 API CameraContext.stopRecord iPhone X & iPhone 8P 下 失效
- F 修复 API wx.setTabBarItem 导致文字消失 反馈详情
- F 修复 API wx.appendFile 往不存在的文件追求内容，返回成功
- F 修复 API FileSystemManager.unzip 接口在有文件解压到上层目录的情况下，回调成功
- F 修复 API wx.navigateTo 和安卓小返键导致打开页面逻辑层无法运行 反馈详情
- F 修复 API wx.pageScrollTo 安卓下，会先滚动到顶部，再滚动到指定位置
- F 修复 API wx.getBackgroundAudioManager 安卓下 currentTime 没有返回精确值
- F 修复 API wx.redirectTo 安卓下调用期间按返回按钮，会导致新开的页面事件响应丢失 反馈详情
- F 修复 API wx.createInnerAudioContext 安卓下对于部分音频文件没有响应 反馈详情
- F 修复 API wx.connectSocket iOS 下在会添加额外的 header Authorization
- F 修复 API wx.openLocation iOS 下调用失败 反馈详情
- F 修复 API wx.chooseImage iOS 下选择 gif 图片被转换为 jpg
- F 修复 API wx.startRecord iOS 调用时，右上角胶囊没有出现录音闪烁图标
- F 修复 API 小游戏 wx.shareAppMessage wx.onShareAppMessage 可以触发 cancel 回调
- F 修复 组件 <web-view>在部分机型（华为p20）显示空白页面 反馈详情
- F 修复 组件 <web-view> iOS 使用 input file 会使小程序退出 反馈详情
- F 修复 组件 <web-view> iOS 链接#后面的部分变化后，onShareAppMessage 拿到的 webViewUrl 还是原有的链接
- F 修复 组件 <web-view> 安卓隐藏虚拟导航栏后内未触发resize 反馈详情
- F 修复 组件 <video> iOS 微信更新到 6.7.4 版本后，默认自动播放 反馈详情
- F 修复 组件 <video> iOS 返回多tab页引起非活动页面视频自动播放 反馈详情
- F 修复 组件 <video> 全屏后下拉刷新 「…」 的位置偏移
- F 修复 组件 <textarea> 安卓页面存在多个时，bindfocus 事件无法准确响应目标 <textarea> 反馈详情
- F 修复 组件 <textarea> 安卓不收起键盘在多个<textarea>之间切换焦点，表单提交失败 反馈详情
- F 修复 组件 <cover-view> 使用 rotate 之后内容被裁减 反馈详情
- F 修复 组件 <picker> 安卓下不能阻止pullDownRefresh效果 反馈详情
- F 修复 组件 <camera> 安卓垂直扫描一维码无法识别 反馈详情
- F 修复 框架 安卓带 shareTicket 的转发在单聊情况下打开异常
- F 修复 框架 安卓开发版小程序没有插入后台历史列表 反馈详情
- F 修复 框架 安卓转发截图截取的是当前位置图片，应截取最顶部位置的图片
- F 修复 框架 安卓原生音频播放器中的前往小程序无效 反馈详情
- F 修复 框架 安卓删除小程序后不会清空对应授权信息
- F 修复 框架 iOS 分享 withShareTicket 到单聊，安卓打开，场景值为1044 反馈详情
- F 修复 框架 iOS 带 tabBar 的页面进入官方反馈页面，手机横屏退回小程序引起 tabBar 高度错误 反馈详情

v2.5.0 (2019.01.11)
----------------------------------------------


- A 新增 框架 小程序组件支持无障碍访问 详情
- A 新增 框架 支持自定义tabbar 详情
- A 新增 API wx.chooseMessageFile 选择本地聊天文件 详情
- A 新增 小游戏API 支持卡券接口wx.addCard、wx.openCard

客户端 7.0.0 新增配置
----------------------------------------------

- A 新增 框架 支持页面级自定义导航配置 navigationStyle: custom 详情
- A 新增 框架 支持页面禁止右滑返回手势 disableSwipeBack: true 详情
- A 新增 框架 如需使用位置接口，需在 app.json 中添加配置 permission 字段用于说明位置接口用途 详情

历史版本
----------------------------------------------

