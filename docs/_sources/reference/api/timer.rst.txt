定时器
===========

.. function:: setTimeout(callback, delay, rest)

  :label: 设定一个定时器。在定时到期以后执行注册的回调函数
  :param function callback: 回调函数
  :param number delay: 延迟的时间，函数的调用会在该延迟之后发生，单位 ms。
  :param any rest: param1, param2, ..., paramN 等附加参数，它们会作为参数传递给回调函数。
  :rtype: number
  :return: 定时器的编号 `timeoutID` 。这个值可以传递给 clearTimeout 来取消该定时。

.. function:: clearTimeout(timeoutID)

  :label: 取消由 setTimeout 设置的定时器。
  :param number timeoutID: 要取消的定时器的 ID

.. function:: setInterval(callback, delay, rest)

  :Label: 设定一个定时器。按照指定的周期（以毫秒计）来执行注册的回调函数
  :param function callback: 回调函数
  :param number delay: 执行回调函数之间的时间间隔，单位 ms。
  :param any rest:  param1, param2, ..., paramN 等附加参数，它们会作为参数传递给回调函数。
  :rtype: number
  :return: 定时器的编号 `intervalID` 。这个值可以传递给 clearInterval 来取消该定时。

.. function:: clearInterval(number intervalID)

   取消由 setInterval 设置的定时器。

   :param number intervalID: 要取消的定时器的 ID
