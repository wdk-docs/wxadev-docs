:wxbpi:`预览面单模板 <logistics.previewTemplate>`
============================================================

logistics.previewTemplate
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0

用于调试面单模板使用。

一、HTTPS 调用
----------------

接口地址请求地址 :term:`api`

.. http:post:: express/delivery/template/preview?access_token=ACCESS_TOKEN

请求参数
属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证
waybill_id	string		是	运单 ID
waybill_template	string		是	面单 HTML 模板内容（需经 Base64 编码）
waybill_data	string		是	面单数据。详情参考下单事件返回值中的 WaybillData
custom	Object		是	商户下单数据，格式是商户侧下单 API 中的请求体
返回值
Object
属性	类型	说明
waybill_id	string	运单 ID
rendered_waybill_template	string	渲染后的面单 HTML 文件（已经过 Base64 编码）
errcode	number	错误码
errmsg	string	错误信息
errcode 的合法值

值	说明	最低版本
0	成功
-1	其他错误
40199	运单 ID 错误，未查到运单
9300507	Token 不正确
9300502	预览模板中出现该错误，一般是waybill_data数据错误
9300512	模板格式错误，渲染失败
请求数据示例

.. code:: json

  {
    "waybill_id": "1234567890123",
    "waybill_data": "##ZTO_mark##11-22-33##ZTO_bagAddr##广州##",
    "waybill_template": "PGh0bWw+dGVzdDwvaHRtbD4=",
    "custom": {
      "order_id": "012345678901234567890123456789",
      "openid": "oABC123456",
      "delivery_id": "ZTO",
      "biz_id": "xyz",
      "custom_remark": "易碎物品",
      "sender": {
        "name": "张三",
        "tel": "18666666666",
        "mobile": "020-88888888",
        "company": "公司名",
        "post_code": "123456",
        "country": "中国",
        "province": "广东省",
        "city": "广州市",
        "area": "海珠区",
        "address": "XX路XX号XX大厦XX栋XX"
      },
      "receiver": {
        "name": "王小蒙",
        "tel": "18610000000",
        "mobile": "020-77777777",
        "company": "公司名",
        "post_code": "654321",
        "country": "中国",
        "province": "广东省",
        "city": "广州市",
        "area": "天河区",
        "address": "XX路XX号XX大厦XX栋XX"
      },
      "shop": {
        "wxa_path": "/index/index?from=waybill",
        "img_url": "https://mmbiz.qpic.cn/mmbiz_png/KfrZwACMrmwbPGicysN6kibW0ibXwzmA3mtTwgSsdw4Uicabduu2pfbfwdKicQ8n0v91kRAUX6SDESQypl5tlRwHUPA/640",
        "goods_name": "一千零一夜钻石包&爱马仕柏金钻石包",
        "goods_count": 2
      },
      "cargo": {
        "count": 2,
        "weight": 5.5,
        "space_x": 30.5,
        "space_y": 20,
        "space_z": 20,
        "detail_list": [
          {
            "name": "一千零一夜钻石包",
            "count": 1
          },
          {
            "name": "爱马仕柏金钻石包",
            "count": 1
          }
        ]
      },
      "insured": {
        "use_insured": 1,
        "insured_value": 10000
      },
      "service": {
        "service_type": 0,
        "service_name": "标准快递"
      }
    }
  }
返回数据示例

.. code:: json

  {
    "waybill_id": "1234567890123",
    "rendered_waybill_template": "PGh0bWw+dGVzdDwvaHRtbD4="
  }

模板渲染语法

所有渲染语法由##开始，可参考示例。

##VAR(key) 用参数key对应的值填充。支持的参数如下表格所示
key	value
sys.waybillid	运单 ID
sys.wxaappid	商户小程序 APPID
waybilldata.*	下单事件返回中的WaybillData，快递侧自定义的数据
custom.*	是商户侧下单 API 中传入的字段
custom.order_id	唯一标识订单的 ID，由商户传入
custom.custom_remark	快递备注，会打印到面单的自定义区，比如"易碎物品"
custom.sender.name	发件人名字
custom.sender.tel	发件人座机号码
custom.sender.mobile	发件人手机号码
custom.sender.company	发件人公司名
custom.sender.post_code	发件人邮编
custom.sender.country	发件人所在国家
custom.sender.province	发件人省份
custom.sender.city	发件人地区/市
custom.sender.area	发件人区/县
custom.sender.address	发件人详细地址
custom.receiver.name	收件人名字
custom.receiver.tel	收件人座机号码
custom.receiver.mobile	收件人手机号码
custom.receiver.company	收件人公司名
custom.receiver.post_code	收件人邮编
custom.receiver.country	收件人所在国家
custom.receiver.province	收件人省份
custom.receiver.city	收件人地区/市
custom.receiver.area	收件人区/县
custom.receiver.address	收件人详细地址
custom.cargo.count	包裹数量
custom.cargo.weight	包裹总重量，单位是千克(kg)
custom.cargo.space_x	包裹长度，单位是厘米(cm)
custom.cargo.space_y	包裹宽度，单位是厘米(cm)
custom.cargo.space_z	包裹高度，单位是厘米(cm)
custom.shop.goods_name	商品名称
custom.shop.goods_count	商品数量
custom.insured.use_insured	是否使用保价
custom.insured.insured_value	报价金额，单位是分
custom.service.service_type	服务类型 ID
custom.service.service_name	服务名称
##TIME(DATE) 用日期填充当前位置，格式为%Y/%m/%d，比如2018/11/22。
##TIME(TIME) 用时间填充当前位置，格式为%H:%M:%S，比如17:54:06。
##TIME(FULL) 用日期时间填充当前位置，格式为%Y/%m/%d %H:%M:%S，比如2018/11/22 17:54:06。
##STRBLOAT(VAR(sys.waybillid)) 获取运单 ID，然后在每个字符间填充空格。
##CODE128(VAR(sys.waybillid)) 获取运单 ID，然后转换成CODE128条码，图片为base64编码。
##QRCODE(VAR(sys.waybillid)) 获取运单 ID，然后转换为二维码，图片为base64编码。
##WXASUNCODE(VAR(sys.wxaappid)) 获取商户的小程序码，图片为base64编码。

