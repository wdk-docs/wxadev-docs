open-data
===========================

.. versionadded:: 1.4.0 开始支持，低版本需做兼容处理。

用于展示微信开放的数据。

属性	类型	默认值	必填	说明	最低版本
type	string		否	开放数据类型	1.4.0
open-gid	string		否	当 type="groupName" 时生效, 群id	1.4.0
lang	string	en	否	当 type="user*" 时生效，以哪种语言展示 userInfo	1.4.0
type 的合法值

值	说明	最低版本
groupName	拉取群名称	1.4.0
userNickName	用户昵称	1.9.90
userAvatarUrl	用户头像	1.9.90
userGender	用户性别	1.9.90
userCity	用户所在城市	1.9.90
userProvince	用户所在省份	1.9.90
userCountry	用户所在国家	1.9.90
userLanguage	用户的语言	1.9.90
lang 的合法值

值	说明	最低版本
en	英文
zh_CN	简体中文
zh_TW	繁体中文
Bug & Tip

.. tip:: 只有当前用户在此群内才能拉取到群名称

.. tip:: 关于open-gid的获取请使用 wx.getShareInfo
示例代码
在开发者工具中预览效果


.. code:: html


  <open-data type="groupName" open-gid="xxxxxx"></open-data>
  <open-data type="userAvatarUrl"></open-data>
  <open-data type="userGender" lang="zh_CN"></open-data>