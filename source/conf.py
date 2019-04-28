import sys

sys.setrecursionlimit(2000)

# Sphinx文档构建器的配置文件。
#
# 此文件仅包含一些最常用的选项。
# 有关完整列表，请参阅文档:
# http://www.sphinx-doc.org/en/master/config

# -- 路径设置 --------------------------------------------------------------

# 如果扩展(或使用autodoc记录的模块)位于另一个目录中，
# 将这些目录添加到sys.path这里。如果目录是相对于文档根目录的，
# 则使用os.path.abspath使其成为绝对目录，如此处所示。
#
# import os
# import sys
# sys.path.insert(0, os.path.abspath('.'))


# -- 项目信息 -----------------------------------------------------

project = 'wxadev'
copyright = '2019, Nosy'
author = 'Nosy'

# 完整版，包括 alpha/beta/rc 标签
release = '1.0.0'


# -- General configuration ---------------------------------------------------

# 在此处添加任何Sphinx扩展模块名称，作为字符串。
# 它们可以是Sphinx(名为'sphinx.ext。*')或您自定义的扩展。

extensions = [
    'sphinx.ext.extlinks',
    'recommonmark',
    'sphinx.ext.githubpages',
    'sphinxcontrib.httpdomain'
]

# 相对于此目录，在此处添加包含模板的所有路径。
templates_path = ['_templates']

# 由Sphinx自动生成的内容语言。
# 有关支持的语言列表，请参阅文档。
#
# 如果您通过gettext目录进行内容翻译，也会使用此选项。
# 通常，您可以从命令行为这些情况设置“语言”。

language = 'zh_CN'

# 相对于源目录的模式列表，匹配在查找源文件时要忽略的文件和目录。
# 此模式还会影响 html_static_path和html_extra_path。

exclude_patterns = []


# --HTML输出选项 -------------------------------------------------

# 用于HTML和HTML帮助页面的主题。有关内置主题的列表，请参阅文档。

html_theme = 'sphinx_rtd_theme'

# 在此处添加包含自定义静态文件(例如样式表)的所有路径，
# 相对于这个目录。它们是在内置静态文件之后复制的，
# 所以名为“default.css”的文件将覆盖内置的“default.css”。

html_static_path = ['_static']

master_doc = 'contents'

extlinks = {
    'wxcloud': ('https://developers.weixin.qq.com/miniprogram/dev/wxcloud/%s.html', ''),
    'wx_comp': ('https://developers.weixin.qq.com/miniprogram/dev/component/%s.html', ''),
    'wxfrwk': ('https://developers.weixin.qq.com/miniprogram/dev/framework/%s.html', ''),
    'wxapi': ('https://developers.weixin.qq.com/miniprogram/dev/api/%s.html', ''),
    'wxbpi': ('https://developers.weixin.qq.com/miniprogram/dev/api-backend/%s.html', ''),
    'wxdt': ('https://developers.weixin.qq.com/miniprogram/dev/devtools/%s.html', ''),
    'wxwork': ('https://developers.weixin.qq.com/miniprogram/dev/dev_wxwork/%s.html', ''),
    'wework': ('https://work.weixin.qq.com/api/doc#90000/%s', '')
}

source_suffix = {
    '.rst': 'restructuredtext',
    '.txt': 'restructuredtext',
    '.md': 'markdown',
}

http_index_ignore_prefixes = [
    'https://api.weixin.qq.com/cgi-bin/',
    'https://qyapi.weixin.qq.com/cgi-bin/'
]
http_index_shortname = 'api'
http_index_localname = "微信小程序API"

# 然后你可以省略下面指令中的所有“js:”前缀。

primary_domain = 'js'

highlight_language = 'js'
