��          �               ,  0   -  X   ^     �     �     �  �   �  b   �  u   �  n   Z  w   �  �  A  �  �  h   �       �   %     �  w  �  0   C
  X   t
     �
     �
     �
  �     b   �  u   �  n   p  w   �  �  W  �  �  h   �     (  �   ;     �   :wxbpi:`获取运单数据 <logistics.getOrder>` logistics.getOrder 本接口应在服务器端调用，详细说明参见服务端API。 waybill_data 的结构 一、HTTPS 调用 二、云调用 云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。 属性      类型      说明 key     string  运单信息 key value   string  运单信息 value 属性      类型      说明 key     string  运单信息 key value   string  运单信息 value 请求数据示例 接口方法 openapi.logistics.getOrder 需在 config.json 中配置 logistics.getOrder API 的权限，详情 本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0 请求参数 属性      类型      默认值     必填      说明 access_token    string          是       接口调用凭证 order_id        string          是       订单 ID，需保证全局唯一 openid  string          是       用户 openid delivery_id     string          是       快递公司ID，参见getAllDelivery waybill_id      string          是       运单ID 请求参数 属性      类型      默认值     必填      说明 orderId string          是       订单 ID，需保证全局唯一 openid  string          是       用户 openid deliveryId      string          是       快递公司ID，参见getAllDelivery waybillId       string          是       运单ID 返回值 Object 属性      类型      说明 printHtml       string  运单 html 的 BASE64 结果 waybillData     Array.<Object>  运单信息 waybillData 的结构 请求地址 POST https://api.weixin.qq.com/cgi-bin/express/business/order/get?access_token=ACCESS_TOKEN 请求数据示例 返回值 Object 属性      类型      说明 print_html      string  运单 html 的 BASE64 结果 waybill_data    Array.<Object>  运单信息 返回数据示例 Project-Id-Version: wxadev 
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
 :wxbpi:`获取运单数据 <logistics.getOrder>` logistics.getOrder 本接口应在服务器端调用，详细说明参见服务端API。 waybill_data 的结构 一、HTTPS 调用 二、云调用 云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。 属性      类型      说明 key     string  运单信息 key value   string  运单信息 value 属性      类型      说明 key     string  运单信息 key value   string  运单信息 value 请求数据示例 接口方法 openapi.logistics.getOrder 需在 config.json 中配置 logistics.getOrder API 的权限，详情 本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0 请求参数 属性      类型      默认值     必填      说明 access_token    string          是       接口调用凭证 order_id        string          是       订单 ID，需保证全局唯一 openid  string          是       用户 openid delivery_id     string          是       快递公司ID，参见getAllDelivery waybill_id      string          是       运单ID 请求参数 属性      类型      默认值     必填      说明 orderId string          是       订单 ID，需保证全局唯一 openid  string          是       用户 openid deliveryId      string          是       快递公司ID，参见getAllDelivery waybillId       string          是       运单ID 返回值 Object 属性      类型      说明 printHtml       string  运单 html 的 BASE64 结果 waybillData     Array.<Object>  运单信息 waybillData 的结构 请求地址 POST https://api.weixin.qq.com/cgi-bin/express/business/order/get?access_token=ACCESS_TOKEN 请求数据示例 返回值 Object 属性      类型      说明 print_html      string  运单 html 的 BASE64 结果 waybill_data    Array.<Object>  运单信息 返回数据示例 