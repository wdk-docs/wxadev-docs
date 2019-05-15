:wxapi:`wx.createSelectorQuery`
============================================

.. function:: wx.createSelectorQuery()

  .. versionadded:: 1.4.0 低版本需做 :ref:`compatibility` 。

  返回一个 :class:`SelectorQuery` 对象实例。

  在自定义组件或包含自定义组件的页面中，应使用 ``this.createSelectorQuery()`` 来代替。

  :return: :class:`SelectorQuery`
  :示例:

    .. code::

      const query = wx.createSelectorQuery()
      query.select('#the-id').boundingClientRect()
      query.selectViewport().scrollOffset()
      query.exec(function (res) {
        res[0].top // #the-id节点的上边界坐标
        res[1].scrollTop // 显示区域的竖直滚动位置
      })
