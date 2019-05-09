:wxapi:`FileSystemManager`
============================================

.. class:: FileSystemManager

  ..versonadded:: 1.9.9 开始支持，低版本需做兼容处理。

  文件管理器

方法
-------

.. function:: FileSystemManager.access(Object object)

   判断文件/目录是否存在

.. function:: FileSystemManager.appendFile(Object object)

   在文件结尾追加内容

.. function:: FileSystemManager.saveFile(Object object)

   保存临时文件到本地。此接口会移动临时文件，因此调用成功后，tempFilePath 将不可用。

.. function:: FileSystemManager.getSavedFileList(Object object)

   获取该小程序下已保存的本地缓存文件列表

.. function:: FileSystemManager.removeSavedFile(Object object)

   删除该小程序下已保存的本地缓存文件

.. function:: FileSystemManager.copyFile(Object object)

   复制文件

.. function:: FileSystemManager.getFileInfo(Object object)

   获取该小程序下的 本地临时文件 或 本地缓存文件 信息

.. function:: FileSystemManager.mkdir(Object object)

   创建目录

.. function:: FileSystemManager.readdir(Object object)

   读取目录内文件列表

.. function:: FileSystemManager.readFile(Object object)

   读取本地文件内容

.. function:: FileSystemManager.rename(Object object)

   重命名文件。可以把文件从 oldPath 移动到 newPath

.. function:: FileSystemManager.rmdir(Object object)

   删除目录

.. function:: FileSystemManager.stat(Object object)

   获取文件 Stats 对象

.. function:: FileSystemManager.unlink(Object object)

   删除文件

.. function:: FileSystemManager.unzip(Object object)

   解压文件

.. function:: FileSystemManager.writeFile(Object object)

   写文件
