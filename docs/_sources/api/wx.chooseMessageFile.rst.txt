:wxapi:`wx.chooseMessageFile`
============================================

.. function:: wx.chooseMessageFile({count[ ,type][ ,extension][ ,success][ ,fail][ ,complete]})

  .. version:: 2.5.0 低版本需做 :ref:`compatibility` 。

  :label: 从客户端会话选择文件。

  :param number count:			是	最多可以选择的图片张数，可以 0～100
  :param string type: ``'all'``	所选的文件的类型,合法值:

    - *all*	从所有文件选择
    - *video*	只能选择视频文件
    - *image*	只能选择图片文件
    - *file*	可以选择除了图片和视频之外的其它的文件

  :param Array.<string> extension: 根据文件拓展名过滤，仅 type==file 时有效。每一项都不能是空字符串。默认不过滤。	2.6.0
  :param functon success:	接口调用成功的回调函数

    - **tempFiles**	(*Array.<Object>*) - 返回选择的文件的本地临时文件对象数组

      - **path**	(*string*) -	本地临时文件路径
      - **size**	(*number*) -	本地临时文件大小，单位 B
      - **name**	(*string*) -	选择的文件名称
      - **type**	(*string*) -	选择的文件类型,合法值:

        - *video*	选择了视频文件
        - *image*	选择了图片文件
        - *file* 选择了除图片和视频的文件

      - **time**	(*number*) -	选择的文件的会话发送时间，Unix时间戳，工具暂不支持此属性

  :param functon fail:	接口调用失败的回调函数
  :param functon complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.chooseMessageFile({
        count: 10,
        type: 'image',
        success(res) {
          // tempFilePath可以作为img标签的src属性显示图片
          const tempFilePaths = res.tempFilePaths
        }
      })
