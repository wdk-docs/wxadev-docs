:wxapi:`UploadTask`
============================================


.. class:: UploadTask

基础库 1.4.0 开始支持，低版本需做兼容处理。

一个可以监听上传进度变化事件，以及取消上传任务的对象

方法
-------------

.. function:: UploadTask.abort()

中断上传任务

.. function:: UploadTask.onProgressUpdate(function callback)

监听上传进度变化事件

.. function:: UploadTask.offProgressUpdate(function callback)

取消监听上传进度变化事件

.. function:: UploadTask.onHeadersReceived(function callback)

监听 HTTP Response Header 事件。会比请求完成事件更早

.. function:: UploadTask.offHeadersReceived(function callback)

取消监听 HTTP Response Header 事件

示例代码
-------------

.. code::

  const uploadTask = wx.uploadFile({
    url: 'http://example.weixin.qq.com/upload', // 仅为示例，非真实的接口地址
    filePath: tempFilePaths[0],
    name: 'file',
    formData: {
      user: 'test'
    },
    success(res) {
      const data = res.data
      // do something
    }
  })

  uploadTask.onProgressUpdate((res) => {
    console.log('上传进度', res.progress)
    console.log('已经上传的数据长度', res.totalBytesSent)
    console.log('预期需要上传的数据总长度', res.totalBytesExpectedToSend)
  })

  uploadTask.abort() // 取消上传任务
