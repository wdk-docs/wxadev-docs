客服消息
===========

在页面使用客服消息
需要将 <button> 组件 open-type 的值设置为 contact，当用户点击后就会进入客服会话，如果用户在会话中点击了小程序消息，则会返回到小程序，开发者可以通过 bindcontact 事件回调获取到用户所点消息的页面路径 path 和对应的参数 query。

代码示例
<button open-type="contact" bindcontact="handleContact"></button>
Page({
  handleContact(e) {
    console.log(e.path)
    console.log(e.query)
  }
})
返回参数说明
参数	类型	说明
path	String	小程序消息指定的路径
query	Object	小程序消息指定的查询参数
后台接入消息服务
用户向小程序客服发送消息、或者进入会话等情况时，开发者填写的服务器配置URL将得到微信服务器推送过来的消息和事件，开发者可以依据自身业务逻辑进行响应。接入和使用方式请参考消息推送。