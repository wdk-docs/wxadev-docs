:wxapi:`IntersectionObserver`
============================================


.. class:: IntersectionObserver

IntersectionObserver 对象，用于推断某些节点是否可以被用户看见、有多大比例可以被用户看见。

方法

.. function:: IntersectionObserver.relativeTo(string selector, Object margins)

使用选择器指定一个节点，作为参照区域之一。

.. function:: IntersectionObserver.relativeToViewport(Object margins)

指定页面显示区域作为参照区域之一

.. function:: IntersectionObserver.observe(string targetSelector, IntersectionObserver.observeCallback callback)

指定目标节点并开始监听相交状态变化情况

.. function:: IntersectionObserver.disconnect()

停止监听。回调函数将不再触发
