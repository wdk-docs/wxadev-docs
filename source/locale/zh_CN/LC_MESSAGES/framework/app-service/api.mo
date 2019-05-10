��          �               �      �        d     �   z       u      �  h   �  �   �  �  �  �   �  �   n  2   �  w  .	     �
     �
  d   �
  �   #     �  u  �    4  h   7  �   �  �  a  �   ?  �     2   �   API Object 参数说明 success，fail，complete 函数调用时会传入一个 Object 类型参数，包含以下字段： 事件监听 API 我们约定，以 on 开头的 API 用来监听某个事件是否触发，如：wx.onSocketOpen，wx.onCompassChange 等。 代码示例 参数名     类型      必填      说明 success function        否       接口调用成功的回调函数 fail    function        否       接口调用失败的回调函数 complete        function        否       接口调用结束的回调函数（调用成功、失败都会执行） 其他      Any     -       接口定义的其他参数 回调函数的参数 同步 API 我们约定，以 Sync 结尾的 API 都是同步 API， 如 wx.setStorageSync，wx.getSystemInfoSync 等。此外，也有一些其他的同步 API，如 wx.createWorker，wx.getBackgroundAudioManager 等，详情参见 API 文档中的说明。 同步 API 的执行结果可以通过函数返回值直接获取，如果执行出错会抛出异常。 小程序开发框架提供丰富的微信原生 API，可以方便的调起微信提供的能力，如获取用户信息，本地存储，支付功能等。详细介绍请参考 API 文档。 属性      类型      说明 errMsg  string  错误信息，如果调用成功返回 ${apiName}:ok errCode number  错误码，仅部分 API 支持，具体含义请参考对应 API 文档，成功时为 0。 其他      Any     接口返回的其他数据 异步 API 的执行结果需要通过 Object 类型的参数中传入的对应回调函数获取。 部分异步 API 也会有返回值，可以用来实现更丰富的功能，如 wx.request，wx.connectSocket 等。 异步 API 大多数 API 都是异步 API，如 wx.request，wx.login 等。这类 API 接口通常都接受一个 Object 类型的参数，这个参数都支持按需指定以下字段来接收接口调用结果： 这类 API 接受一个回调函数作为参数，当事件触发时会调用这个回调函数，并将相关数据以参数形式传入。 通常，在小程序 API 有以下几种类型： Project-Id-Version: wxadev 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-09 22:55+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 API Object 参数说明 success，fail，complete 函数调用时会传入一个 Object 类型参数，包含以下字段： 事件监听 API 我们约定，以 on 开头的 API 用来监听某个事件是否触发，如：wx.onSocketOpen，wx.onCompassChange 等。 代码示例 参数名     类型      必填      说明 success function        否       接口调用成功的回调函数 fail    function        否       接口调用失败的回调函数 complete        function        否       接口调用结束的回调函数（调用成功、失败都会执行） 其他      Any     -       接口定义的其他参数 回调函数的参数 同步 API 我们约定，以 Sync 结尾的 API 都是同步 API， 如 wx.setStorageSync，wx.getSystemInfoSync 等。此外，也有一些其他的同步 API，如 wx.createWorker，wx.getBackgroundAudioManager 等，详情参见 API 文档中的说明。 同步 API 的执行结果可以通过函数返回值直接获取，如果执行出错会抛出异常。 小程序开发框架提供丰富的微信原生 API，可以方便的调起微信提供的能力，如获取用户信息，本地存储，支付功能等。详细介绍请参考 API 文档。 属性      类型      说明 errMsg  string  错误信息，如果调用成功返回 ${apiName}:ok errCode number  错误码，仅部分 API 支持，具体含义请参考对应 API 文档，成功时为 0。 其他      Any     接口返回的其他数据 异步 API 的执行结果需要通过 Object 类型的参数中传入的对应回调函数获取。 部分异步 API 也会有返回值，可以用来实现更丰富的功能，如 wx.request，wx.connectSocket 等。 异步 API 大多数 API 都是异步 API，如 wx.request，wx.login 等。这类 API 接口通常都接受一个 Object 类型的参数，这个参数都支持按需指定以下字段来接收接口调用结果： 这类 API 接受一个回调函数作为参数，当事件触发时会调用这个回调函数，并将相关数据以参数形式传入。 通常，在小程序 API 有以下几种类型： 