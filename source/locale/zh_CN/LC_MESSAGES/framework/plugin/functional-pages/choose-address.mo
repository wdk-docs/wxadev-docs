��          �               <  H   =  P   �  #   �     �      �          /  
   G  R   R     �     �     �     �  �  �     �  �   �  �   T  w    H   �  P   �  #        B      D     e     v  
   �  R   �     �     �     �     	  �  	     �
  �   	  �   �   <!--plugin/components/hello-component.wxml--> <functional-page-navigator </functional-page-navigator> // plugin/components/hello-component.js Component({ <button>选择收货地址</button> > bindsuccess返回参数说明： console.log(res) console.log(res.detail) methods: { name="chooseAddress" version="develop" bind:success="onSuccess" bind:fail="onFail" onSuccess(res) { } }) }, onFail(res) { 属性      类型      说明      最低版本 userName        string  收货人姓名 postalCode      string  邮编 provinceName    string  国标收货地址第一级地址 cityName        string  国标收货地址第一级地址 countyName      string  国标收货地址第一级地址 detailInfo      string  详细收货地址信息 nationalCode    string  收货地址国家码 telNumber       string  收货人手机号码 errMsg  string  错误信息 代码示例： 收货地址功能页 收货地址功能页用于展示用户的收货地址列表，用户可以选择其中的收货地址。自基础库版本 2.4.0 开始支持。 调用参数 用户信息功能页使用 <functional-page-navigator> 进行跳转时，对应的参数 name 应为固定值 chooseAddress ，返回参数与 wx.chooseAddress 相同。 Project-Id-Version: wxadev 
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
 <!--plugin/components/hello-component.wxml--> <functional-page-navigator </functional-page-navigator> // plugin/components/hello-component.js Component({ <button>选择收货地址</button> > bindsuccess返回参数说明： console.log(res) console.log(res.detail) methods: { name="chooseAddress" version="develop" bind:success="onSuccess" bind:fail="onFail" onSuccess(res) { } }) }, onFail(res) { 属性      类型      说明      最低版本 userName        string  收货人姓名 postalCode      string  邮编 provinceName    string  国标收货地址第一级地址 cityName        string  国标收货地址第一级地址 countyName      string  国标收货地址第一级地址 detailInfo      string  详细收货地址信息 nationalCode    string  收货地址国家码 telNumber       string  收货人手机号码 errMsg  string  错误信息 代码示例： 收货地址功能页 收货地址功能页用于展示用户的收货地址列表，用户可以选择其中的收货地址。自基础库版本 2.4.0 开始支持。 调用参数 用户信息功能页使用 <functional-page-navigator> 进行跳转时，对应的参数 name 应为固定值 chooseAddress ，返回参数与 wx.chooseAddress 相同。 