网络
=======

在小程序/小游戏中使用网络相关的 API 时，需要注意下列问题，请开发者提前了解。

1. 服务器域名配置
每个微信小程序需要事先设置一个通讯域名，小程序只可以跟指定的域名与进行网络通信。包括普通 HTTPS 请求（wx.request）、上传文件（wx.uploadFile）、下载文件（wx.downloadFile) 和 WebSocket 通信（wx.connectSocket）

配置流程
服务器域名请在 「小程序后台-设置-开发设置-服务器域名」 中进行配置，配置时需要注意：

域名只支持 https (wx.request、wx.uploadFile、wx.downloadFile) 和 wss (wx.connectSocket) 协议；
域名不能使用 IP 地址或 localhost；
可以配置端口，如 https://myserver.com:8080，但是配置后只能向 https://myserver.com:8080 发起请求。如果向 https://myserver.com、https://myserver.com:9091 等 URL 请求则会失败。
如果不配置端口。如 https://myserver.com，那么请求的 URL 中也不能包含端口，甚至是默认的 443 端口也不可以。如果向 https://myserver.com:443 请求则会失败。
域名必须经过 ICP 备案；
出于安全考虑，api.weixin.qq.com 不能被配置为服务器域名，相关API也不能在小程序内调用。 开发者应将 AppSecret 保存到后台服务器中，通过服务器使用 getAccessToken 接口获取 access_token，并调用相关 API；
对于每个接口，分别可以配置最多 20 个域名。
2. 网络请求
超时时间
默认超时时间和最大超时时间都是 60s；
超时时间可以在 app.json 或 game.json 中通过 networktimeout 配置。
使用限制
网络请求的 referer header 不可设置。其格式固定为 https://servicewechat.com/{appid}/{version}/page-frame.html，其中 {appid} 为小程序的 appid，{version} 为小程序的版本号，版本号为 0 表示为开发版、体验版以及审核版本，版本号为 devtools 表示为开发者工具，其余为正式版本；
wx.request、wx.uploadFile、wx.downloadFile 的最大并发限制是 10 个；
小程序进入后台运行后（非置顶聊天），如果 5s 内网络请求没有结束，会回调错误信息 fail interrupted；在回到前台之前，网络请求接口调用都会无法调用。
返回值编码
建议服务器返回值使用 UTF-8 编码。对于非 UTF-8 编码，小程序会尝试进行转换，但是会有转换失败的可能。
小程序会自动对 BOM 头进行过滤（只过滤一个BOM头）。
回调函数
只要成功接收到服务器返回，无论 statusCode 是多少，都会进入 success 回调。请开发者根据业务逻辑对返回值进行判断。
3. 常见问题
HTTPS 证书
小程序必须使用 HTTPS/WSS 发起网络请求。请求时系统会对服务器域名使用的 HTTPS 证书进行校验，如果校验失败，则请求不能成功发起。由于系统限制，不同平台对于证书要求的严格程度不同。为了保证小程序的兼容性，建议开发者按照最高标准进行证书配置，并使用相关工具检查现有证书是否符合要求。

对证书要求如下：

HTTPS 证书必须有效；
证书必须被系统信任，即根证书被已系统内置
部署 SSL 证书的网站域名必须与证书颁发的域名一致
证书必须在有效期内
证书的信任链必需完整（需要服务器配置）
iOS 不支持自签名证书;
iOS 下证书必须满足苹果 App Transport Security (ATS) 的要求;
TLS 必须支持 1.2 及以上版本。部分旧 Android 机型还未支持 TLS 1.2，请确保 HTTPS 服务器的 TLS 版本支持 1.2 及以下版本;
部分 CA 可能不被操作系统信任，请开发者在选择证书时注意小程序和各系统的相关通告。
Chrome 56/57 内核对 WoSign、StartCom 证书限制周知
证书有效性可以使用 openssl s_client -connect example.com:443 命令验证，也可以使用其他在线工具。

除了网络请求 API 外，小程序中其他 HTTPS 请求如果出现异常，也请按上述流程进行检查。如 https 的图片无法加载、音视频无法播放等。

跳过域名校验
在微信开发者工具中，可以临时开启 开发环境不校验请求域名、TLS版本及HTTPS证书 选项，跳过服务器域名的校验。此时，在微信开发者工具中及手机开启调试模式时，不会进行服务器域名的校验。

在服务器域名配置成功后，建议开发者关闭此选项进行开发，并在各平台下进行测试，以确认服务器域名配置正确。

如果手机上出现 “打开调试模式可以发出请求，关闭调试模式无法发出请求” 的现象，请确认是否跳过了域名校验，并确认服务器域名和证书配置是否正确。