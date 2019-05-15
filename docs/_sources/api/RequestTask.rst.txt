:wxapi:`RequestTask`
============================================

.. class:: RequestTask

   基础库 1.4.0 开始支持，低版本需做兼容处理。

   网络请求任务对象

方法
------------------

.. function:: RequestTask.abort()

   中断请求任务

.. function:: RequestTask.onHeadersReceived(function callback)

   监听 HTTP Response Header 事件。会比请求完成事件更早

.. function:: RequestTask.offHeadersReceived(function callback)

   取消监听 HTTP Response Header 事件

示例代码
------------------

.. code::

   const requestTask = wx.request({
     url: 'test.php', // 仅为示例，并非真实的接口地址
     data: {
       x: '',
       y: ''
     },
     header: {
       'content-type': 'application/json'
     },
     success(res) {
       console.log(res.data)
     }
   })
   requestTask.abort() // 取消请求任务
