:wxbpi:`生成运单 <logistics.addOrder>`
=============================================

logistics.addOrder
本接口应在服务器端调用，详细说明参见服务端API。

本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0



调用方式：

一、HTTPS 调用
二、云调用

一、HTTPS 调用
请求地址
POST https://api.weixin.qq.com/cgi-bin/express/business/order/add?access_token=ACCESS_TOKEN
请求参数
属性	类型	默认值	必填	说明
access_token	string		是	接口调用凭证
order_id	string		是	订单ID，须保证全局唯一，不超过512字节
openid	string		是	用户 openid
delivery_id	string		是	快递公司ID，参见getAllDelivery
biz_id	string		是	快递客户编码或者现付编码
custom_remark	string		否	快递备注信息，比如"易碎物品"，不超过1024字节
sender	Object		是	发件人信息
receiver	Object		是	收件人信息
cargo	Object		是	包裹信息，将传递给快递公司
shop	Object		是	商品信息，会展示到物流通知消息中
insured	Object		是	保价信息
service	Object		是	服务类型
sender 的结构

属性	类型	默认值	必填	说明
name	string		是	发件人姓名，不超过64字节
tel	string		否	发件人座机号码，若不填写则必须填写 mobile，不超过32字节
mobile	string		否	发件人手机号码，若不填写则必须填写 tel，不超过32字节
company	string		否	发件人公司名称，不超过64字节
post_code	string		否	发件人邮编，不超过10字节
country	string		否	发件人国家，不超过64字节
province	string		是	发件人省份，比如："广东省"，不超过64字节
city	string		是	发件人市/地区，比如："广州市"，不超过64字节
area	string		是	发件人区/县，比如："海珠区"，不超过64字节
address	string		是	发件人详细地址，比如："XX路XX号XX大厦XX"，不超过512字节
receiver 的结构

属性	类型	默认值	必填	说明
name	string		是	收件人姓名，不超过64字节
tel	string		否	收件人座机号码，若不填写则必须填写 mobile，不超过32字节
mobile	string		否	收件人手机号码，若不填写则必须填写 tel，不超过32字节
company	string		否	收件人公司名，不超过64字节
post_code	string		否	收件人邮编，不超过10字节
country	string		否	收件人所在国家，不超过64字节
province	string		是	收件人省份，比如："广东省"，不超过64字节
city	string		是	收件人地区/市，比如："广州市"，不超过64字节
area	string		是	收件人区/县，比如："天河区"，不超过64字节
address	string		是	收件人详细地址，比如："XX路XX号XX大厦XX"，不超过512字节
cargo 的结构

属性	类型	默认值	必填	说明
count	number		是	包裹数量
weight	number		是	包裹总重量，单位是千克(kg)
space_x	number		是	包裹长度，单位厘米(cm)
space_y	number		是	包裹宽度，单位厘米(cm)
space_z	number		是	包裹高度，单位厘米(cm)
detail_list	Array.<Object>		是	包裹中商品详情列表
cargo.detail_list 的结构

属性	类型	默认值	必填	说明
name	string		是	商品名，不超过128字节
count	number		是	商品数量
shop 的结构

属性	类型	默认值	必填	说明
wxa_path	string		是	商家小程序的路径，建议为订单页面
img_url	string		是	商品缩略图 url
goods_name	string		是	商品名称
goods_count	number		是	商品数量
insured 的结构

属性	类型	默认值	必填	说明
use_insured	number		是	是否保价，0 表示不保价，1 表示保价
insured_value	number		是	保价金额，单位是分，比如: 10000 表示 100 元
service 的结构

属性	类型	默认值	必填	说明
service_type	number		是	服务类型ID，详见已经支持的快递公司基本信息
service_name	string		是	服务名称，详见已经支持的快递公司基本信息
返回值
Object
属性	类型	说明
order_id	string	订单ID，下单成功时返回
waybill_id	string	运单ID，下单成功时返回
waybill_data	Array.<Object>	运单信息，下单成功时返回
errcode	number	微信侧错误码，下单失败时返回
errmsg	string	微信侧错误信息，下单失败时返回
delivery_resultcode	number	快递侧错误码，下单失败时返回
delivery_resultmsg	string	快递侧错误信息，下单失败时返回
waybill_data 的结构

