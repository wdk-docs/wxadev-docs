:wxapi:`SocketTask`
============================================

.. class:: SocketTask


   .. versionadded:: 1.7.0 低版本需做 :ref:`compatibility` 。

WebSocket 任务，可通过 :func:`wx.connectSocket()` 接口创建返回

方法
--------

.. function:: SocketTask.send(Object object)

通过 WebSocket 连接发送数据

.. function:: SocketTask.close(Object object)

关闭 WebSocket 连接

.. function:: SocketTask.onOpen(function callback)

监听 WebSocket 连接打开事件

.. function:: SocketTask.onClose(function callback)

监听 WebSocket 连接关闭事件

.. function:: SocketTask.onError(function callback)

监听 WebSocket 错误事件

.. function:: SocketTask.onMessage(function callback)

监听 WebSocket 接受到服务器的消息事件
