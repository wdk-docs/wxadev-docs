��          �               ,  �   -  �   �  T   7  H   �     �  ;   �       *     n   I     �  !   �  !   �  D     �   ]     (     5  w  B  �   �  �   >  T   �  H        b  ;   h     �  *   �  n   �     E	  !   a	  !   �	  D   �	  �   �	     �
     �
   (userIds和externalUserIds至少填一个) 参与会话的外部联系人列表，格式为userId1;userId2;…，用分号隔开。 (userIds和externalUserIds至少填一个)参与会话的企业成员列表，格式为 ``userid1;userid2;...`` ，用分号隔开。 :wxwork:`wx.qy.openEnterpriseChat <dev-doc/qywx-api/contact/wxqyopenenterprisechat>` externalUserIds由外部联系人选人接口selectExternalContact获得 label 会话名称。单聊时该参数传入空字符串""即可 参数 当前成员必须在应用的可见范围 必须先调用过wx.qy.login，且session_key未过期，开发者可调用checkSession 检查当前登录态 打开通讯录选人功能 接口调用失败的回调函数 接口调用成功的回调函数 接口调用结束的回调函数(调用成功、失败都会执行) 由于目前暂不支持包含微信联系人的群聊，所以externalUserIds中最多只能有一个微信联系人，而且一旦externalUserIds中有微信联系人，就不能再传userIds参数。 示例代码 调用前提 Project-Id-Version: wxadev 
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
 (userIds和externalUserIds至少填一个) 参与会话的外部联系人列表，格式为userId1;userId2;…，用分号隔开。 (userIds和externalUserIds至少填一个)参与会话的企业成员列表，格式为 ``userid1;userid2;...`` ，用分号隔开。 :wxwork:`wx.qy.openEnterpriseChat <dev-doc/qywx-api/contact/wxqyopenenterprisechat>` externalUserIds由外部联系人选人接口selectExternalContact获得 label 会话名称。单聊时该参数传入空字符串""即可 参数 当前成员必须在应用的可见范围 必须先调用过wx.qy.login，且session_key未过期，开发者可调用checkSession 检查当前登录态 打开通讯录选人功能 接口调用失败的回调函数 接口调用成功的回调函数 接口调用结束的回调函数(调用成功、失败都会执行) 由于目前暂不支持包含微信联系人的群聊，所以externalUserIds中最多只能有一个微信联系人，而且一旦externalUserIds中有微信联系人，就不能再传userIds参数。 示例代码 调用前提 