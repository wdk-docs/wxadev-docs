��          |               �   .   �   #     ;   0  �   l     a     p  �   �  *     S   3     �  �   �  w  v  .   �  #     ;   A  �   }     r     �  �   �  *     S   D     �  �   �   :wxfrwk:`生物认证 <open-ability/bio-auth>` post 数据内容（JSON 编码）: 小程序通过 ``SOTER`` 提供以下生物认证方式。 微信提供后台接口用于可信的密钥验签服务，微信将保证该接口返回的验签结果的正确性与可靠性， 并且对于 Android root 情况下该接口具有上述特征（将返回是否保证root情况安全性）。 接口地址:: 流程步骤说明 目前暂时只支持指纹识别认证。设备支持的生物认证方式可使用 ``wx.checkIsSupportSoterAuthentication`` 查询 请求返回数据内容（JSON 编码）: 调用 ``wx.startSoterAuthentication`` ，获取 resultJSON 和 resultJSONSignature 调用流程 （可选）签名校验。此处 resultJSONSignature 使用 SHA256withRSA/PSS 作为签名算法进行验签。 此公式数学定义如下: bool 验签结果=verify(用于签名的原串，签名串，验证签名的公钥) Project-Id-Version: wxadev 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-09 22:55+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :wxfrwk:`生物认证 <open-ability/bio-auth>` post 数据内容（JSON 编码）: 小程序通过 ``SOTER`` 提供以下生物认证方式。 微信提供后台接口用于可信的密钥验签服务，微信将保证该接口返回的验签结果的正确性与可靠性， 并且对于 Android root 情况下该接口具有上述特征（将返回是否保证root情况安全性）。 接口地址:: 流程步骤说明 目前暂时只支持指纹识别认证。设备支持的生物认证方式可使用 ``wx.checkIsSupportSoterAuthentication`` 查询 请求返回数据内容（JSON 编码）: 调用 ``wx.startSoterAuthentication`` ，获取 resultJSON 和 resultJSONSignature 调用流程 （可选）签名校验。此处 resultJSONSignature 使用 SHA256withRSA/PSS 作为签名算法进行验签。 此公式数学定义如下: bool 验签结果=verify(用于签名的原串，签名串，验证签名的公钥) 