:wxapi:`wx.getUserProfile()`
==================================================

.. function:: wx.getUserProfile(Object object)

   .. versionadded:: 基础库 2.10.4 开始支持，低版本需做兼容处理。
   .. supported::

      - 以 Promise 风格 调用：支持
      - 小程序插件：不支持

   .. label:: 获取用户信息。页面产生点击事件（例如 button 上 bindtap 的回调中）后才可调用，每次请求都会弹出授权窗口，用户同意后返回 userInfo。该接口用于替换 wx.getUserInfo，详见 用户信息接口调整说明。

参数
Object object
属性	类型	默认值	必填	说明
lang	string	en	否	显示用户信息的语言
合法值	说明	最低版本
en	英文
zh_CN	简体中文
zh_TW	繁体中文
desc	string		是	声明获取用户个人信息后的用途，不超过30个字符
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明	最低版本
userInfo	UserInfo	用户信息对象	2.10.4
rawData	string	不包括敏感信息的原始数据字符串，用于计算签名	2.10.4
signature	string	使用 sha1( rawData + sessionkey ) 得到字符串，用于校验用户信息，详见 用户数据的签名验证和加解密	2.10.4
encryptedData	string	包括敏感数据在内的完整用户信息的加密数据，详见 用户数据的签名验证和加解密	2.10.4
iv	string	加密算法的初始向量，详见 用户数据的签名验证和加解密	2.10.4
cloudID	string	敏感数据对应的云 ID，开通云开发的小程序才会返回，可通过云调用直接获取开放数据，详细见云调用直接获取开放数据	2.10.4
示例代码
在开发者工具中预览效果

Bug & Tip
tip：仅小程序中 wx.getUserInfo 接口进行调整，小游戏中不受影响；
tip：开发者工具中仅 2.10.4 及以上版本可访问 wx.getUserProfile 接口，在真机上可参考示例代码进行判断，无需根据版本号或者 canIUse 进行条件。
tip：wx.getUserProfile 返回的加密数据中不包含 openId 和 unionId 字段。
bug：开发者工具中 2.10.4~2.16.1 基础库版本通过 <button open-type="getUserInfo"> 会返回真实数据，真机上此区间会按照公告返回匿名数据。
<view class="container">
  <view class="userinfo">
    <block wx:if="{{!hasUserInfo}}">
      <button wx:if="{{canIUseGetUserProfile}}" bindtap="getUserProfile"> 获取头像昵称 </button>
      <button wx:else open-type="getUserInfo" bindgetuserinfo="getUserInfo"> 获取头像昵称 </button>
    </block>
    <block wx:else>
      <image bindtap="bindViewTap" class="userinfo-avatar" src="{{userInfo.avatarUrl}}" mode="cover"></image>
      <text class="userinfo-nickname">{{userInfo.nickName}}</text>
    </block>
  </view>
</view>
Page({
  data: {
    userInfo: {},
    hasUserInfo: false,
    canIUseGetUserProfile: false,
  },
  onLoad() {
    if (wx.getUserProfile) {
      this.setData({
        canIUseGetUserProfile: true
      })
    }
  },
  getUserProfile(e) {
    // 推荐使用wx.getUserProfile获取用户信息，开发者每次通过该接口获取用户个人信息均需用户确认
    // 开发者妥善保管用户快速填写的头像昵称，避免重复弹窗
    wx.getUserProfile({
      desc: '用于完善会员资料', // 声明获取用户个人信息后的用途，后续会展示在弹窗中，请谨慎填写
      success: (res) => {
        this.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
      }
    })
  },
  getUserInfo(e) {
    // 不推荐使用getUserInfo获取用户信息，预计自2021年4月13日起，getUserInfo将不再弹出弹窗，并直接返回匿名的用户个人信息
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  },
})
