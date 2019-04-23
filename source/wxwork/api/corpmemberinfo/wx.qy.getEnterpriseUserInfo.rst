wx.qy.getEnterpriseUserInfo
===================================================

.. function:: wx.qy.getEnterpriseUserInfo({[timeout][, success][, fail][, complete]})

  :label: 获取企业成员基本信息
  :param number timeout: 超时时间，单位 ms
  :param funciton success({userInfo,rawData,signature,encryptedData,iv}): 接口调用成功的回调函数

    - **userInfo** (*object*) -	用户信息对象，不包含userid、手机号、头像等敏感信息

      - **name**	(*string*) -	企业成员姓名
      - **gender**	(*number*) -	企业成员的性别，0表示未定义，1表示男性，2表示女性
      - **language**	(*string*) -	用户的语言，简体中文为zh_CN

    - **rawData**	(*string*) -	不包括敏感信息的原始数据字符串，用于计算签名。
    - **signature**	(*string*) -	使用 sha1( rawData + sessionkey ) 得到字符串，用于校验用户信息，参考文档 signature。
    - **encryptedData**	(*string*) - 包括敏感数据在内的完整用户信息的加密数据，解码JSON如下:

      解密时使用的appid为小程序的appid，而非企业的corpid

      - **corpid**	(*string*) -	用户所属企业的corpid
      - **userid**	(*string*) -	企业成员UserID，对应管理端的帐号。注意：如果该企业没有关联该小程序，则此处返回加密的userid
      - **name**	(*string*) -	企业成员姓名
      - **gender**	(*number*) -	企业成员的性别，0表示未定义，1表示男性，2表示女性
      - **watermark** (*object*) -		数据水印，应用可以依此校验数据的有效性

        - **appid**	(*string*) -	敏感数据归属的小程序appid，开发者可校验此参数与自身appid是否一致，注意此appid不是企业微信的corpid
        - **timestamp**	(*DateInt*) -	敏感数据获取的时间戳, 开发者可以用于数据时效性校验

    - **iv**	(*string*) -	加密算法的初始向量，详细见加密数据解密算法

  :param funciton fail: 接口调用失败的回调函数
  :param funciton complete: 接口调用结束的回调函数（调用成功、失败都会执行）

  :前提:

    1. 必须先调用过 :func:`wx.qy.login` ，且session_key未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态。
    2. 用户在应用可见范围内时可以静默获取，否则需要用户同意确认。

  :示例:

    .. code::

      wx.qy.getEnterpriseUserInfo ({
        success: function(res) {
          var userInfo = res.userInfo
          var name = userInfo.name
          var gender = userInfo.gender //性别 0：未知、1：男、2：女
        }
      })
