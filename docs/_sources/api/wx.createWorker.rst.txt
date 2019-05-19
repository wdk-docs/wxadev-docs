:orphan:

:wxapi:`wx.createWorker`
============================================

Worker

.. function:: wx.createWorker(string scriptPath)


   .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。

创建一个 Worker 线程。目前限制最多只能创建一个 Worker，创建下一个 Worker 前请先调用 Worker.terminate

参数
string scriptPath
worker 入口文件的绝对路径

返回值
Worker
Worker 对象
