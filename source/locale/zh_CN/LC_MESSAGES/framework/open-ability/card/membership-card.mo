��    )      d              �     �     �     �     �     �     �     �     �  	   �     �  b   �  	   `     j     r  B   �  �   �  �  n  '   �  	   '     1     >  4   B  C   w  �   �  -   Q  @     �   �    B  N   E	  !   �	  !   �	  H   �	     !
     %
     2
     ?
  *   F
     q
     ~
     �
  w  �
                     '     -     1     :     J  	   Q     [  b   `  	   �     �     �  B   �  �   (  �  �  '   b  	   �     �     �  4   �  C   �  �     -   �  @   �  �   #    �  N   �  !   �  !     H   ;     �     �     �     �  *   �     �     �     �   Function Object String appId biz complete encrypt_card_id errMsg extraData fail navigateToMiniProgram接口即将废弃，新版本中请使用<navigator>组件来使用此功能 outer_str success 会员卡组件 会员卡领取渠道值，会在卡券领取事件回传给商户 创建一张微信会员卡并设置为一键激活模式； 设置开卡字段； 获取开卡组件参数； 详情查看会员开卡组件介绍：会员开卡组件 判断 data.referrerInfo.appId 是否为开卡小程序 appId wxeb490c6f9b154ef9，如果不是则中止判断 判断是否有 data.referrerInfo.extraData 是否有数据，如果没有，表示用户未激活直接左滑/点返回键返回，或者用户已经激活 若用户激活成功，可以从 data.referrerInfo.extraData 中获取 activate_ticket，card_id，code 参数用于下一步操作 加密 card_id，传入前须 urldecode 参数名 参数说明 否 商户公众号标识参数，传入前须 urldecode 在 App.onShow 里判断从会员开卡小程序返回的数据data 在开发者工具上调用此 API 并不会真实的跳转到另外的小程序，但是开发者工具会校验本次调用跳转是否成功详情 填写 wxeb490c6f9b154ef9，固定为此appid 开卡组件参数，由第3步获取，包含以下三个参数 开卡组件是使用wx.navigateToMiniProgram开发的官方组件，跳转时无须绑定同一个公众号，直接调用即可 开发者可以在小程序内调用该接口拉起会员开卡组件，方便用户快速填写会员注册信息并领卡。该接口拉起开卡组件无须提前将开卡组件和发起小程序绑定至同一个公众号，开发者直接调用即可。 开发者工具上支持被跳转的小程序处理接收参数的调试详情 接口调用失败的回调函数 接口调用成功的回调函数 接口调用结束的回调函数（调用成功、失败都会执行） 是 是否必填 示例代码 类型 调用前开发者须完成以下步骤： 调用结果 返回参数 返回说明 Project-Id-Version: wxadev 
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
 Function Object String appId biz complete encrypt_card_id errMsg extraData fail navigateToMiniProgram接口即将废弃，新版本中请使用<navigator>组件来使用此功能 outer_str success 会员卡组件 会员卡领取渠道值，会在卡券领取事件回传给商户 创建一张微信会员卡并设置为一键激活模式； 设置开卡字段； 获取开卡组件参数； 详情查看会员开卡组件介绍：会员开卡组件 判断 data.referrerInfo.appId 是否为开卡小程序 appId wxeb490c6f9b154ef9，如果不是则中止判断 判断是否有 data.referrerInfo.extraData 是否有数据，如果没有，表示用户未激活直接左滑/点返回键返回，或者用户已经激活 若用户激活成功，可以从 data.referrerInfo.extraData 中获取 activate_ticket，card_id，code 参数用于下一步操作 加密 card_id，传入前须 urldecode 参数名 参数说明 否 商户公众号标识参数，传入前须 urldecode 在 App.onShow 里判断从会员开卡小程序返回的数据data 在开发者工具上调用此 API 并不会真实的跳转到另外的小程序，但是开发者工具会校验本次调用跳转是否成功详情 填写 wxeb490c6f9b154ef9，固定为此appid 开卡组件参数，由第3步获取，包含以下三个参数 开卡组件是使用wx.navigateToMiniProgram开发的官方组件，跳转时无须绑定同一个公众号，直接调用即可 开发者可以在小程序内调用该接口拉起会员开卡组件，方便用户快速填写会员注册信息并领卡。该接口拉起开卡组件无须提前将开卡组件和发起小程序绑定至同一个公众号，开发者直接调用即可。 开发者工具上支持被跳转的小程序处理接收参数的调试详情 接口调用失败的回调函数 接口调用成功的回调函数 接口调用结束的回调函数（调用成功、失败都会执行） 是 是否必填 示例代码 类型 调用前开发者须完成以下步骤： 调用结果 返回参数 返回说明 