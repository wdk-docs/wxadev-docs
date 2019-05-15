:wxapi:`wx.getUserInfo`
============================

.. function:: wx.getUserInfo({[withCredentials][, lang][, success][, fail][, complete]})

   调用前需要 :ref:`用户授权 <authorize>` :data:`scope.userInfo` 。

   获取用户信息。

   .. deperacated:: 2.7.0
      在用户未授权过的情况下调用此接口，将不再出现授权弹窗，会直接进入 fail 回调
      （详见 `《公告》 <https://developers.weixin.qq.com/community/develop/doc/0000a26e1aca6012e896a517556c01>`_ )。
      在用户已授权的情况下调用此接口，可成功获取用户信息。

   :param boolean withCredentials: 是否带上登录态信息。

      - *true* 要求此前有调用过 :func:`wx.login` 且登录态尚未过期，
        此时返回的数据会包含 encryptedData, iv 等敏感信息；
      - *false* 不要求有登录态，
        返回的数据不包含 encryptedData, iv 等敏感信息。

   :param string lang: **en** 显示用户信息的语言

      - *en* 英文
      - *zh_CN* 简体中文
      - *zh_TW* 繁体中文

   :param function success({userInfo, rawData, signature, encryptedData, iv, cloudID}): 接口调用成功的回调函数

      - **userInfo** :data:`UserInfo` - 用户信息对象，不包含 openid 等敏感信息
      - **rawData** (*string*) - 不包括敏感信息的原始数据字符串，用于计算签名
      - **signature** (*string*) - 使用 ``sha1( rawData + sessionkey )`` 得到字符串，用于校验用户信息，详见 :ref:`用户数据的签名验证和加解密 <signature>`
      - **encryptedData** (*string*) - 包括敏感数据在内的完整用户信息的加密数据，详见 用户数据的签名验证和加解密
      - **iv** (*string*) - 加密算法的初始向量，详见 :ref:`用户数据的签名验证和加解密 <signature>`
      - **cloudID** (*string*) - 敏感数据对应的云 ID，开通 :wxcloud:`云开发 <basis/getting-started>` 的小程序才会返回，可通过云调用直接获取开放数据，详细见 :ref:`云调用直接获取开放数据 <signature>`

         .. versionadded:: 2.7.0

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

      .. code::

        // 必须是在用户已经授权的情况下调用
        wx.getUserInfo({
          success(res) {
            const userInfo = res.userInfo
            const nickName = userInfo.nickName
            const avatarUrl = userInfo.avatarUrl
            const gender = userInfo.gender // 性别 0：未知、1：男、2：女
            const province = userInfo.province
            const city = userInfo.city
            const country = userInfo.country
          }
        })

   :敏感数据:

    1. 使用 :ref:`加密数据解密算法 <signature>` 将 encryptedData 在开发者后台解密，
    2. 使用 :ref:`云调用直接通过 cloudID 获取开放数据 <signature>` 。 获取得到的开放数据为以下 json 结构：

    .. code:: json

      {
        "openId": "OPENID",
        "nickName": "NICKNAME",
        "gender": GENDER,
        "city": "CITY",
        "province": "PROVINCE",
        "country": "COUNTRY",
        "avatarUrl": "AVATARURL",
        "unionId": "UNIONID",
        "watermark": {
          "appid": "APPID",
          "timestamp": TIMESTAMP
        }
      }

   :组件示例:

     .. code:: html

       <!-- 如果只是展示用户头像昵称，可以使用 <open-data /> 组件 -->
       <open-data type="userAvatarUrl"></open-data>
       <open-data type="userNickName"></open-data>
       <!-- 需要使用 button 来授权登录 -->
       <button
         wx:if="{{canIUse}}"
         open-type="getUserInfo"
         bindgetuserinfo="bindGetUserInfo"
       >
         授权登录
       </button>
       <view wx:else>请升级微信版本</view>

     .. code::

       Page({
         data: {
           canIUse: wx.canIUse('button.open-type.getUserInfo')
         },
         onLoad() {
           // 查看是否授权
           wx.getSetting({
             success(res) {
               if (res.authSetting['scope.userInfo']) {
                 // 已经授权，可以直接调用 getUserInfo 获取头像昵称
                 wx.getUserInfo({
                   success(res) {
                     console.log(res.userInfo)
                   }
                 })
               }
             }
           })
         },
         bindGetUserInfo(e) {
           console.log(e.detail.userInfo)
         }
       })
