��          �               �  7   �     �     �     �          	          %     2  ?   ?  `        �     �  �   �  1  �     �  9   �  �        �  D     ?   K     �     �    �  w  �  7   <	     t	     {	     �	     �	     �	     �	     �	     �	  ?   �	  `   
     o
     v
  �   }
  1       C  9   \  �   �     �  D   �  ?   �          !    4   :wxfrwk:`获取手机号 <open-ability/getPhoneNumber>` String countryCode encryptedData iv phoneNumber purePhoneNumber 代码示例 使用方法 加密算法的初始向量，详细见加密数据解密算法 包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法 区号 参数 因为需要用户主动触发才能发起获取手机号接口，所以该功能不由 API 来调用，需用 <button> 组件的点击来触发。 在回调中调用 wx.login 登录，可能会刷新登录态。 此时服务器使用 code 换取的 sessionKey 不是加密时使用的 sessionKey， 导致解密失败。建议开发者提前进行 login；或者在回调中先使用 checkSession 进行登录态检查，避免 login 刷新登录态。 没有区号的手机号 用户绑定的手机号（国外手机号会有区号） 目前该接口针对非个人开发者，且完成了认证的小程序开放（不包含海外主体）。 需谨慎使用，若用户举报较多或被发现在不必要场景下使用，微信有权永久回收该小程序的该接口权限。 类型 获取微信用户绑定的手机号，需先调用wx.login接口。 解密后为以下 JSON 结构，详见加密数据解密算法 说明 返回参数说明 需要将 <button> 组件 open-type 的值设置为 getPhoneNumber，当用户点击并同意之后， 可以通过 bindgetphonenumber 事件回调获取到微信服务器返回的加密数据， 然后在第三方服务端结合 session_key 以及 app_id 进行解密获取手机号。 Project-Id-Version: wxadev 
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
 :wxfrwk:`获取手机号 <open-ability/getPhoneNumber>` String countryCode encryptedData iv phoneNumber purePhoneNumber 代码示例 使用方法 加密算法的初始向量，详细见加密数据解密算法 包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法 区号 参数 因为需要用户主动触发才能发起获取手机号接口，所以该功能不由 API 来调用，需用 <button> 组件的点击来触发。 在回调中调用 wx.login 登录，可能会刷新登录态。 此时服务器使用 code 换取的 sessionKey 不是加密时使用的 sessionKey， 导致解密失败。建议开发者提前进行 login；或者在回调中先使用 checkSession 进行登录态检查，避免 login 刷新登录态。 没有区号的手机号 用户绑定的手机号（国外手机号会有区号） 目前该接口针对非个人开发者，且完成了认证的小程序开放（不包含海外主体）。 需谨慎使用，若用户举报较多或被发现在不必要场景下使用，微信有权永久回收该小程序的该接口权限。 类型 获取微信用户绑定的手机号，需先调用wx.login接口。 解密后为以下 JSON 结构，详见加密数据解密算法 说明 返回参数说明 需要将 <button> 组件 open-type 的值设置为 getPhoneNumber，当用户点击并同意之后， 可以通过 bindgetphonenumber 事件回调获取到微信服务器返回的加密数据， 然后在第三方服务端结合 session_key 以及 app_id 进行解密获取手机号。 