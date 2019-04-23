:wxwork:`wx.qy.selectEnterpriseContact <dev-doc/qywx-api/contact/wxqyselectenterprisecontact>`
======================================================================================================

.. function:: wx.qy.selectEnterpriseContact({[success][, fail][, complete]})

  :label: 打开通讯录选人功能
  :param number fromDepartmentId:	是	-1表示打开的通讯录从自己所在部门开始展示, 0表示从最上层开始
  :param string mode:	是	选择模式，"single"表示单选，"multi"表示多选
  :param array type:	是	选择限制类型，指定"department"、"user"中的一个或者多个
  :param array selectedDepartmentIds:	否	已选部门ID列表。用于多次选人时可重入
  :param array selectedUserIds:	否	已选用户ID列表。用于多次选人时可重入
  :param function success({departmentList,userList}): 	接口调用成功的回调函数

    - **departmentList**	(*array*)	已选的部门列表
    - **userList**	(*array*)	已选的成员列表

  :param function fail: 	接口调用失败的回调函数
  :param function complete: 	接口调用结束的回调函数（调用成功、失败都会执行）
  :调用前提:

    1. 必须先调用过wx.qy.login，且session_key未过期，开发者可调用checkSession 检查当前登录态
    2. 当前成员必须在应用的可见范围

  :示例代码:

    .. code:: js

      wx.qy.selectEnterpriseContact({
        fromDepartmentId: -1, // 必填，-1表示打开的通讯录从自己所在部门开始展示, 0表示从最上层开始
        mode: 'single', // 必填，选择模式，single表示单选，multi表示多选
        type: ['department', 'user'], // 必填，选择限制类型，指定department、user中的一个或者多个
        selectedDepartmentIds: ['2', '3'], // 非必填，已选部门ID列表。用于多次选人时可重入
        selectedUserIds: ['lisi', 'lisi2'], // 非必填，已选用户ID列表。用于多次选人时可重入
        success(res) {
          const selectedDepartmentList = res.result.departmentList// 已选的部门列表
          for (var i = 0; i < selectedDepartmentList.length; i++) {
            const department = selectedDepartmentList[i]
            const departmentId = department.id// 已选的单个部门ID
            const departemntName = department.name// 已选的单个部门名称
          }
          const selectedUserList = res.result.userList // 已选的成员列表
          for (var i = 0; i < selectedUserList.length; i++) {
            const user = selectedUserList[i]
            const userId = user.id // 已选的单个成员ID
            const userName = user.name// 已选的单个成员名称
            const userAvatar = user.avatar// 已选的单个成员头像
          }
        }
      })
