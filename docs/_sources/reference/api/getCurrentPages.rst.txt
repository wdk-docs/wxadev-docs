:wxref:`获取当前页面栈(getCurrentPages) <api/getCurrentPages>`
================================================================

.. function:: getCurrentPages()

  获取当前页面栈。数组中第一个元素为首页，最后一个元素为当前页面。

  :return: PageObject[]

  .. attention::

    - 不要尝试修改页面栈，会导致路由以及页面状态错误。
    - 不要在 :func:`App.onLaunch` 的时候调用 :func:`getCurrentPages` ，此时 page 还没有生成。