举例，如果想在面单上打印一个集包地信息的条形码，可以在面单中增加：

.. code:: html

  <img
    src="data:image/jpeg;base64, ##CODE128(VAR(waybilldata.ZTO_bagAddr))"
    class="block_5__barCode"
  />

二、云调用
--------------

云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法

openapi.logistics.previewTemplate

需在 config.json 中配置 logistics.previewTemplate API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
waybillId	string		是	运单 ID
waybillTemplate	string		是	面单 HTML 模板内容（需经 Base64 编码）
waybillData	string		是	面单数据。详情参考下单事件返回值中的 WaybillData
custom	Object		是	商户下单数据，格式是商户侧下单 API 中的请求体

返回值
Object
属性	类型	说明
waybillId	string	运单 ID
renderedWaybillTemplate	string	渲染后的面单 HTML 文件（已经过 Base64 编码）
errCode	number	错误码
errMsg	string	错误信息

errCode 的合法值

值	说明	最低版本
0	成功

异常
Object
抛出的异常

属性	类型	说明
errCode	number	错误码
errMsg	string	错误信息

errCode 的合法值

值	说明	最低版本
-1	其他错误
40199	运单 ID 错误，未查到运单
9300507	Token 不正确
9300502	预览模板中出现该错误，一般是waybill_data数据错误
9300512	模板格式错误，渲染失败

请求数据示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.previewTemplate({
        custom: {
          openid: 'oABC123456',
          sender: {
            name: '张三',
            tel: '18666666666',
            mobile: '020-88888888',
            company: '公司名',
            country: '中国',
            province: '广东省',
            city: '广州市',
            area: '海珠区',
            address: 'XX路XX号XX大厦XX栋XX',
            postCode: '123456'
          },
          receiver: {
            name: '王小蒙',
            tel: '18610000000',
            mobile: '020-77777777',
            company: '公司名',
            country: '中国',
            province: '广东省',
            city: '广州市',
            area: '天河区',
            address: 'XX路XX号XX大厦XX栋XX',
            postCode: '654321'
          },
          shop: {
            wxaPath: '/index/index?from=waybill',
            imgUrl: 'https://mmbiz.qpic.cn/mmbiz_png/KfrZwACMrmwbPGicysN6kibW0ibXwzmA3mtTwgSsdw4Uicabduu2pfbfwdKicQ8n0v91kRAUX6SDESQypl5tlRwHUPA/640',
            goodsName: '一千零一夜钻石包&爱马仕柏金钻石包',
            goodsCount: 2
          },
          cargo: {
            count: 2,
            weight: 5.5,
            spaceX: 30.5,
            spaceY: 20,
            spaceZ: 20,
            detailList: [
              {
                name: '一千零一夜钻石包',
                count: 1
              },
              {
                name: '爱马仕柏金钻石包',
                count: 1
              }
            ]
          },
          insured: {
            useInsured: 1,
            insuredValue: 10000
          },
          service: {
            serviceType: 0,
            serviceName: '标准快递'
          },
          orderId: '012345678901234567890123456789',
          deliveryId: 'ZTO',
          bizId: 'xyz',
          customRemark: '易碎物品'
        },
        waybillId: '1234567890123',
        waybillData: '##ZTO_mark##11-22-33##ZTO_bagAddr##广州##',
        waybillTemplate: 'PGh0bWw+dGVzdDwvaHRtbD4='
      })
      console.log(result)
      return result
    } catch (err) {
      console.log(err)
      return err
    }
  }
返回数据示例

.. code:: json

  {
    "waybillId": "1234567890123",
    "renderedWaybillTemplate": "PGh0bWw+dGVzdDwvaHRtbD4=",
    "errMsg": "openapi.logistics.previewTemplate:ok"
  }
