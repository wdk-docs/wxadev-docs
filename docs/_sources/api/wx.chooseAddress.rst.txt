:wxapi:`wx.chooseAddress`
============================================

.. function:: wx.chooseAddress(Object object)

   .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility` 。

   调用前需要 用户授权 :data:`scope.address`

   获取用户收货地址。调起用户编辑收货地址原生界面，并在编辑完成后返回用户选择的地址。

   :param function success({...arg}): 接口调用成功的回调函数

     - **userName**	string	收货人姓名
     - **postalCode**	string	邮编
     - **provinceName**	string	国标收货地址第一级地址
     - **cityName**	string	国标收货地址第一级地址
     - **countyName**	string	国标收货地址第一级地址
     - **detailInfo**	string	详细收货地址信息
     - **nationalCode**	string	收货地址国家码
     - **telNumber**	string	收货人手机号码
     - **errMsg**	string	错误信息

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例代码: 在开发者工具中预览效果

     .. code::

       wx.chooseAddress({
         success(res) {
           console.log(res.userName)
           console.log(res.postalCode)
           console.log(res.provinceName)
           console.log(res.cityName)
           console.log(res.countyName)
           console.log(res.detailInfo)
           console.log(res.nationalCode)
           console.log(res.telNumber)
         }
       })
