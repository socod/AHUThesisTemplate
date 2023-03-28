# 安徽大学研究生学位论文LaTeX模板

> **注意：非官方模板**

感谢北航两位同志 QiaoJF, WeiQM 对于研究生学位论文LaTeX模板的贡献[`Github`](https://github.com/CheckBoxStudio/BUAAThesis)，本模板基于他们的工作进行更改，并尽可能符合《安徽大学研究生撰写学位论文的规定（2019年12月修订）》的要求。

基于对先行者劳动成果的尊重，模板名称、版本、库命名依旧使用标识BUAAThesis。

同时，也要感谢安徽大学同志[`Monoceros393`](https://github.com/Monoceros393/AHUThesis)最初对研究生论文模板写作的贡献。

## 文件列表

```
AHUThesisTemplate
 |- buaa.cls                  // LaTeX宏模板文件
 |- Main.tex                  // LaTeX主文件
 |- reference.bib             // LaTeX模板中的参考文献Bib文件
 |- bst/GBT7714-2005.bst      // 国标参考文献BibTeX样式文件2005版
 |- bst/GBT7714-2015.bst      // 国标参考文献BibTeX样式文件2015版
 |- pic/logo-ahu.eps          // 论文封皮安大字样
 |- pic/head-doctor.eps       // 论文封皮学术博士学位论文标题(华文行楷字体替代解决方案)
 |- pic/head-master.eps       // 论文封皮学术硕士学位论文标题(华文行楷字体替代解决方案)
 |- pic/head-professional.eps // 论文封皮专业硕士学位论文标题(华文行楷字体替代解决方案)
 |- Chapter_*/*.tex           // 论文独立章节
 |- tmp/*.tex                 // 使用说明和示例
 |- ReadMe.md                 // 本文件
 |- .gitignore                // Git忽略规则
 |- statement.pdf             // 可以使用PDF扫描版的独创性声明
```

## 模板使用

+ LaTeX: 参看LaTeX模板示例Main.tex及相应插入章节tmp/*.tex。
+ 可以使用VSCode编辑器，安装插件LaTeX Workshop，直接运行命令 `xelatex(pdflatex)->bibtex->xelatex(pdflatex)*2`。

+ 欢迎 [pull request](https://github.com/socod/AHUThesisTemplate/pulls)。

## 我的环境

+ Windows 10 64bits
+ MiKTeX 22.12
+ VSCode

## 致谢

感谢[Quanmao Wei](https://github.com/CheckBoxStudio)对模板的维护，感谢[Haixing Hu](https://github.com/Haixing-Hu)提供的2005版参考文献著录BibTeX样式[GBT7714-2005](https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style)及[Zeping Lee](https://github.com/zepinglee)提供的2015版参考文献著录BibTeX样式[GBT7714-2015](https://github.com/zepinglee/gbt7714-bibtex-style)，为本项目LaTeX模板的形成提供了很大的帮助。感谢[BwCai](https://github.com/BwCai)提供的Mac编译环境。

感谢[Monoceros393](https://github.com/Monoceros393)的鼓舞。

同时，希望计算机学院的同志们多做点事儿。