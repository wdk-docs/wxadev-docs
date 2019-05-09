:wxapi:`LogManager`
============================================

.. function:: wx.getLogManager({[level]})

    .. versionadded:: 2.1.0 低版本需做 :ref:`compatibility` 。

    获取日志管理器对象 :class:`LogManager` 。

    :param number level: **0** 是否会把 App、Page 的生命周期函数和 wx 命名空间下的函数调用写入日志。

       - *0* 会
       - *1* 不会

       .. versionadded:: 2.3.2

    :return: :class:`LogManager`
    :示例:

      .. code::

        const logger = wx.getLogManager({level: 1})
        logger.log({str: 'hello world'}, 'basic log', 100, [1, 2, 3])
        logger.info({str: 'hello world'}, 'info log', 100, [1, 2, 3])
        logger.debug({str: 'hello world'}, 'debug log', 100, [1, 2, 3])
        logger.warn({str: 'hello world'}, 'warn log', 100, [1, 2, 3])

.. class:: LogManager

  日志管理器实例，可以通过 :func:`wx.getLogManager` 获取。

.. function:: LogManager.debug(...args)

  写 debug 日志

  :param ...args: 日志内容，可以有任意多个。每次调用的参数的总大小不超过100Kb
  :type ...args:  Object | Array.<any> | number | string

.. function:: LogManager.info(...args)

  写 info 日志

  :param ...args: 日志内容，可以有任意多个。每次调用的参数的总大小不超过100Kb
  :type ...args:  Object | Array.<any> | number | string

.. function:: LogManager.log(...args)

  写 log 日志

  :param ...args: 日志内容，可以有任意多个。每次调用的参数的总大小不超过100Kb
  :type ...args:  Object | Array.<any> | number | string

.. function:: LogManager.warn(...args)

  写 warn 日志

  :param ...args: 日志内容，可以有任意多个。每次调用的参数的总大小不超过100Kb
  :type ...args:  Object | Array.<any> | number | string

最多保存5M的日志内容，超过5M后，旧的日志内容会被删除。
用户可以通过使用 :ref:`<Button> <Button>` 组件的 ``open-type="feedback"`` 来上传打印的日志。
开发者可以通过小程序管理后台左侧菜单 ``反馈管理`` 页面查看。

基础库默认会把 :class:`App` 、 :class:`Page` 的生命周期函数和 :class:`wx` 命名空间下的函数调用写入日志。
