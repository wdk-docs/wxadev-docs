支付功能页
===========

支付功能页用于帮助插件完成支付，相当于 wx.requestPayment 的功能。

需要注意的是：插件使用支付功能，需要进行额外的权限申请，申请位置位于管理后台的“小程序插件 -> 基本设置 -> 支付能力”设置项中。另外，无论是否通过申请，主体为个人小程序在使用插件时，都无法正常使用插件里的支付功能。

调用参数
支付功能页使用 <functional-page-navigator> 进行跳转时，对应的参数 name 应为固定值 requestPayment，其他参数如下：

args参数说明：

参数名	类型	必填	说明
fee	Number	是	需要显示在页面中的金额，单位为分
paymentArgs	Object	否	任意数据，传递给功能页中的响应函数
回调结果：

回调类型	errMsg	说明
success	requestPayment:ok	调用支付成功
fail	requestPayment:fail cancel	用户取消支付
fail	requestPayment:fail (detail message)	调用支付失败，其中 detail message 为后台返回的详细失败原因
代码示例：

<!-- plugin/components/pay.wxml -->
<!-- 上线时，version 应改为 "release"，并确保插件所有者小程序已经发布 -->
<functional-page-navigator
  version="develop"
  name="requestPayment"
  args="{{ args }}"
  bind:success="paymentSuccess"
  bind:fail="paymentFailed"
>
  <button class="payment-button">支付 0.01 元</button>
</functional-page-navigator>
// plugin/components/pay.js
Component({
  data: {
    args: {
      fee: 1, // 支付金额，单位为分
      paymentArgs: 'A' // 将传递到功能页函数的自定义参数
    }
  },
  methods: {
    // 支付成功的回调接口
    paymentSuccess(e) {
      console.log(e)
    },
    // 支付失败的回调接口
    paymentFailed(e) {
      console.log(e)
    }
  }
})
用户点击该 navigator 后，将跳转到如下的支付功能页：

支付功能页

配置功能页函数
支付功能页需要插件开发者在插件所有者小程序中提供一个函数来响应插件中的支付调用。即，在插件中跳转到支付功能页时，这个函数就会在合适的时机被调用，来帮助完成支付。如果不提供功能页函数，功能页调用将通过 fail 事件返回失败。

支付功能页函数应以导出函数的形式提供在插件所有者小程序的根目录下的 functional-pages/request-payment.js 文件中，名为 beforeRequestPayment。该函数应接收两个参数：

参数名	类型	说明
paymentArgs	Object	即通过 <functional-page-navigator> 的 arg 参数中的 paymentArgs 字段传递到功能页的自定义数据
callback	Function	回调函数，调用该函数后，小程序将发起支付（类似于 wx.requestPayment）
callback函数的参数：

参数名	类型	说明
error	Object	失败信息，若无失败，应返回 null
requestPaymentArgs	Object	支付参数，用于调用 wx.requestPayment，参数如下
reqeustPaymentArgs 的参数：

用于发起支付，和 wx.requestPayment 的参数相同，但没有回调函数（success, fail, complete）：

参数	类型	必填	说明
timeStamp	String	是	时间戳从1970年1月1日00:00:00至今的秒数,即当前的时间
nonceStr	String	是	随机字符串，长度为32个字符以下。
package	String	是	统一下单接口返回的 prepay_id 参数值，提交格式如：prepay_id=***
signType	String	是	签名算法，暂支持 MD5
paySign	String	是	签名,具体签名方案参见小程序支付接口文档;
了解更多信息，请查看微信支付接口文档

功能页函数代码示例：

// functional-pages/request-payment.js
exports.beforeRequestPayment = function (paymentArgs, callback) {
  // 注意：
  // 功能页函数（这个函数）不应 require 其他非 functional-pages 目录中的文件，
  // 其他非 functional-pages 目录中的文件也不应 require 这个目录中的文件，
  // 这样的 require 调用在未来将不被支持。
  //
  // 同在 functional-pages 中的文件可以 require
  const getOpenIdURL = require('./URL').getOpenIdURL
  const paymentURL = require('./URL').paymentURL

  // 自定义的参数，此处应为从插件传递过来的 'A'
  const customArgument = paymentArgs.customArgument

  // 第一步：调用 wx.login 方法获取 code，然后在服务端调用微信接口使用 code 换取下单用户的 openId
  // 具体文档参考 https://mp.weixin.qq.com/debug/wxadoc/dev/api/api-login.html?t=20161230#wxloginobject
  wx.login({
    success(data) {
      wx.request({
        url: getOpenIdURL,
        data: {code: data.code},
        success(res) {
          // 拉取用户 openid 成功
          // 第二步：在服务端调用支付统一下单，返回支付参数。这里的开发和普通的 wx.requestPayment 相同
          // 文档可以参考 https://pay.weixin.qq.com/wiki/doc/api/wxa/wxa_api.php?chapter=7_4&index=3
          wx.request({
            url: paymentURL,
            data: {openid: res.data.openid},
            method: 'POST',
            success(res) {
              console.log('unified order success, response is:', res)
              const payargs = res.data.payargs
              // 第三步：调用回调函数 callback 进行支付
              // 在 callback 中需要返回两个参数： err 和 requestPaymentArgs：
              // err 应为 null （或者一些失败信息）；
              // requestPaymentArgs 将被用于调用 wx.requestPayment，除了 success/fail/complete 不被支持外，
              // 应与 wx.requestPayment 参数相同。
              const error = null
              const requestPaymentArgs = {
                timeStamp: payargs.timeStamp,
                nonceStr: payargs.nonceStr,
                package: payargs.package,
                signType: payargs.signType,
                paySign: payargs.paySign,
              }
              callback(error, requestPaymentArgs)
            }
          })
        },
        fail(res) {
          console.log('拉取用户openid失败，将无法正常使用开放接口等服务', res)
          // callback 第一个参数为错误信息，返回错误信息
          callback(res)
        }
      })
    },
    fail(err) {
      console.log('wx.login 接口调用失败，将无法正常使用开放接口等服务', err)
      // callback 第一个参数为错误信息，返回错误信息
      callback(err)
    }
  })
}
注意：功能页函数不应 require 其他非 functional-pages 目录中的文件，其他非 functional-pages 目录中的文件也不应 require 这个目录中的文件。这样的 require 调用在未来将不被支持。

这个目录和文件应当被放置在插件所有者小程序代码中（而非插件代码中），它是插件所有者小程序的一部分（而非插件的一部分）。 如果需要新增或更改这段代码，需要发布插件所有者小程序，才能在正式版中生效；需要重新预览插件所有者小程序，才能在开发版中生效。