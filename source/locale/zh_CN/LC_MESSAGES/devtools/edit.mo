��    "      ,              <     =     ?  �   X  �   �    �     �            �   *  s   �  +     �  L  t   	  e   �	  �   �	  K   �
  �   �
  $   �  -     (   D  v   m  �   �  �   ~  R       g  �   }  e   4  
  �  l   �  !    U   4  �   �  �   4  w  �     X     Z  �   s  �       �          &     2  �   E  s   �  +  ;  �  g  t   .  e   �  �   	  K   �  �     $      -   1   (   _   v   �   �   �   �   �!  R  /"     �#  �   �#  e   O$  
  �$  l   �%  !  -&  U   O'  �   �'  �   O(   3 :wxdt:`编辑区 <edit>` Git 状态展示 如果所在的小程序工程目录（project.config.json 所在目录）存在 Git 仓库，编辑器可以展示目前的 Git 状态。 TypeScript 支持 如果项目需要使用 TypeScript 语言开发，开发者工具在创建项目选择快速启动模板时，提供了使用 TypeScript 语言的 QuickStart 项目，可以选择创建此项目并进行后续开发。 js 文件编辑会帮助开发补全所有的 API 及相关的注释解释，并提供代码模板支持 wxml 文件编辑会帮助开发者直接写出相关的标签和标签中的属性 json 文件编辑会帮助开发者补全相关的配置，并给出实时的提示 js 补全 json 补全 wxml 补全 代码模板支持 勾选后，在编辑文件进行内容比较时，所有 Windows 风格的回车符将被当作 Unix 风格的回车符对待。 同时，编辑文件内容时，将会在所编辑代码左侧实时显示相对于上一版本内容的比较。 图标      含义 U       文件未追踪（Untracked） A       新文件（Added, Staged） M       文件有修改（Modified） +M      文件有修改（Modified, Staged） C       文件有冲突（Conflict） D       文件被删除（Deleted） 文件夹目录图标状态的含义如下： 图标      含义 小红点     目录下至少存在一个删除状态的文件 小橙点     目录下至少存在一个冲突状态的文件 小蓝点     目录下至少存在一个未追踪状态的文件 小绿点     目录下至少存在一个修改状态的文件 如果某一文件存在修改（Modified），可以右键点击此文件，并选择 “与上一版本比较”，则可以查看当前工作区文件与 HEAD 版本的比较。 在 app.json 的 pages 字段，添加需要新建的页面的路径，将会自动生成该页面所需要的文件 在目录树上右键，选择新建 Page，将自动生成页面所需要的 wxml、wxss、js、json 如果设置中开启了 “修改文件时自动保存”（设置-编辑设置-修改文件自动保存），工具在修改文件时会自动保存到硬盘中，无需手动保存的效果。 如需配置 TypeScript 编译选项，请参考 tsconfig.json 的配置。 实时预览 如果设置中开启了 “文件保存时自动编译小程序”（设置-编辑设置-保存时自动编译小程序），那么当 wxml、wxss、js、json 文件修改时，可以通过模拟器实时预览编辑的情况： 文件图标状态的含义如下： 文件夹目录图标状态的含义如下： 文件操作 新建页面有两种方式 文件支持 工具目前提供了 5 种文件的编辑：wxml、wxss、js、json、wxs 以及图片文件的预览。 文件格式 因 iOS 下仅支持 UTF8 编码格式，最新版本的开发者工具会在上传代码时候对代码文件做一次编码格式校验。 文件编辑 存在 Git 仓库时，状态栏会展示此 Git 仓库目前的分支信息。例如，下图表明目前 Git 仓库处于 v2 分支。 样式      含义 蓝色线条    此处的代码有变动 绿色线条    此处的代码是新增的 红色三角箭头  此处有代码被删除 Windows 风格回车设置 如需忽略 Windows 风格的回车符，可以前往 “设置” - “编辑”，并勾选 “Git 比较文件内容时，忽略 Windows 风格回车符”。 样式说明如下： 注意：如果同时开启了 ”修改文件时自动保存“ 的设置，编译动作会有一定的延迟，来避免频繁的编译，手动点击编译按钮将立即编译。 注：小程序仅支持运行 JS 文件，因此所有的 TS 文件都默认不会被打包上传。 目录树 如图所示，当某些文件存在变动时，目录树的文件右侧将展示相应的图标来表明这一状态。当某一处于收起状态的目录下存在有变动的文件时，此目录的右侧亦会展示一个圆点图标表明此情况。 编辑区可以对当前项目进行代码编写和文件的添加、删除以及重命名等基本操作。 自动保存 编辑代码后，工具会自动帮助用户保存当前的代码编辑状态，直接关闭工具或者切换到别的项目，并不会丢失已经编辑的文件状态，但需要注意的是，只有用户主动保存文件，修改内容才会真实的写到硬盘上。 自动补全 同大部分编辑器一样，工具提供了较为完善的自动补全 要构建并使用 TypeScript 项目，可能需要安装 npm。通过配置编译前的预置命令，可以实现在编译前运行 tsc 以将其编译到 js 文件。 设置中开启 “编译时自动保存所有文件”（设置-编译设置-编译时自动保存所有文件），在点击编译时自动保存所有文件的效果。 Project-Id-Version: wxadev 
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
 3 :wxdt:`编辑区 <edit>` Git 状态展示 如果所在的小程序工程目录（project.config.json 所在目录）存在 Git 仓库，编辑器可以展示目前的 Git 状态。 TypeScript 支持 如果项目需要使用 TypeScript 语言开发，开发者工具在创建项目选择快速启动模板时，提供了使用 TypeScript 语言的 QuickStart 项目，可以选择创建此项目并进行后续开发。 js 文件编辑会帮助开发补全所有的 API 及相关的注释解释，并提供代码模板支持 wxml 文件编辑会帮助开发者直接写出相关的标签和标签中的属性 json 文件编辑会帮助开发者补全相关的配置，并给出实时的提示 js 补全 json 补全 wxml 补全 代码模板支持 勾选后，在编辑文件进行内容比较时，所有 Windows 风格的回车符将被当作 Unix 风格的回车符对待。 同时，编辑文件内容时，将会在所编辑代码左侧实时显示相对于上一版本内容的比较。 图标      含义 U       文件未追踪（Untracked） A       新文件（Added, Staged） M       文件有修改（Modified） +M      文件有修改（Modified, Staged） C       文件有冲突（Conflict） D       文件被删除（Deleted） 文件夹目录图标状态的含义如下： 图标      含义 小红点     目录下至少存在一个删除状态的文件 小橙点     目录下至少存在一个冲突状态的文件 小蓝点     目录下至少存在一个未追踪状态的文件 小绿点     目录下至少存在一个修改状态的文件 如果某一文件存在修改（Modified），可以右键点击此文件，并选择 “与上一版本比较”，则可以查看当前工作区文件与 HEAD 版本的比较。 在 app.json 的 pages 字段，添加需要新建的页面的路径，将会自动生成该页面所需要的文件 在目录树上右键，选择新建 Page，将自动生成页面所需要的 wxml、wxss、js、json 如果设置中开启了 “修改文件时自动保存”（设置-编辑设置-修改文件自动保存），工具在修改文件时会自动保存到硬盘中，无需手动保存的效果。 如需配置 TypeScript 编译选项，请参考 tsconfig.json 的配置。 实时预览 如果设置中开启了 “文件保存时自动编译小程序”（设置-编辑设置-保存时自动编译小程序），那么当 wxml、wxss、js、json 文件修改时，可以通过模拟器实时预览编辑的情况： 文件图标状态的含义如下： 文件夹目录图标状态的含义如下： 文件操作 新建页面有两种方式 文件支持 工具目前提供了 5 种文件的编辑：wxml、wxss、js、json、wxs 以及图片文件的预览。 文件格式 因 iOS 下仅支持 UTF8 编码格式，最新版本的开发者工具会在上传代码时候对代码文件做一次编码格式校验。 文件编辑 存在 Git 仓库时，状态栏会展示此 Git 仓库目前的分支信息。例如，下图表明目前 Git 仓库处于 v2 分支。 样式      含义 蓝色线条    此处的代码有变动 绿色线条    此处的代码是新增的 红色三角箭头  此处有代码被删除 Windows 风格回车设置 如需忽略 Windows 风格的回车符，可以前往 “设置” - “编辑”，并勾选 “Git 比较文件内容时，忽略 Windows 风格回车符”。 样式说明如下： 注意：如果同时开启了 ”修改文件时自动保存“ 的设置，编译动作会有一定的延迟，来避免频繁的编译，手动点击编译按钮将立即编译。 注：小程序仅支持运行 JS 文件，因此所有的 TS 文件都默认不会被打包上传。 目录树 如图所示，当某些文件存在变动时，目录树的文件右侧将展示相应的图标来表明这一状态。当某一处于收起状态的目录下存在有变动的文件时，此目录的右侧亦会展示一个圆点图标表明此情况。 编辑区可以对当前项目进行代码编写和文件的添加、删除以及重命名等基本操作。 自动保存 编辑代码后，工具会自动帮助用户保存当前的代码编辑状态，直接关闭工具或者切换到别的项目，并不会丢失已经编辑的文件状态，但需要注意的是，只有用户主动保存文件，修改内容才会真实的写到硬盘上。 自动补全 同大部分编辑器一样，工具提供了较为完善的自动补全 要构建并使用 TypeScript 项目，可能需要安装 npm。通过配置编译前的预置命令，可以实现在编译前运行 tsc 以将其编译到 js 文件。 设置中开启 “编译时自动保存所有文件”（设置-编译设置-编译时自动保存所有文件），在点击编译时自动保存所有文件的效果。 