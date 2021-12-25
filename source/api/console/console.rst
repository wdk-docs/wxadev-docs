:wxapi:`console`
========================

.. js:class:: console

   向调试面板中打印日志。console 是一个全局对象，可以直接访问。在微信客户端中，向 vConsole 中输出日志。

方法
----------------

.. js:method:: console.debug(...args)

   向调试面板中打印 debug 日志

   :param any args: 日志内容，可以有任意多个。

.. js:method:: console.log(...args)

    向调试面板中打印 log 日志

   :param any args: 日志内容，可以有任意多个。


.. js:method:: console.info(...args)

    向调试面板中打印 info 日志

   :param any args: 日志内容，可以有任意多个。


.. js:method:: console.warn(...args)

    向调试面板中打印 warn 日志

   :param any args: 日志内容，可以有任意多个。


.. js:method:: console.error(...args)

    向调试面板中打印 error 日志

   :param any args: 日志内容，可以有任意多个。


.. js:method:: console.group(label)

    在调试面板中创建一个新的分组。随后输出的内容都会被添加一个缩进，表示该内容属于当前分组。调用  :js:meth:`console.groupEnd` 之后分组结束。

    :param string label: 分组标记，可选。

    .. tip:: 仅在工具中有效，在 vConsole 中为空函数实现。

.. js:method:: console.groupEnd()

    结束由 :js:meth:`console.group` 创建的分组

    .. tip:: 仅在工具中有效，在 vConsole 中为空函数实现。

.. attention::

    - 由于 vConsole 功能有限，以及不同客户端对 console 方法的支持情况有差异，建议开发者在小程序中只使用本文档中提供的方法。
    - 部分内容展示的限制请参见 :ref:`debug`

