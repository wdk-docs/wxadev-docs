EditorContext
======================

.. versionadded:: 2.7.0 低版本需做 :ref:`compatibility` 。

.. class:: EditorContext

   可通过 :func:`wx.createSelectorQuery` 获取。

   editorContext 通过 id 跟一个 :ref:`<editor> <editor>` 组件绑定，操作对应的 :ref:`<editor> <editor>` 组件。

方法
--------

.. function:: EditorContext.format(string name, string value)

   修改样式

.. function:: EditorContext.insertDivider()

   插入分割线

.. function:: EditorContext.insertImage(Object object)

   插入图片

.. function:: EditorContext.insertText(Object object)

   覆盖当前选区，设置一段文本

.. function:: EditorContext.setContents(Object object)

   初始化编辑器内容，hmlt和delta同时存在时仅delta生效

.. function:: EditorContext.getContents()

   获取编辑器内容

.. function:: EditorContext.clear()

   清空编辑器内容

.. function:: EditorContext.removeFormat()

   清除当前选区的样式

.. function:: EditorContext.undo()

   撤销

.. function:: EditorContext.redo()

   恢复
