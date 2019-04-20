sitemap 配置
===============

小程序根目录下的 sitemap.json 文件用来配置小程序及其页面是否允许被微信索引。

完整配置项说明请参考 `小程序 sitemap 配置 <https://developers.weixin.qq.com/miniprogram/dev/reference/configuration/sitemap.html>`_

例1：

.. code-block:: json

    {
      "rules": [
        {
          "action": "allow",
          "page": "*"
        }
      ]
    }

所有页面都会被微信索引，其他页面不会被索引

例2：

.. code-block:: json

    {
      "rules": [
        {
          "action": "allow",
          "page": "path/to/page",
          "params": ["a", "b"],
          "matching": "inclusive"
        }
      ]
    }

包含 ``a`` 和 ``b`` 参数的 `path/to/page` 页面都会被微信索引，其他页面不会被索引，例如：

- path/to/page => 不被索引
- path/to/page?a=1 => 不被索引
- path/to/page?a=1&b=2 => 被索引
- path/to/page?a=1&b=2&c=3 => 被索引