属性	类型	说明
key	string	运单信息 key
value	string	运单信息 value
errcode 的合法值

值	说明	最低版本
-1	系统失败
9300501	快递侧逻辑错误，详细原因需要看 delivery_resultcode
9300503	delivery_id 不存在
9300510	service_type 不存在
9300526	字段长度不正确
请求示例

.. code:: json

  {
    "order_id": "01234567890123456789",
    "openid": "oABC123456",
    "delivery_id": "SF",
    "biz_id": "xyz",
    "custom_remark": "易碎物品",
    "sender": {
      "name": "张三",
      "tel": "020-88888888",
      "mobile": "18666666666",
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
      "tel": "020-77777777",
      "mobile": "18610000000",
      "company": "公司名",
      "post_code": "654321",
      "country": "中国",
      "province": "广东省",
      "city": "广州市",
      "area": "天河区",
      "address": "XX路XX号XX大厦XX栋XX"
    },
    "shop": {
      "wxa_path": "/index/index?from=waybill&id=01234567890123456789",
      "img_url": "https://mmbiz.qpic.cn/mmbiz_png/OiaFLUqewuIDNQnTiaCInIG8ibdosYHhQHPbXJUrqYSNIcBL60vo4LIjlcoNG1QPkeH5GWWEB41Ny895CokeAah8A/640",
      "goods_name": "一千零一夜钻石包&爱马仕铂金包",
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
          "name": "爱马仕铂金包",
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

返回示例
下单成功


.. code:: json

  {
    "order_id": "01234567890123456789",
    "waybill_id": "123456789",
    "waybill_data": [
      {
        "key": "SF_bagAddr",
        "value": "广州"
      },
      {
        "key": "SF_mark",
        "value": "101- 07-03 509"
      }
    ]
  }
下单失败


.. code:: json

  {
    "errcode": 9300501,
    "errmsg": "delivery logic fail",
    "delivery_resultcode": 10002,
    "delivery_resultmsg": "客户密码不正确"
  }

二、云调用
云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。

接口方法
openapi.logistics.addOrder
需在 config.json 中配置 logistics.addOrder API 的权限，详情

请求参数
属性	类型	默认值	必填	说明
orderId	string		是	订单ID，须保证全局唯一，不超过512字节
openid	string		是	用户 openid
deliveryId	string		是	快递公司ID，参见getAllDelivery
bizId	string		是	快递客户编码或者现付编码
customRemark	string		否	快递备注信息，比如"易碎物品"，不超过1024字节
sender	Object		是	发件人信息
receiver	Object		是	收件人信息
cargo	Object		是	包裹信息，将传递给快递公司
shop	Object		是	商品信息，会展示到物流通知消息中
insured	Object		是	保价信息
service	Object		是	服务类型
sender 的结构

属性	类型	默认值	必填	说明
name	string		是	发件人姓名，不超过64字节
tel	string		否	发件人座机号码，若不填写则必须填写 mobile，不超过32字节
mobile	string		否	发件人手机号码，若不填写则必须填写 tel，不超过32字节
company	string		否	发件人公司名称，不超过64字节
postCode	string		否	发件人邮编，不超过10字节
country	string		否	发件人国家，不超过64字节
province	string		是	发件人省份，比如："广东省"，不超过64字节
city	string		是	发件人市/地区，比如："广州市"，不超过64字节
area	string		是	发件人区/县，比如："海珠区"，不超过64字节
address	string		是	发件人详细地址，比如："XX路XX号XX大厦XX"，不超过512字节
receiver 的结构

属性	类型	默认值	必填	说明
name	string		是	收件人姓名，不超过64字节
tel	string		否	收件人座机号码，若不填写则必须填写 mobile，不超过32字节
mobile	string		否	收件人手机号码，若不填写则必须填写 tel，不超过32字节
company	string		否	收件人公司名，不超过64字节
postCode	string		否	收件人邮编，不超过10字节
country	string		否	收件人所在国家，不超过64字节
province	string		是	收件人省份，比如："广东省"，不超过64字节
city	string		是	收件人地区/市，比如："广州市"，不超过64字节
area	string		是	收件人区/县，比如："天河区"，不超过64字节
address	string		是	收件人详细地址，比如："XX路XX号XX大厦XX"，不超过512字节
cargo 的结构

属性	类型	默认值	必填	说明
count	number		是	包裹数量
weight	number		是	包裹总重量，单位是千克(kg)
spaceX	number		是	包裹长度，单位厘米(cm)
spaceY	number		是	包裹宽度，单位厘米(cm)
spaceZ	number		是	包裹高度，单位厘米(cm)
detailList	Array.<Object>		是	包裹中商品详情列表
cargo.detailList 的结构

属性	类型	默认值	必填	说明
name	string		是	商品名，不超过128字节
count	number		是	商品数量
shop 的结构

属性	类型	默认值	必填	说明
wxaPath	string		是	商家小程序的路径，建议为订单页面
imgUrl	string		是	商品缩略图 url
goodsName	string		是	商品名称
goodsCount	number		是	商品数量
insured 的结构

属性	类型	默认值	必填	说明
useInsured	number		是	是否保价，0 表示不保价，1 表示保价
insuredValue	number		是	保价金额，单位是分，比如: 10000 表示 100 元
service 的结构

属性	类型	默认值	必填	说明
serviceType	number		是	服务类型ID，详见已经支持的快递公司基本信息
serviceName	string		是	服务名称，详见已经支持的快递公司基本信息
返回值
Object
属性	类型	说明
orderId	string	订单ID，下单成功时返回
waybillId	string	运单ID，下单成功时返回
waybillData	Array.<Object>	运单信息，下单成功时返回
errCode	number	微信侧错误码，下单失败时返回
errMsg	string	微信侧错误信息，下单失败时返回
deliveryResultcode	number	快递侧错误码，下单失败时返回
deliveryResultmsg	string	快递侧错误信息，下单失败时返回
waybillData 的结构

属性	类型	说明
key	string	运单信息 key
value	string	运单信息 value
errCode 的合法值

值	说明	最低版本
0	成功
异常
Object
抛出的异常

属性	类型	说明
errCode	number	微信侧错误码，下单失败时返回
errMsg	string	微信侧错误信息，下单失败时返回
errCode 的合法值

值	说明	最低版本
-1	系统失败
9300501	快递侧逻辑错误，详细原因需要看 delivery_resultcode
9300503	delivery_id 不存在
9300510	service_type 不存在
9300526	字段长度不正确
请求示例

.. code::

  const cloud = require('wx-server-sdk')
  cloud.init()
  exports.main = async (event, context) => {
    try {
      const result = await cloud.openapi.logistics.addOrder({
        openid: 'oABC123456',
        sender: {
          name: '张三',
          tel: '020-88888888',
          mobile: '18666666666',
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
          tel: '020-77777777',
          mobile: '18610000000',
          company: '公司名',
          country: '中国',
          province: '广东省',
          city: '广州市',
          area: '天河区',
          address: 'XX路XX号XX大厦XX栋XX',
          postCode: '654321'
        },
        shop: {
          wxaPath: '/index/index?from=waybill&id=01234567890123456789',
          imgUrl: 'https://mmbiz.qpic.cn/mmbiz_png/OiaFLUqewuIDNQnTiaCInIG8ibdosYHhQHPbXJUrqYSNIcBL60vo4LIjlcoNG1QPkeH5GWWEB41Ny895CokeAah8A/640',
          goodsName: '一千零一夜钻石包&爱马仕铂金包',
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
              name: '爱马仕铂金包',
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
        orderId: '01234567890123456789',
        deliveryId: 'SF',
        bizId: 'xyz',
        customRemark: '易碎物品'
      })
      console.log(result)
      return result
    } catch (err) {
      console.log(err)
      return err
    }
  }

返回示例
下单成功


.. code:: json

  {
    "orderId": "01234567890123456789",
    "waybillId": "123456789",
    "waybillData": [
      {
        "key": "SF_bagAddr",
        "value": "广州"
      },
      {
        "key": "SF_mark",
        "value": "101- 07-03 509"
      }
    ],
    "errMsg": "openapi.logistics.addOrder:ok"
  }

下单失败


.. code:: json

  {
    "errCode": 9300501,
    "errMsg": "openapi.logistics.addOrder:fail delivery logic fail",
    "deliveryResultcode": 10002,
    "deliveryResultmsg": "客户密码不正确"
  }