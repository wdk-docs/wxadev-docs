用户信息功能页
==============

用户信息功能页用于帮助插件获取用户信息，包括 openid 和昵称等，相当于 wx.login 和 wx.getUserInfo 的功能。

此外，自基础库版本 2.3.1 起，用户在这个功能页中授权之后，插件就可以直接调用 wx.login 和 wx.getUserInfo 。无需再次进入功能页获取用户信息。

调用参数
用户信息功能页使用 <functional-page-navigator> 进行跳转时，对应的参数 name 应为固定值 loginAndGetUserInfo，其余参数与 wx.getUserInfo 相同，具体来说：

args参数说明：

参数名	类型	必填	说明
withCredentials	Boolean	否	是否带上登录态信息
lang	String	否	指定返回用户信息的语言，zh_CN 简体中文，zh_TW 繁体中文，en 英文。默认为en。
timeout	Number	否	超时时间，单位 ms
注：当 withCredentials 为 true 时，返回的数据会包含 encryptedData, iv 等敏感信息。

bindsuccess返回参数说明：

参数	类型	说明
code	String	同 wx.login 获得的用户登录凭证（有效期五分钟）。开发者需要在开发者服务器后台调用 api，使用 code 换取 openid 和 session_key 等信息
errMsg	String	调用结果
userInfo	OBJECT	用户信息对象，不包含 openid 等敏感信息
rawData	String	不包括敏感信息的原始数据字符串，用于计算签名。
signature	String	使用 sha1( rawData + sessionkey ) 得到字符串，用于校验用户信息，参考文档 signature。
encryptedData	String	包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法
iv	String	加密算法的初始向量，详细见加密数据解密算法
userInfo参数说明：

参数	类型	说明
nickName	String	用户昵称
avatarUrl	String	用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表132*132正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。
gender	String	用户的性别，值为1时是男性，值为2时是女性，值为0时是未知
city	String	用户所在城市
province	String	用户所在省份
country	String	用户所在国家
language	String	用户的语言，简体中文为zh_CN
代码示例：

<!--plugin/components/hello-component.wxml-->
<functional-page-navigator
  name="loginAndGetUserInfo"
  args="{{ args }}"
  version="develop"
  bind:success="loginSuccess"
  bind:fail="loginFail"
>
  <button class="login">登录到插件</button>
</functional-page-navigator>
// plugin/components/hello-component.js
Component({
  properties: {},
  data: {
    args: {
      withCredentials: true,
      lang: 'zh_CN'
    }
  },
  methods: {
    loginSuccess(res) {
      console.log(res.detail)
    },
    loginFail(res) {
      console.log(res)
    }
  }
})
用户点击该 navigator 后，将跳转到如下的用户信息功能页：

用户信息功能页

在微信开发者工具中查看示例：

由于插件需要 appid 才能工作，请填入一个 appid；
由于当前代码片段的限制，打开该示例后请 手动将 appid 填写到 miniprogram/app.json 中（如下图）使示例正常运行。
手动填写 appid