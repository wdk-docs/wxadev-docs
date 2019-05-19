:wxapi:`wx.getWeRunData`
=================================

.. function:: wx.getWeRunData(Object object)


   .. versionadded:: 1.2.0 低版本需做 :ref:`compatibility` 。

调用前需要 用户授权 scope.werun

获取用户过去三十天微信运动步数。需要先调用 wx.login 接口。步数信息会在用户主动进入小程序时更新。

参数
Object object
属性	类型	默认值	必填	说明
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明	最低版本
encryptedData	string	包括敏感数据在内的完整用户信息的加密数据，详细见加密数据解密算法。解密后得到的数据结构见后文
iv	string	加密算法的初始向量，详细见加密数据解密算法
cloudID	string	敏感数据对应的云 ID，开通云开发的小程序才会返回，可通过云调用直接获取开放数据，详细见云调用直接获取开放数据	2.7.0
示例代码
wx.getWeRunData({
  success(res) {
    // 拿 encryptedData 到开发者后台解密开放数据
    const encryptedData = res.encryptedData
    // 或拿 cloudID 通过云调用直接获取开放数据
    const cloudID = res.cloudID
  }
})
开放数据 JSON 结构
敏感数据有两种获取方式，一是使用 加密数据解密算法 将 encryptedData 在开发者后台解密，二是使用云调用直接通过 cloudID 获取开放数据。 获取得到的开放数据为以下 json 结构：

{
  "stepInfoList": [
    {
      "timestamp": 1445866601,
      "step": 100
    },
    {
      "timestamp": 1445876601,
      "step": 120
    }
  ]
}
stepInfoList 中，每一项结构如下：

属性	类型	说明
timestamp	number	时间戳，表示数据对应的时间
step	number	微信运动步数
