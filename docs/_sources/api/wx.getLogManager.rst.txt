:orphan:

:wxapi:`wx.getLogManager`
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

