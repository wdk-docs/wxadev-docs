:wxapi:`wx.compressImage`
============================================


.. function:: wx.compressImage({src[,quality][,success][, fail][, complete]})

  .. versionadded:: 2.4.0 低版本需做  :ref:`compatibility` 。

  :label: 压缩图片接口，可选压缩质量

  :param string src: 图片路径，图片的路径，可以是相对路径、临时文件路径、存储文件路径
  :param number quality:		``80`` 压缩质量，范围0～100，数值越小，质量越低，压缩率越高（仅对jpg有效）。
  :param function success({tempFilePath}):	接口调用成功的回调函数

    - **tempFilePath** (*string*) - 压缩后图片的临时文件路径

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.compressImage({
        src: '', // 图片路径
        quality: 80 // 压缩质量
      })