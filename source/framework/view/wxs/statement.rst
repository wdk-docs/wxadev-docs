.. _wxs-statment:

:wxfrwk:`语句 <view/wxs/05statement>`
========================================

如果语句
------------------------

在WXS中，可以使用以下格式的if语句：

- ``if (expression) statement``：当expression为truthy时，执行statement。
- ``if (expression) statement1 else statement2``：当expression为truthy时，执行statement1。否则，执行statement2
- ``if ... else if ... else statementN`` 通过该句型，可以在statement1〜statementN之间选其中一个执行。

示例语法：

.. code:: js

  // if ...

  if (表达式) 语句;

  if (表达式)
    语句;

  if (表达式) {
    代码块;
  }


  // if ... else

  if (表达式) 语句;
  else 语句;

  if (表达式)
    语句;
  else
    语句;

  if (表达式) {
    代码块;
  } else {
    代码块;
  }

  // if ... else if ... else ...

  if (表达式) {
    代码块;
  } else if (表达式) {
    代码块;
  } else if (表达式) {
    代码块;
  } else {
    代码块;
  }

切换语句
------------------------

示例语法：

.. code:: js

  switch (表达式) {
    case 变量:
      语句;
    case 数字:
      语句;
      break;
    case 字符串:
      语句;
    default:
      语句;
  }

- ``default`` 分支可以省略不写。
- ``case`` 关键词后面只能使用变量：数字，字符串， 。

示例代码：

.. code:: js

  var exp = 10;

  switch ( exp ) {
  case "10":
    console.log("string 10");
    break;
  case 10:
    console.log("number 10");
    break;
  case exp:
    console.log("var exp");
    break;
  default:
    console.log("default");
  }

输出::

  number 10

用语句
------------------------

示例语法：

.. code:: js

  for (语句; 语句; 语句)
    语句;

  for (语句; 语句; 语句) {
    代码块;
  }

- 支持使用break，continue关键词。

示例代码：

.. code:: js

  for (var i = 0; i < 3; ++i) {
    console.log(i);
    if( i >= 1) break;
  }

输出::

  0
  1

语句
--------------

示例语法：

.. code:: js

  while (表达式)
    语句;

  while (表达式){
    代码块;
  }

  do {
    代码块;
  } while (表达式)

- 当表达式为真时，循环执行语句或代码块。
- 支持使用break，continue关键词。
