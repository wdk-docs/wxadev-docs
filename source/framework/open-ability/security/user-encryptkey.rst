:wxfrwk:`小程序加密网络通道 <open-ability/user-encryptkey>`
===============================================================


从基础库 2.17.3 开始支持

功能介绍
-----------
为了避免小程序与开发者后台通信时数据被截取和篡改，微信侧维护了一个用户维度的可靠key，用于小程序和后台通信时进行加密和签名。

开发者可以分别通过小程序前端和微信后台提供的接口，获取用户的加密 key。

使用说明
----------

在小程序中开发者可以使用UserCryptoManager.getLatestUserKey获取获取用户最新的加密密钥信息。

前端调用示例

.. code:: js

  const somedata = 'xxxxx'
  const userCryptoManager = wx.getUserCryptoManager()
  userCryptoManager.getLatestUserKey({
      success({encryptKey, iv, version, expireTime}) {
          const encryptedData = someAESEncryptMethod(encryptKey, iv, somedata)
          wx.request({
            data: encryptedData,
            success(res) {
                  const decryptedData = someAESDEcryptMethod(encryptKey, iv, res.data)
                  console.log(decryptedData)
            }
          })
      }
  })

someAESEncryptMethod 和 someAESDEcryptMethod 分别为加解密函数，由开发者自行引入加解密库来实现，基础库暂时不提供加解密能力。 开发者可参考开源加密库: https://github.com/flash1293/aes-wasm https://github.com/ricmoo/aes-js

在开发者服务端，可以调用getUserEncryptKey后台接口获取用户最近三次的key。在获取key的同时，接口会携带version信息，开发者可以比较version版本来选择使用对应的key对数据进行加解密。

服务端调用示例

.. code:: shell

  curl -X POST "https://api.weixin.qq.com/wxa/business/getuserencryptkey?access_token=ACCESS_TOKEN&openid=OPENID&signature=SIGNATURE&sig_method=hmac_sha256"
