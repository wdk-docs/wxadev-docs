:wxfrwk:`聊天素材支持小程序打开 <open-ability/material/index>`
==============================================================

.. note:: 从基础库 2.14.3 开始支持

.. note:: 支持平台：Android

.. note:: 客户端版本：webview打开小程序需要升级至微信7.0.22及以上版本，文件和视频打开小程序需要升级至微信8.0.0 及以上版本，图片打开小程序需要升级至微信8.0.1及以上版本

.. note:: 支持类型：仅小程序，小游戏暂不支持

功能介绍
-------------

微信聊天内素材（文件、图片、视频和webview）的打开方式增加使用小程序打开的入口。用户可通过小程序处理聊天内的文件、图片、视频和webview。例如用小程序将文件存储到网盘、给图片加滤镜、进行视频剪辑或者将webview保存到笔记等。目前仅支持不带二维码的图片直接通过小程序打开。

用户在打开微信聊天内的素材时，如果小程序配置了支持打开该类型的素材并审核通过，而且用户曾经使用过该小程序，则打开该类型的素材时会出现使用小程序打开的入口。

使用说明
-------------

开发者需要在小程序全局配置(app.json)中声明支持打开的文件类型，对一种文件类型只能声明一种处理方式。

.. code:: json

    {
        "supportedMaterials": [
            {
                "materialType": "text/html",
                "name": "用${nickname}打开",
                "desc": "描述",
                "path": "pages/index/"
            },
            {
                "materialType": "video/*",
                "name": "用${nickname}播放",
                "desc": "描述",
                "path": "pages/index/"
            },
            {
                "materialType": "video/mp4",
                "name": "用${nickname}播放",
                "desc": "描述",
                "path": "pages/index/"
            }
        ]
    }

+--------------+--------+------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|     属性     |  类型  | 必填 |                                                                                                 描述                                                                                                 |
+==============+========+======+======================================================================================================================================================================================================+
| materialType | String | 是   | 支持文件类型的MimeType，音频，视频支持二级配置的通配模式，例如: video/*。通配模式配置和精确类型配置同时存在时，则优先使用精确类型的配置(例如video/*和video/mp4同时存在，会优先使用video/mp4的配置)。 |
+--------------+--------+------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name         | String | 是   | 开发者配置的标题，在素材页面会展示该标题，配置中必须包含${nickname}, 代码包编译后会自动替换为小程序名称，如果声明了简称则会优先使用简称。除去${nickname}其余字数不得超过6个。                        |
+--------------+--------+------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| desc         | String | 是   | 用途描述，会在推荐列表展示该描述，限定字数不超过22个。                                                                                                                                               |
+--------------+--------+------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| path         | String | 是   | 在该场景下打开小程序时跳转页面                                                                                                                                                                       |
+--------------+--------+------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

最新客户端版本支持的MimeType类型：

+---------------------------------------------------------------------------+----------+--------------+
|                                 MimeType                                  | 文件后缀 |     说明     |
+===========================================================================+==========+==============+
| video/*                                                                   |          | 视频类文件   |
+---------------------------------------------------------------------------+----------+--------------+
| audio/*                                                                   |          | 音频类文件   |
+---------------------------------------------------------------------------+----------+--------------+
| image/*                                                                   |          | 图片类文件   |
+---------------------------------------------------------------------------+----------+--------------+
| text/html                                                                 |          | webview      |
+---------------------------------------------------------------------------+----------+--------------+
| text/plain                                                                | .txt     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/*                                                             |          | 通用文件配置 |
+---------------------------------------------------------------------------+----------+--------------+
| application/pdf                                                           | .pdf     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/msword                                                        | .doc     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/vnd.openxmlformats-officedocument.wordprocessingml.document   | .docx    |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/vnd.ms-word.document.macroEnabled.12                          | .docm    |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/vnd.ms-excel                                                  | .xls     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/vnd.openxmlformats-officedocument.spreadsheetml.sheet         | .xlsx    |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/vnd.ms-excel.sheet.macroEnabled.12                            | .xlsm    |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/vnd.ms-powerpoint                                             | .ppt     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/vnd.openxmlformats-officedocument.presentationml.presentation | .pptx    |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/zip                                                           | .zip     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/vnd.rar                                                       | .rar     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/x-7z-compressed                                               | .7z      |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/x-photoshop                                                   | .psd     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/acad                                                          | .dwg     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/x-cdr                                                         | .cdr     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/dxf                                                           | .dxf     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/step                                                          | .stp     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/rtf                                                           | .rtf     |              |
+---------------------------------------------------------------------------+----------+--------------+
| application/postscript                                                    | .ai      |              |
+---------------------------------------------------------------------------+----------+--------------+

小程序启动参数
----------------

小程序启动参数里场景值为1173，该场景下启动参数和query同一级有一个数组forwardMaterials，代表转发的文件信息，数组中每一个对象包含属性{type,name,path,size}分别代表文件类型，文件名，文件路径或url，文件大小

发布
----------------
小程序提审时会审核声明的supportedMaterials是否合规，小程序发布上线后相应文件类型打开入口才会出现小程序。

如果小程序实现的功能价值较低将不会被通过审核，包括但不限于以下情况：

打开小程序后的功能与对应的素材没有任何关系：只是通过这个入口打开了自己的小程序，而并没有对素材做任何的处理。
打开小程序后处理素材的方式过于简单：比如只是播放视频或只是查看.docx文件等通过微信聊天就能实现的简单功能。
请开发者结合自身小程序的功能与用户需求进行适配。

调试
----------------
体验版
体验版小程序支持单独配置supportedMaterials，和正式版的小程序配置相互独立，上述相应的入口小程序列表也会单独展示体验版小程序。

开发者工具
开发者可在自定义编译模式下通过场景值1173调试该功能。
