:wxapi:`UDPSocket`
============================================

.. function:: wx.createUDPSocket()

   .. versionadded:: 2.7.0 低版本需做 :ref:`compatibility` 。

   创建一个 UDP Socket 实例。使用前请注意阅读相关说明。

   :return: :class:`UDPSocket` 一个 UDP Socket 实例

.. class:: UDPSocket

    .. versionadded:: 2.7.0 低版本需做 :ref:`compatibility` 。

    一个 UDP Socket 实例，默认使用 IPv4 协议。

方法
-------------------------------

.. function:: UDPSocket.bind()

   绑定一个系统随机分配的可用端口
   :return: number

.. function:: UDPSocket.send(Object object)

向指定的 IP 和 port 发送消息

.. function:: UDPSocket.close()

关闭 UDP Socket 实例，相当于销毁。 在关闭之后，UDP Socket 实例不能再发送消息，
每次调用 UDPSocket.send 将会触发错误事件，
并且 message 事件回调函数也不会再也执行。
在 UDPSocket 实例被创建后将被 Native 强引用，保证其不被 GC。
在 UDPSocket.close 后将解除对其的强引用，让 UDPSocket 实例遵从 GC。

.. function:: UDPSocket.onClose(function callback)

监听关闭事件

.. function:: UDPSocket.offClose(function callback)

取消监听关闭事件

.. function:: UDPSocket.onError(function callback)

监听错误事件

.. function:: UDPSocket.offError(function callback)

取消监听错误事件

.. function:: UDPSocket.onListening(function callback)

监听开始监听数据包消息的事件

.. function:: UDPSocket.offListening(function callback)

取消监听开始监听数据包消息的事件

.. function:: UDPSocket.onMessage(function callback)

监听收到消息的事件

.. function:: UDPSocket.offMessage(function callback)

取消监听收到消息的事件
