:wxapi:`DownloadTask`
==============================

.. class:: DownloadTask

   基础库 1.4.0 开始支持，低版本需做兼容处理。

   一个可以监听下载进度变化事件，以及取消下载任务的对象

方法
----------

.. function:: DownloadTask.abort()

  中断下载任务

.. function:: DownloadTask.onProgressUpdate(function callback)

  监听下载进度变化事件

.. function:: DownloadTask.offProgressUpdate(function callback)

  取消监听下载进度变化事件

.. function:: DownloadTask.onHeadersReceived(function callback)

  监听 HTTP Response Header 事件。会比请求完成事件更早

.. function:: DownloadTask.offHeadersReceived(function callback)

  取消监听 HTTP Response Header 事件

示例代码
------------

.. code::

  const downloadTask = wx.downloadFile({
    url: 'http://example.com/audio/123', // 仅为示例，并非真实的资源
    success(res) {
      wx.playVoice({
        filePath: res.tempFilePath
      })
    }
  })

  downloadTask.onProgressUpdate((res) => {
    console.log('下载进度', res.progress)
    console.log('已经下载的数据长度', res.totalBytesWritten)
    console.log('预期需要下载的数据总长度', res.totalBytesExpectedToWrite)
  })

  downloadTask.abort() // 取消下载任务
