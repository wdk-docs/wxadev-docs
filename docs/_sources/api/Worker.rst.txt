:wxapi:`Worker`
============================================

.. function:: wx.createWorker(scriptPath)

   .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。

   创建一个 Worker 线程。目前限制最多只能创建一个 Worker，创建下一个 :class:`Worker` 前请先调用 :func:`Worker.terminate`

   :param string scriptPath: worker 入口文件的绝对路径
   :return: :class:`Worker` 对象

.. class:: Worker

   Worker 实例，主线程中可通过 :func:`wx.createWorker` 接口获取，worker 线程中可通过全局变量 worker 获取。

方法
--------

.. function:: Worker.postMessage(message)

  向主线程/Worker 线程发送的消息。

  :param Object message: 需要发送的消息，必须是一个可序列化的 JavaScript key-value 形式的对象。

  :示例:

    worker 线程中

    .. code::

      worker.postMessage({
        msg: 'hello from worker'
      })

    主线程中

    .. code::

      const worker = wx.createWorker('workers/request/index.js')

      worker.postMessage({
        msg: 'hello from main'
      })

.. function:: Worker.terminate()

  结束当前 Worker 线程。仅限在主线程 worker 对象上调用。

.. function:: Worker.onMessage(callback)

  监听主线程/Worker 线程向当前线程发送的消息的事件。

  :param function callback(message):	主线程/Worker 线程向当前线程发送的消息

    - message	Object	主线程/Worker 线程向当前线程发送的消息

示例代码
--------------

运行以下代码需先进行基础配置，详细请查阅 多线程 文档了解基础知识和配置方法。

.. code::

  const worker = wx.createWorker('workers/request/index.js') // 文件名指定 worker 的入口文件路径，绝对路径

  worker.onMessage(function (res) {
    console.log(res)
  })

  worker.postMessage({
    msg: 'hello worker'
  })

  worker.terminate()
