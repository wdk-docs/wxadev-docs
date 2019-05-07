:wxref:`获取到小程序全局唯一的 App 实例(getApp) <api/getApp>`
=============================================================

.. function:: getApp({[allowDefault]})

  获取到小程序全局唯一的 App 实例。

  :return: AppObject

  :param boolean allowDefault:	**false**	在 App 未定义时返回默认实现。当App被调用时，默认实现中定义的属性会被覆盖合并到App中。一般用于独立分包	2.2.4

  :示例:

  .. code::

    // other.js
    const appInstance = getApp()
    console.log(appInstance.globalData) // I am global data

  .. attention::

    不要在定义于 App 内的函数中，或调用 App 前调用 getApp ，使用 this 就可以拿到 app 实例。
    通过 getApp 获取实例之后，不要私自调用生命周期函数。
