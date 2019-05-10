��          �               l     m  �   �  2   1  Z   d     �     �  "   �  �  �  �   �  �   v  �     O   �  �  �  �  �	  j   �  r     w   �    �          ,  w  ?     �  �   �  2   {  Z   �     	       "   "  �  E  �      �   �  �   N  O   �  �  =  �    j   �  r   \  w   �    G     f     v   "errcode": 0, "errmsg": "ok" "token": "TOKEN", "waybill_id": "12345678901234567890", "action_time": 1533052800, "action_type": 300002, "action_msg": "丽影邓丽君【18666666666】正在派件" :wxbpi:`更新运单轨迹 <logistics.updatePath>` logistics.updatePath 本接口应在服务器端调用，详细说明参见服务端API。 } } 返回数据示例 { 一、HTTPS 调用 二、云调用 一、HTTPS 调用 请求地址 POST https://api.weixin.qq.com/cgi-bin/express/delivery/path/update?access_token=ACCESS_TOKEN 请求参数 属性      类型      默认值     必填      说明 access_token    string          是       接口调用凭证 token   string          是       商户侧下单事件中推送的 Token 字段 waybill_id      string          是       运单 ID action_time     number          是       轨迹变化 Unix 时间戳 action_type     number          是       轨迹变化类型 action_msg      string          是       轨迹变化具体信息说明，展示在快递轨迹详情页中。若有手机号码，则直接写11位手机号码。使用UTF-8编码。 action_type 的合法值 二、云调用 云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。 值       说明      最低版本 -1      系统失败 40199   运单 ID 错误，未查到运单 9300507 Token 不正确 请求数据示例 值       说明      最低版本 0       成功 -1      系统失败 40199   运单 ID 错误，未查到运单 9300507 Token 不正确 请求数据示例 { 值       说明      最低版本 0       成功 异常 Object 抛出的异常 值       说明      最低版本 100001  揽件阶段-揽件成功 100002  揽件阶段-揽件失败 100003  揽件阶段-分配业务员 200001  运输阶段-更新运输轨迹 300002  派送阶段-开始派送 300003  派送阶段-签收成功 300004  派送阶段-签收失败 400001  异常阶段-订单取消 400002  异常阶段-订单滞留 返回值 Object 属性      类型      说明 errCode number  错误码 errMsg  string  错误信息 errCode 的合法值 值       说明      最低版本 100001  揽件阶段-揽件成功 100002  揽件阶段-揽件失败 100003  揽件阶段-分配业务员 200001  运输阶段-更新运输轨迹 300002  派送阶段-开始派送 300003  派送阶段-签收成功 300004  派送阶段-签收失败 400001  异常阶段-订单取消 400002  异常阶段-订单滞留 返回值 Object 属性      类型      说明 errcode number  错误码 errmsg  string  错误信息 errcode 的合法值 属性      类型      说明 errCode number  错误码 errMsg  string  错误信息 errCode 的合法值 接口方法 openapi.logistics.updatePath 需在 config.json 中配置 logistics.updatePath API 的权限，详情 本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0 请求参数 属性      类型      默认值     必填      说明 token   string          是       商户侧下单事件中推送的 Token 字段 waybillId       string          是       运单 ID actionTime      number          是       轨迹变化 Unix 时间戳 actionType      number          是       轨迹变化类型 actionMsg       string          是       轨迹变化具体信息说明，展示在快递轨迹详情页中。若有手机号码，则直接写11位手机号码。使用UTF-8编码。 actionType 的合法值 调用方式： 返回数据示例 Project-Id-Version: wxadev 
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
 "errcode": 0, "errmsg": "ok" "token": "TOKEN", "waybill_id": "12345678901234567890", "action_time": 1533052800, "action_type": 300002, "action_msg": "丽影邓丽君【18666666666】正在派件" :wxbpi:`更新运单轨迹 <logistics.updatePath>` logistics.updatePath 本接口应在服务器端调用，详细说明参见服务端API。 } } 返回数据示例 { 一、HTTPS 调用 二、云调用 一、HTTPS 调用 请求地址 POST https://api.weixin.qq.com/cgi-bin/express/delivery/path/update?access_token=ACCESS_TOKEN 请求参数 属性      类型      默认值     必填      说明 access_token    string          是       接口调用凭证 token   string          是       商户侧下单事件中推送的 Token 字段 waybill_id      string          是       运单 ID action_time     number          是       轨迹变化 Unix 时间戳 action_type     number          是       轨迹变化类型 action_msg      string          是       轨迹变化具体信息说明，展示在快递轨迹详情页中。若有手机号码，则直接写11位手机号码。使用UTF-8编码。 action_type 的合法值 二、云调用 云调用是小程序·云开发提供的在云函数中调用微信开放接口的能力，需要在云函数中通过 wx-server-sdk 使用。 值       说明      最低版本 -1      系统失败 40199   运单 ID 错误，未查到运单 9300507 Token 不正确 请求数据示例 值       说明      最低版本 0       成功 -1      系统失败 40199   运单 ID 错误，未查到运单 9300507 Token 不正确 请求数据示例 { 值       说明      最低版本 0       成功 异常 Object 抛出的异常 值       说明      最低版本 100001  揽件阶段-揽件成功 100002  揽件阶段-揽件失败 100003  揽件阶段-分配业务员 200001  运输阶段-更新运输轨迹 300002  派送阶段-开始派送 300003  派送阶段-签收成功 300004  派送阶段-签收失败 400001  异常阶段-订单取消 400002  异常阶段-订单滞留 返回值 Object 属性      类型      说明 errCode number  错误码 errMsg  string  错误信息 errCode 的合法值 值       说明      最低版本 100001  揽件阶段-揽件成功 100002  揽件阶段-揽件失败 100003  揽件阶段-分配业务员 200001  运输阶段-更新运输轨迹 300002  派送阶段-开始派送 300003  派送阶段-签收成功 300004  派送阶段-签收失败 400001  异常阶段-订单取消 400002  异常阶段-订单滞留 返回值 Object 属性      类型      说明 errcode number  错误码 errmsg  string  错误信息 errcode 的合法值 属性      类型      说明 errCode number  错误码 errMsg  string  错误信息 errCode 的合法值 接口方法 openapi.logistics.updatePath 需在 config.json 中配置 logistics.updatePath API 的权限，详情 本接口支持云调用。需开发者工具版本 >= 1.02.1904090（最新稳定版下载），wx-server-sdk >= 0.4.0 请求参数 属性      类型      默认值     必填      说明 token   string          是       商户侧下单事件中推送的 Token 字段 waybillId       string          是       运单 ID actionTime      number          是       轨迹变化 Unix 时间戳 actionType      number          是       轨迹变化类型 actionMsg       string          是       轨迹变化具体信息说明，展示在快递轨迹详情页中。若有手机号码，则直接写11位手机号码。使用UTF-8编码。 actionType 的合法值 调用方式： 返回数据示例 