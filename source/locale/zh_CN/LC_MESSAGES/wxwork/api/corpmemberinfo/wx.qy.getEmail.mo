��          �               \  �   ]  ?     �   A  Y   �  n   .  T   �     �     �       �     !   �  !   �  �  �  H   �            Q   8     �     �  w  �  �   (
  ?   �
  �     Y   �  n   �  T   h     �     �     �  �   �  !   o  !   �  �  �  H   �     �     �  Q        U     b   **appid**   (*String*) -    敏感数据归属的小程序appid，开发者可校验此参数与自身appid是否一致，注意此appid不是企业微信的corpid **email**     (*string*) -    当前企业成员的邮箱地址 **encryptedData** *(string)* -    包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法, 解密后JSON: **iv**    *(string)* -    加密算法的初始向量，详细见加密数据解密算法 **timestamp**       (*DateInt*) -   敏感数据获取的时间戳, 开发者可以用于数据时效性校验 **watermark** (*object*) - 数据水印，应用可以依此校验数据的有效性 label wx.qy.getEmail 参数 必须先调用过 :func:`wx.qy.login`，且session_key未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态 接口调用失败的回调函数 接口调用成功的回调函数 接口调用成功的回调函数  - **encryptedData** *(string)* -    包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法, 解密后JSON:      - **email**     (*string*) -    当前企业成员的邮箱地址     - **watermark** (*object*) - 数据水印，应用可以依此校验数据的有效性        - **appid**   (*String*) -    敏感数据归属的小程序appid，开发者可校验此参数与自身appid是否一致，注意此appid不是企业微信的corpid       - **timestamp**       (*DateInt*) -   敏感数据获取的时间戳, 开发者可以用于数据时效性校验  - **iv**    *(string)* -    加密算法的初始向量，详细见加密数据解密算法 接口调用结束的回调函数（调用成功、失败都会执行） 示例代码 获取企业成员邮箱地址 要求用户在应用可见范围内，且每次调用都需要用户同意确认 调用前提 超时时间，单位 ms Project-Id-Version: wxadev 
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
 **appid**   (*String*) -    敏感数据归属的小程序appid，开发者可校验此参数与自身appid是否一致，注意此appid不是企业微信的corpid **email**     (*string*) -    当前企业成员的邮箱地址 **encryptedData** *(string)* -    包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法, 解密后JSON: **iv**    *(string)* -    加密算法的初始向量，详细见加密数据解密算法 **timestamp**       (*DateInt*) -   敏感数据获取的时间戳, 开发者可以用于数据时效性校验 **watermark** (*object*) - 数据水印，应用可以依此校验数据的有效性 label wx.qy.getEmail 参数 必须先调用过 :func:`wx.qy.login`，且session_key未过期，开发者可调用 :func:`checkSession <wx.qy.checkSession>` 检查当前登录态 接口调用失败的回调函数 接口调用成功的回调函数 接口调用成功的回调函数  - **encryptedData** *(string)* -    包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法, 解密后JSON:      - **email**     (*string*) -    当前企业成员的邮箱地址     - **watermark** (*object*) - 数据水印，应用可以依此校验数据的有效性        - **appid**   (*String*) -    敏感数据归属的小程序appid，开发者可校验此参数与自身appid是否一致，注意此appid不是企业微信的corpid       - **timestamp**       (*DateInt*) -   敏感数据获取的时间戳, 开发者可以用于数据时效性校验  - **iv**    *(string)* -    加密算法的初始向量，详细见加密数据解密算法 接口调用结束的回调函数（调用成功、失败都会执行） 示例代码 获取企业成员邮箱地址 要求用户在应用可见范围内，且每次调用都需要用户同意确认 调用前提 超时时间，单位 ms 