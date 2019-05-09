.. _text:

:wx_comp:`text <text>`
==================================

.. versionadded:: 1.0.0 低版本需做 :ref:`compatibility` 。

+------------+---------+--------+------+--------------+----------+
|    属性    |  类型   | 默认值 | 必填 |     说明     | 最低版本 |
+============+=========+========+======+==============+==========+
| selectable | boolean | false  | 否   | 文本是否可选 | 1.1.0    |
+------------+---------+--------+------+--------------+----------+
| space      | string  |        | 否   | 显示连续空格 | 1.4.0    |
+------------+---------+--------+------+--------------+----------+
| decode     | boolean | false  | 否   | 是否解码     | 1.4.0    |
+------------+---------+--------+------+--------------+----------+

space 的合法值

+------+------------------------+
|  值  |          说明          |
+======+========================+
| ensp | 中文字符空格一半大小   |
+------+------------------------+
| emsp | 中文字符空格大小       |
+------+------------------------+
| nbsp | 根据字体设置的空格大小 |
+------+------------------------+

.. tip:: decode可以解析的有 &nbsp; &lt; &gt; &amp; &apos; &ensp; &emsp;

.. tip:: 各个操作系统的空格标准并不一致。

.. tip:: 组件内只支持 [`](text.html) 嵌套。

.. tip:: 除了文本节点以外的其他节点都无法长按选中。

.. error:: 基础库版本低于 2.1.0 时， <:ref:`text`> 组件内嵌的 <:ref:`text`> style 设置可能不会生效。

示例代码

:download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/Egao9cm46gY6>`

.. code:: html

  <view class="btn-area">
    <view class="body-view">
      <text>{{text}}</text>
      <button bindtap="add">add line</button>
      <button bindtap="remove">remove line</button>
    </view>
  </view>

.. code:: js

  const initData = 'this is first line\nthis is second line'
  const extraLine = []
  Page({
    data: {
      text: initData
    },
    add(e) {
      extraLine.push('other line')
      this.setData({
        text: initData + '\n' + extraLine.join('\n')
      })
    },
    remove(e) {
      if (extraLine.length > 0) {
        extraLine.pop()
        this.setData({
          text: initData + '\n' + extraLine.join('\n')
        })
      }
    }
  })
