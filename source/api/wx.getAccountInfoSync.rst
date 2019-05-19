:wxapi:`wx.getAccountInfoSync`
============================================

.. function:: wx.getAccountInfoSync()


   .. versionadded:: 2.2.2 低版本需做 :ref:`compatibility` 。

获取当前帐号信息

返回值
Object
帐号信息

属性	类型	说明
miniProgram	Object	小程序帐号信息
plugin	Object	插件帐号信息（仅在插件中调用时包含这一项）
