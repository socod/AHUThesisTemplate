%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% <UTF-8>
%% %% 安大研究生学位论文模板 - LaTex 03-28-2023 (extension ver based on buaa v3.0)
%% %% 
%% %% 论文样式参考自《安徽大学研究生撰写学位论文的规定（2019 年 12 月修订）》
%% %% 基于ctexbook
%% %%
%% %% 模板初始版本作者:
%% %%   Wei Quanmao (weiqm@buaa.edu.cn)
%% %% 参与修改:
%% %%   Qiao Junfeng (qiaojunfeng@outlook.com)
%% %%   Monoceros
%% %%   Wang Junyi （wangjunyi96@outlook.com）
%% %%
%% %%
%% %% 建议采用等宽字体查看本文档
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 模板标识
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{buaa}[2020/03/07 v3.0 BUAA thesis class]
\typeout{This is LaTeX template buaa. Version 3.0 (based on CTeX) 03-07-2020}

%% 选项
%% 论文类型
\DeclareOption{master}{\gdef\@thesis{master}}             % 学术硕士论文
\DeclareOption{professional}{\gdef\@thesis{professional}} % 专业硕士论文
\DeclareOption{doctor}{\gdef\@thesis{doctor}}             % 博士论文
\DeclareOption{thesis}{\ClassWarning{buaa}{%
  You have not specified the THESIS option. The word thesis should be replaced by one of the following thesis type: master(default), professional, doctor.
}}

%% 密级
\DeclareOption{public}{\gdef\@permission{public}}             % 公开
\DeclareOption{privacy}{\gdef\@permission{privacy}}           % 内部
\DeclareOption{secret}{\gdef\@permission{secret3}}            % 秘密 = 秘密3年
\DeclareOption{secret3}{\gdef\@permission{secret3}}           % 秘密3年
\DeclareOption{secret5}{\gdef\@permission{secret5}}           % 秘密5年
\DeclareOption{secret10}{\gdef\@permission{secret10}}         % 秘密10年
\DeclareOption{secret*}{\gdef\@permission{secret*}}           % 秘密永久
\DeclareOption{classified}{\gdef\@permission{classified5}}    % 机密 = 机密5年
\DeclareOption{classified3}{\gdef\@permission{classified3}}   % 机密3年
\DeclareOption{classified5}{\gdef\@permission{classified5}}   % 机密5年
\DeclareOption{classified10}{\gdef\@permission{classified10}} % 机密10年
\DeclareOption{classified*}{\gdef\@permission{classified*}}   % 机密永久
\DeclareOption{topsecret}{\gdef\@permission{topsecret10}}     % 绝密 = 绝密10年
\DeclareOption{topsecret3}{\gdef\@permission{topsecret3}}     % 绝密3年
\DeclareOption{topsecret5}{\gdef\@permission{topsecret5}}     % 绝密5年
\DeclareOption{topsecret10}{\gdef\@permission{topsecret10}}   % 绝密10年
\DeclareOption{topsecret*}{\gdef\@permission{topsecret*}}     % 绝密永久
\DeclareOption{permission}{\ClassWarning{buaa}{%
  You have not specified the PERMISSION option. The word permission should be replaced by one of the following thesis type: public, privacy, secret, classified, topsecret.
}}

%% 打印设置
\DeclareOption{oneside}{\gdef\@printtype{oneside}} % 单面打印
\DeclareOption{twoside}{\gdef\@printtype{twoside}} % 双面打印
\DeclareOption{printtype}{\ClassWarning{buaa}{%
  You have not specified the PRINTTYPE option. The word printtype should be replaced by one of the following thesis type: oneside, twoside.
}}

%% 系统设置
\DeclareOption{win}{\gdef\@ostype{win}}     % windows
\DeclareOption{linux}{\gdef\@ostype{linux}} % linux
\DeclareOption{max}{\gdef\@ostype{mac}}     % mac
\DeclareOption{ostype}{\ClassWarning{buaa}{%
  You have not specified the OSTYPE option. The word ostype should be replaced by one of the following thesis type: win, linux, mac.
}}

%% 适应首字母大写
\DeclareOption{Master}{\gdef\@thesis{master}}
\DeclareOption{Professional}{\gdef\@thesis{professional}}
\DeclareOption{Doctor}{\gdef\@thesis{doctor}}
\DeclareOption{ProDoctor}{\gdef\@thesis{prodoctor}}
\DeclareOption{Public}{\gdef\@permission{public}}
\DeclareOption{Privacy}{\gdef\@permission{privacy}}
\DeclareOption{Secret}{\gdef\@permission{secret3}}
\DeclareOption{Secret3}{\gdef\@permission{secret3}}
\DeclareOption{Secret5}{\gdef\@permission{secret5}}
\DeclareOption{Secret10}{\gdef\@permission{secret10}}
\DeclareOption{Secret*}{\gdef\@permission{secret*}}
\DeclareOption{Classified}{\gdef\@permission{classified5}}
\DeclareOption{Classified3}{\gdef\@permission{classified3}}
\DeclareOption{Classified5}{\gdef\@permission{classified5}}
\DeclareOption{Classified10}{\gdef\@permission{classified10}}
\DeclareOption{Classified*}{\gdef\@permission{classified*}}
\DeclareOption{TopSecret}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret3}{\gdef\@permission{topsecret3}}
\DeclareOption{TopSecret5}{\gdef\@permission{topsecret5}}
\DeclareOption{TopSecret10}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret*}{\gdef\@permission{topsecret*}}
\DeclareOption{Oneside}{\gdef\@printtype{oneside}}
\DeclareOption{Twoside}{\gdef\@printtype{twoside}}
\DeclareOption{Win}{\gdef\@ostype{win}}
\DeclareOption{Linux}{\gdef\@ostype{linux}}
\DeclareOption{Max}{\gdef\@ostype{mac}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{master,public,oneside,win,a4paper,sub4section}
\ProcessOptions\relax

%% 引用ctexbook: 小4,1.5倍行距
\LoadClass[UTF8,zihao=-4,linespread=1.7]{ctexbook}%1.5+0.2行间距
\setcounter{secnumdepth}{5}
%% 段间距设0
\setlength{\parskip}{0cm}

%% BUAAThesis字样及版本信息
\usepackage{graphicx}
\def\BUAAThesisVer{v3.0 03-07-2020}
\def\BUAAThesis{%
 B%
 {\fontsize{0.8em}{\baselineskip}\selectfont
 \kern-.12em\lower.5ex\hbox{U}%
 \kern-.46em\raise.47ex\hbox{A}%
 \kern-.12em A%
}
 \kern-.35emT%
 \kern-.22em\lower.5ex\hbox{H}%
 \kern-.08em E%
 \kern-.05em\lower.5ex\hbox{S}%
 \kern-.26em I%
 \kern-.26em\raise.5ex\hbox{\rotatebox[origin=c]{180}{S}}%
}

%% 预声明
\RequirePackage{ifthen}       % ifthenelse/equal/isundefined等判断比较命令
\RequirePackage{etoolbox}     % \AtBeginDocument等宏命令
\RequirePackage{titletoc}     % 目录
\RequirePackage{remreset}     % 计数器设置
\RequirePackage{geometry}     % 设置页边距
\RequirePackage{fancyhdr}     % 设置页眉页脚
\RequirePackage{setspace}     % 设置行间距
\RequirePackage{float}        % 图片
\RequirePackage{graphicx}     % 图片
\RequirePackage{subfigure}    % 图片
\RequirePackage{epstopdf}     % 图片
\RequirePackage{array}        % 列举
\RequirePackage{enumitem}     % 列举
\RequirePackage{booktabs}     % 表格上下粗线
\RequirePackage{longtable}    % 长表格
\RequirePackage{multirow}     % 多行表格
\RequirePackage{caption}[=v3.6]   % 标题设置
\RequirePackage[lang=english,listtype+=Eng]{bicaption} % 双标题
\RequirePackage{listings}     % 代码环境
\RequirePackage[linesnumbered]{algorithm2e}   % 算法环境
\RequirePackage{newfloat}     % 浮动环境
\RequirePackage{stfloats}     % 浮动
\RequirePackage{amsmath}      % 数学
\RequirePackage{amsthm}       % 定理
\RequirePackage{babel}        % 多语言
\RequirePackage[hypertexnames=false]{hyperref}      % 超链接
\RequirePackage{pifont}       % 画五角星
\RequirePackage{color}        % To provide color for soul
\RequirePackage{soul}         % To highlight text
\RequirePackage{pdfpages}
\RequirePackage[sort&compress]{natbib}              % BibTex
\DeclareGraphicsExtensions{.eps,.ps,.png,.jpg,.bmp} % 声明使用图像格式
\newcommand{\highlight}[1]{\colorbox{yellow}{#1}}   % 高亮注释


% 根据不同系统调整
\ifthenelse{\equal{\@ostype}{win}}{ % win 配置
  \RequirePackage{times}        % Times New Roman字体
}{}
\ifthenelse{\equal{\@ostype}{linux}}{ % linux 配置
  \RequirePackage{newtxtext}    % Times New Roman字体
  \RequirePackage{newtxmath}    % 公式的Times New Roman字体 (!After package amsthm!)
}{}
\ifthenelse{\equal{\@ostype}{mac}}{ % mac 配置
  \RequirePackage{times}        % Times New Roman字体
  \RequirePackage{fontspec}     % 字体设置 (!Only for XeLaTeX!)
}{}

\usepackage{iftex}
\ifPDFTeX
\else
\setmainfont{Times New Roman}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 数学环境
% 数学符号：
\newcommand\eu{\mathrm{e}}
\newcommand\iu{\mathrm{i}}
\newcommand*{\diff}{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

% 数学定理：
% 以下定义数学定理环境默认风格为 buaa
\newtheoremstyle{buaa}%
{0pt}% measure of space to leave above the theorem.
{0pt}% measure of space to leave below the theorem.
{}% name of font to use in the body of the theorem.
{2\ccwd}% measure of space to indent.
{\songti\bfseries}% name of head font. 宋体加粗
{.}% punctuation between head and body.
{\ccwd}% space after theorem head; " " = normal interword space
{}% manually specify head (can be left empty, meaning `normal').
\theoremstyle{buaa}

% 定义新的定理
\newcommand{\theoremname}{定理}
\newcommand{\assertionname}{断言}
\newcommand{\axiomname}{公理}
\newcommand{\corollaryname}{推论}
\newcommand{\lemmaname}{引理}
\newcommand{\propositionname}{命题}
\newcommand{\definitionname}{定义}
\newcommand{\examplename}{例}
\newcommand{\remarkname}{注}
\renewcommand{\proofname}{证明}
\renewcommand{\algorithmcfname}{算法}

\addto\captionschinese{%
\renewcommand\lstlistingname{代码列表}%
\renewcommand\lstlistlistingname{代~码~清~单}%
}

\addto\captionsenglish{%
\renewcommand\lstlistingname{Listing}%
\renewcommand\lstlistlistingname{List of Listings}%
}

\newtheorem{theorem}                {\theoremname}     [chapter]
\newtheorem{assertion}  [theorem]   {\assertionname}
\newtheorem{axiom}      [theorem]   {\axiomname}
\newtheorem{corollary}  [theorem]   {\corollaryname}
\newtheorem{lemma}      [theorem]   {\lemmaname}
\newtheorem{proposition}[theorem]   {\propositionname}
\newtheorem{definition}             {\definitionname}  [chapter]
\newtheorem{example}                {\examplename}     [chapter]
\newtheorem*{remark}                {\remarkname}


% From MDPI.cls
%\renewcommand{\qed}{\unskip\nobreak\quad\qedsymbol} %% This places the symbol right after the text instead of placing it at the end on the line.
\renewenvironment{proof}[1][\proofname]{\par %% \proofname allows to have "Proof of my theorem"
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \songti \bfseries %% "Proof" is bold
    #1\@addpunct{.}]\ignorespaces %% Period instead of colon
}{%
  \popQED\endtrivlist\@endpefalse
}

% 代码环境
\lstset{
    basicstyle=\small\ttfamily,
    xleftmargin=2pc,
    xrightmargin=2pc,
    frame=single,
    columns=flexible,
    numbers=left,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 输入
\def\@refcolor{} % 给注释及引用使用颜色 on/off
\newcommand{\refcolor}[1]{\gdef\@refcolor{#1}}
\def\@emptypagewords{} % 空白页留字
\newcommand{\emptypagewords}[1]{\gdef\@emptypagewords{#1}}
\def\@beginright{} % 摘要、目录、第一章右侧页起 on/off
\newcommand{\beginright}[1]{\gdef\@beginright{#1}}
\def\@blindmode{} % 盲评模式 on/off
\newcommand{\blindmode}[1]{\gdef\@blindmode{#1}}

\newcommand{\Title}[2]{\gdef\@titlecn{#1} \gdef\@titleen{#2}}
\newcommand{\Subtitle}[2]{\gdef\@subtitlecn{#1} \gdef\@subtitleen{#2}}
\newcommand{\Department}[1]{\gdef\@department{#1}}
\def\@branch{工学} % 学科大类

\newcommand{\Branch}[1]{\gdef\@branch{#1}}              % 申请学位级别

\newcommand{\Major}[1]{\gdef\@major{#1}}                % 一级学科
\newcommand{\Majorsec}[1]{\gdef\@majorsec{#1}}          % 二级学科
\newcommand{\MasterMajor}[1]{\gdef\@mastermajor{#1}}    % 学科专业

\newcommand{\ProCategory}[1]{\gdef\@procategory{#1}}    % 专业学位类别
\newcommand{\ProField}[1]{\gdef\@profield{#1}}          % 专业学位领域
\newcommand{\ProName}[1]{\gdef\@proname{#1}}

\newcommand{\Field}[1]{\gdef\@field{#1}}                % 研究领域

\newcommand{\Tutor}[3]{\gdef\@tutorcn{#1} \gdef\@tutoren{#2} \gdef\@tutordegree{#3}}
\newcommand{\Cotutor}[3]{%
  \gdef\@cotutorcn{#1}
  \gdef\@cotutoren{#2}
  \gdef\@cotutordegree{#3}}
\newcommand{\Author}[2]{\gdef\@authorcn{#1} \gdef\@authoren{#2}}
\newcommand{\StudentID}[1]{\gdef\@studentid{#1}}

\newcommand{\CLC}[1]{\gdef\@clc{#1}}
\newcommand{\DateEnroll}[3]{%
  \gdef\@dateenrollm{#1}
  \gdef\@dateenrolld{#2}
  \gdef\@dateenrolly{#3}}
\newcommand{\DateGraduate}[3]{%
  \gdef\@dategraduatem{#1}
  \gdef\@dategraduated{#2}
  \gdef\@dategraduatey{#3}}
\newcommand{\DateSubmit}[3]{%
  \gdef\@datesubmitm{#1}
  \gdef\@datesubmitd{#2}
  \gdef\@datesubmity{#3}}
\newcommand{\DateDefence}[3]{%
  \gdef\@datedefencem{#1}
  \gdef\@datedefenced{#2}
  \gdef\@datedefencey{#3}}

\newcommand{\Abstract}[2]{\gdef\@abstrctcn{#1} \gdef\@abstrcten{#2}}
\newcommand{\Keyword}[2]{\gdef\@keywordcn{#1} \gdef\@keyworden{#2}}
\newcommand{\Listfigtab}[1]{\gdef\@listfigtab{#1}} % on/off
\newcommand{\Abbreviations}[1]{\gdef\@abbreviations{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 页面设置
% 设置页面大小
% A4纸页边距均25mm
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{twoside}}{% 双面面
  \geometry{top=25mm,bottom=25mm,inner=25mm,outer=25mm}
}{%
  \ifthenelse{\equal{\@printtype}{oneside}}{% 单面
    \geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
    \geometry{layouthoffset=5mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}

% 设置目录格式

\titlecontents{chapter}[0pt]{\settowidth{\hangindent}{\thecontentslabel}\heiti\zihao{-4}}
{\thecontentslabel}{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{section}[2em]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{-4}}
{\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{subsection}[3em]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{5}}
{\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{figure}[0pt]{\settowidth{\hangindent}{图~\thecontentslabel\ \ }\songti\zihao{-4}}
{图~~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{figureEng}[0pt]{\settowidth{\hangindent}{Fig.~\thecontentslabel\ \ }\songti\zihao{-4}}
{Fig.~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{table}[0pt]{\settowidth{\hangindent}{表~\thecontentslabel\ \ }\songti\zihao{-4}}
{表~~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{tableEng}[0pt]{\settowidth{\hangindent}{Table~\thecontentslabel\ \ }\songti\zihao{-4}}
{Table~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{lstlisting}[0pt]{\settowidth{\hangindent}{代码列表~\thecontentslabel\ \ }\songti\zihao{-4}}
{代码列表~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{lstlistingEng}[0pt]{\settowidth{\hangindent}{Listing~\thecontentslabel\ \ }\songti\zihao{-4}}
{Listing~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

% 图表环境设置
\let\org@table\table
\let\org@endtable\endtable
\renewenvironment{table}[1][h!]
{\begin{spacing}{1.2} \org@table[#1] \songti\zihao{5}}
{\org@endtable \end{spacing}}

\let\org@longtable\longtable
\let\org@endlongtable\endlongtable
\renewenvironment{longtable}[1][h!]
{\begin{spacing}{1.2} \songti\zihao{5}\org@longtable[#1]}
{\org@endlongtable \end{spacing}}

\@removefromreset{table}{chapter}
\@removefromreset{figure}{chapter}
\renewcommand{\thefigure}{\thechapter{}.\arabic{figure}}
\renewcommand{\thetable}{\thechapter{}.\arabic{table}}
\renewcommand{\p@subfigure}{\thefigure}

% 定义浮动环境
% Define the new floating environment type "figureEng"
\DeclareFloatingEnvironment[fileext=lof2]{figureEng}[Figure][\sc List of Figures]
% Define the new floating environment type "tableEng"
\DeclareFloatingEnvironment[fileext=lot2]{tableEng}[Table][\sc List of Tables]

\DeclareFloatingEnvironment[fileext=lol2]{lstlistingEng}[Listing][\sc List of Listings]


\DeclareCaptionFormat{tabfigformat}{\bfseries\songti\zihao{5}{#1~~#3}}
\captionsetup[figure]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=5pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=5pt, justification=centerlast}

\captionsetup[figure][bi-first]{name=图}      %设置图的中文前缀
\captionsetup[table][bi-first]{name=表}       %设置表的中文前缀
\captionsetup[figure][bi-second]{name=Fig.}   %设置图的英文前缀
\captionsetup[table][bi-second]{name=Tab.}    %设置表的英文前缀
  
\captionsetup[figure][bi]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table][bi]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}

\DeclareBiCaptionSeparator{bivspace}{\vspace{-10pt}}
\captionsetup[lstlisting][bi]{
  bi-separator=bivspace, 
  position=top, margin=0mm, format=tabfigformat, justification=centerlast}


%出现在页面中间的浮动对象与上下方文本之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt。
%\setlength{\intextsep}{12pt \@plus2pt \@minus 2pt}

%出现在页面的顶部或底部的浮动对象之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt
%\setlength{\floatsep}{12pt \@plus2pt \@minus2pt}

%出现在页面的顶部或底部的浮动对象与文本之间的垂直距离
% 缺省为 20pt plus 2pt minus 4pt。
%\setlength{\textfloatsep}{20bp \@plus2pt \@minus4pt}

% 设置行间距
\setlength{\parskip}{0pt}

% 列表间接设置
\setlist{
  topsep=0pt, % 列表环境与上文距离
  itemsep=0pt, % 条目间距离
  parsep=\parskip, % 条目内段落距离
  partopsep=0pt % 列表环境与下文距离
}

% 设置参考文献格式
\usepackage{notoccite}
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\bibpunct{[}{]}{,}{n}{}{}
\setlength{\bibsep}{0pt}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

% 设置PDF
\hypersetup{%
  colorlinks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdffitwindow=true,
  pdfsubject={BUAA thesis},
  pdfcreator={LaTeXed~By~WeiQM}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 工具函数
\newcommand{\checkinput}{%检测输入元素
  \ifthenelse{\isundefined{\@titlecn}}{\errmessage{%
    Please set title by 'Title'.}}{}
  \ifthenelse{\isundefined{\@department}}{\errmessage{%
    Please set department by 'Department'.}}{}
  \ifthenelse{\isundefined{\@major}}{\errmessage{%
    Please set major by 'Major'.}}{}
    \ifthenelse{\isundefined{\@majorsec}}{\errmessage{%
    Please set major by 'Majosec'.}}{}
  \ifthenelse{\isundefined{\@field}}{\errmessage{%
    Please set field by 'Field'.}}{}
  \ifthenelse{\isundefined{\@tutorcn}}{\errmessage{%
    Please set tutor name by 'Tutor'.}}{}
  \ifthenelse{\isundefined{\@authorcn}}{\errmessage{%
    Please set author name by 'Author'.}}{}
  \ifthenelse{\isundefined{\@studentid}}{\errmessage{%
    Please set student ID date by 'StudentID'.}}{}
  \ifthenelse{\isundefined{\@dateenrolly}}{\errmessage{%
    Please set enroll date by 'DateEnroll'.}}{}
  \ifthenelse{\isundefined{\@dategraduatey}}{\errmessage{%
    Please set graduate date by 'DateGraduate'.}}{}
  \ifthenelse{\isundefined{\@datesubmity}}{\errmessage{%
    Please set submite date by 'DateSubmit'.}}{}
  \ifthenelse{\isundefined{\@datedefencey}}{\errmessage{%
    Please set defence date by 'DateDefence'.}}{}
  \ifthenelse{\equal{\@beginright}{\empty}}{}{%
    \ifthenelse{\equal{\@beginright}{on} \OR \equal{\@beginright}{off}}{}{
    \errmessage{Please use 'on' of 'off' for beginright.}}
  }
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on} \OR \equal{\@listfigtab}{bi} \OR \equal{\@listfigtab}{off}}{}{
    \errmessage{Please use 'on' or 'bi' or 'off' for listfigtab.}}
  }
}
\newcommand{\clearautopage}{%右侧起新页
  \clearpage
  \ifthenelse{\equal{\@printtype}{twoside}}{% 双面
    \ifodd\c@page
    \else
      \hbox{}
      \vspace*{\fill}
      \begin{center}
        {\textcolor[rgb]{0.75,0.75,0.75}{\@emptypagewords}}
      \end{center}
      \vspace{\fill}
      \thispagestyle{empty}
      \newpage
      \if@twocolumn \hbox{} \newpage \fi
    \fi
  }{}
}
\newcommand{\sethyper}{%设置链接引用颜色
  \hypersetup{%
    pdftitle={\@titlecn},
    pdfkeywords={\@keywordcn},
    pdfauthor={\@authorcn}
  }
  \ifthenelse{\equal{\@refcolor}{on}}{%
    \hypersetup{
      allcolors=blue,
    }
  }{%
    \hypersetup{
      allcolors=black,
    }
  }
}
\newcommand{\TranSecretLevel}[1]{%密级翻译
  \ifthenelse{\equal{\@permission}{public}}{\relax}{%
  \ifthenelse{\equal{\@permission}{privacy}}{内~~部}{%
  \ifthenelse{\equal{\@permission}{secret3}}{秘密~\ding{73}~{\bfseries 3}年}{%
  \ifthenelse{\equal{\@permission}{secret5}}{秘密~\ding{73}~{\bfseries 5}年}{%
  \ifthenelse{\equal{\@permission}{secret10}}{秘密~\ding{73}~{\bfseries 10}年}{%
  \ifthenelse{\equal{\@permission}{secret*}}{秘密~\ding{73}~永久}{%
  \ifthenelse{\equal{\@permission}{classified3}}{机密~\ding{73}~{\bfseries 3}年}{%
  \ifthenelse{\equal{\@permission}{classified5}}{机密~\ding{73}~{\bfseries 5}年}{%
  \ifthenelse{\equal{\@permission}{classified10}}{机密~\ding{73}~{\bfseries 10}年}{%
  \ifthenelse{\equal{\@permission}{classified*}}{机密~\ding{73}~永久}{%
  \ifthenelse{\equal{\@permission}{topsecret3}}{绝密~\ding{73}~{\bfseries 3}年}{%
  \ifthenelse{\equal{\@permission}{topsecret5}}{绝密~\ding{73}~{\bfseries 5}年}{%
  \ifthenelse{\equal{\@permission}{topsecret10}}{绝密~\ding{73}~{\bfseries 10}年}{%
  \ifthenelse{\equal{\@permission}{topsecret*}}{绝密~\ding{73}~永久}{%
  \ifthenelse{\equal{\@permission}{permission*}}{密级~\ding{73}~保密期限}{%
  }}}}}}}}}}}}}}}
}
\newcommand{\TranDegree}[1]{%职称翻译
  \frenchspacing
  \ifthenelse{\equal{#1}{教授}}{Prof.}{%
  \ifthenelse{\equal{#1}{副教授}}{Prof.}{%
  \ifthenelse{\equal{#1}{讲师}}{Teacher}{%
  \ifthenelse{\equal{#1}{高工}}{Engineer}{%
  \ifthenelse{\equal{#1}{研究员}}{Researcher}{%
  \ifthenelse{\equal{#1}{副研究员}}{Researcher}{%
  }}}}}}
}
\newcommand{\TranDepartment}[1]{%院系翻译
  \ifthenelse{\equal{#1}{材料科学与工程学院}}{School of Materials Science and Engineering}{%
  \ifthenelse{\equal{#1}{电子信息工程学院}}{School of Electronic and Information Engineering}{%
  \ifthenelse{\equal{#1}{电气工程与自动化学院}}{School of Electronic Engineering and Automation}{%
  \ifthenelse{\equal{#1}{互联网学院}}{School of Internet}{%
  \ifthenelse{\equal{#1}{人工智能学院}}{School of Artificial Intelligence}{%
  \ifthenelse{\equal{#1}{计算机科学与技术学院}}{School of Computer Science and Engineering}{%
  \ifthenelse{\equal{#1}{集成电路学院}}{School of Integrated Circuits}{%
  \ifthenelse{\equal{#1}{经济学院}}{Economics School of Anhui University}{%
  \ifthenelse{\equal{#1}{数学科学学院}}{School of Mathematical Mathematics}{%
  \ifthenelse{\equal{#1}{生命科学学院}}{School of Life Sciences}{%
  \ifthenelse{\equal{#1}{资源与环境工程学院}}{School of Resources and Environmental Engineering}{%
  \ifthenelse{\equal{#1}{管理学院}}{School of Management}{%
  \ifthenelse{\equal{#1}{外语学院}}{School of Foreign Studies}{%
  \ifthenelse{\equal{#1}{物理与光电工程学院}}{School of Physics and Optoelectronic Engineering}{%
  \ifthenelse{\equal{#1}{法学院}}{School of Law}{%
  \ifthenelse{\equal{#1}{文学院}}{College of Liberal Arts}{%
  \ifthenelse{\equal{#1}{商学院}}{School of Business}{%
  \ifthenelse{\equal{#1}{历史学院}}{School of History}{%
  \ifthenelse{\equal{#1}{哲学学院}}{School of Philosophy}{%
  \ifthenelse{\equal{#1}{经济学院}}{School of Economics}{%
  \ifthenelse{\equal{#1}{新闻传播学院}}{School of Journalism and Communication}{%
  \ifthenelse{\equal{#1}{化学化工学院}}{School of Chemistry and Chemical Engineering}{%
  \ifthenelse{\equal{#1}{马克思主义学院}}{School of Marxism}{%
  \ifthenelse{\equal{#1}{社会与政治学院}}{School of Sociology and Political Science}{%
  \ifthenelse{\equal{#1}{国际教育学院}}{School of International Education}{%
  \ifthenelse{\equal{#1}{物质科学与信息技术研究院}}{Institutes of Physical Science and Information Technology}{%
  \ifthenelse{\equal{#1}{纽约石溪学院}}{Stony Brook Institute at Anhui University}{%
  }}}}}}}}}}}}}}}}}}}}}}}}}}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CTeX调整
% 半角/缩进/行伸缩设置
\ctexset{%
    punct=quanjiao, % 全角
    autoindent=2,  % 缩进
    linestretch=2, % 行伸缩
}
% 部分标题修改
\ctexset{%
    contentsname={\heiti 目~~~~录},
    listfigurename={\heiti 图~清~单},
    listtablename={\heiti 表~清~单},
}
% 标题样式修改
\ctexset{%
    chapter={%章标题 : 三号黑体居中 单倍行距 段前/段后0.5行 另起新页
        format=\zihao{3} \bfseries \songti \centering \thispagestyle{fancy},
        fixskip=true,
        beforeskip=19.27pt,
        afterskip=22.48pt,
        break=\clearautopage,
    },
    section={%节标题 : 四号黑体居左 单倍行距 段前/段后0.5行
        format=\zihao{4}  \bfseries \songti \raggedright,
        beforeskip=8.43pt,
        afterskip=11.24pt,
    },
    subsection={%条标题 : 小四号黑体居左 单倍行距 段前/段后0.5行
        format=\zihao{-4} \bfseries \songti \raggedright,
        beforeskip=3.61pt,
        afterskip=3.61pt,
    },
    subsubsection={% 附加4级标题 : 小四号宋体加粗居左
        format=\zihao{-4} \songti \raggedright,
    },
    paragraph={% 附加5级标题 : 小四号宋体居左
        format=\zihao{-4} \songti \raggedright,
    },
    subparagraph={% 附加6级标题 : 小四号宋体居左
        format=\zihao{-4} \songti \raggedright,
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AfterPreamble = AtBeginDocument
% AtEndPreamble -> AtBeginDocument -> AfterEndPreamble -> AtEndDocument -> AfterEndDocument
\AtBeginDocument{%
  \checkinput
  \sethyper
  \captionschinese
%图标计数器换章清零
  \counterwithin{figure}{chapter}
  \counterwithin{table}{chapter}
}
\AfterEndPreamble{%
  \makecovercn
  \makecoveren
  \makecoverinner
  \makestatementbuaa

  \fancyfoot[C]{\zihao{5} \uppercase\expandafter{\romannumeral \thepage}}
  \setcounter{page}{1}
  \cnabstractkeyword
  \enabstractkeyword
  \makecontextlist
  \denotation

  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\chaptermark}[1]{\markboth{第\chinese{chapter}章~~#1}{}}
  \fancyfoot[C]{\zihao{5} \thepage}
  \fancyhead[CE]{\zihao{-5} \leftmark}
  \ifthenelse{\equal{\@thesis}{master} \OR \equal{\@thesis}{professional}}{%
  \ifthenelse{\equal{\@blindmode}{off}}{
    \fancyhead[CO]{\zihao{-5}  安徽大学硕士学位论文}
  }{
    \fancyhead[CO]{\zihao{-5}  XX大学硕士学位论文}
  }
      }{}
  \ifthenelse{\equal{\@thesis}{doctor}}{%
      \fancyhead[CO]{\zihao{-5} 安徽大学博士学位论文}}{}
  \setcounter{page}{1}
}


%% 制作封面及声明
\newcommand{\makecovercn}{% 中文封面
{ %\pdfbookmark[0]{中文封面}{makecovercn}

  {\zihao{5} \heiti \bfseries \noindent
    \makebox[5\ccwd][s]{中图分类号}：{\bfseries \@clc}%
    \hfill \TranSecretLevel{\@permission}
    \\
    \makebox[5\ccwd][s]{论文编号}：{\ifthenelse{\equal{\@blindmode}{off}}{\bfseries \@studentid}{\bfseries XXX}}
  }

  \vspace{80pt}

  \ifthenelse{\equal{\@blindmode}{off}}{
  \begin{figure}[h]
    \centering
    \includegraphics{pic/logo-ahu.eps}
  \end{figure}
  \vspace{-10pt}
  }{\vspace{60pt}}
  \begin{figure}[h]
    \centering
    \ifthenelse{\equal{\@thesis}{master}}{\includegraphics[width=0.9\linewidth]{pic/head-master}}{
    \ifthenelse{\equal{\@thesis}{professional}}{\includegraphics[width=0.9\linewidth]{pic/head-professional}}{
    \ifthenelse{\equal{\@thesis}{doctor}}{\includegraphics[width=0.9\linewidth]{pic/head-doctor}}{
    }}}
  \end{figure}

  \centering

  \vspace{45pt}
  \begin{spacing}{1.2}
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{}
    \zihao{-0} \songti \bfseries \@titlecn
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{%
      \\ \vspace{10pt}
      \zihao{1} \@subtitlecn
   }
  \end{spacing}

  \vspace{100pt}
  \begin{spacing}{1.8}
    \ziju{0.2} \zihao{4} \heiti
     \ifthenelse{\equal{\@blindmode}{off}}{
        \ifthenelse{\equal{\@thesis}{doctor}}{
          \begin{tabular}{ll}
            作者姓名  & \@authorcn \\
            一级学科  & \@major \\
            二级学科  & \@majorsec \\
            指导教师  & \@tutorcn
          \end{tabular}
          }{
          \ifthenelse{\equal{\@thesis}{master}}{
            \begin{tabular}{ll}
              作者姓名  & \@authorcn \\
              一级学科  & \@major \\
              二级学科  & \@majorsec \\
              指导教师  & \@tutorcn
            \end{tabular}
          }{

            \begin{tabular}{ll}
              作者姓名  & \@authorcn \\
              专业学位类别  & \@procategory \\
              专业学位领域  & \@profield \\
              指导教师  & \@tutorcn
            \end{tabular}
          }
          }
      }{
        \ifthenelse{\equal{\@thesis}{doctor}}{
          \begin{tabular}{ll}
            作者姓名  & XXX \\
            一级学科  & \@major \\
            二级学科  & \@majorsec \\
            指导教师  & XXX
          \end{tabular}
          }{
          \ifthenelse{\equal{\@thesis}{master}}{
            \begin{tabular}{ll}
              作者姓名  & XXX \\
              一级学科  & \@major \\
              二级学科  & \@majorsec \\
              指导教师  & \@tutorcn
            \end{tabular}
          }{

            \begin{tabular}{ll}
              作者姓名  & XXX \\
              专业学位类别  & \@procategory \\
              专业学位领域  & \@profield \\
              指导教师  & XXX
            \end{tabular}
          }
          }
      }
  \end{spacing}
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\makecoveren}{% 英文封面
{ %\pdfbookmark[0]{英文封面}{makecoveren}
  \centering

  \ \vspace{100pt}

  \begin{spacing}{1.2}

    {\begin{spacing}{1.2}
      \zihao{-2} \bfseries
      \ifthenelse{\isundefined{\@subtitleen}}{\vspace{20pt}}{}
      \@titleen
      \ifthenelse{\isundefined{\@subtitleen}}{\vspace{20pt}}{%
        \\ \vspace{10pt}
        \zihao{4} \@subtitleen}
    \end{spacing}
    }

    \vspace{50pt}

    {\zihao{4}
      A Dissertation Submitted for the Degree of
      \ifthenelse{\equal{\@thesis}{master}}{Master}{%
      \ifthenelse{\equal{\@thesis}{professional}}{Master}{%
      \ifthenelse{\equal{\@thesis}{doctor}}{Doctor of Philosophy}{%
      \ifthenelse{\equal{\@thesis}{prodoctor}}{Doctor of Engineering}{%
      }}}}
    }

    \vspace{200pt}
    {\zihao{-3} \bfseries
            \ifthenelse{\equal{\@blindmode}{off}}{
      \begin{tabular}{cll}
        \ifthenelse{\isundefined{\@cotutorcn}}{%双导师
          \makebox[70pt][s]{Candidate}:   \@authoren \\
          \vspace{10pt}\\
          \makebox[70pt][s]{Supervisor}:  \@tutoren \\
        }{%
          \makebox[77pt][s]{Candidate}:   \@authoren \\
          \vspace{10pt}\\
          \makebox[77pt][s]{Supervisors}: & \TranDegree{\@tutordegree} \hspace{-8pt} \@tutoren \\
                                          & \TranDegree{\@cotutordegree} \hspace{-8pt} \@cotutoren\\
        }
     \end{tabular}
      }{
 \begin{tabular}{cll}
        \ifthenelse{\isundefined{\@cotutorcn}}{%双导师
          \makebox[70pt][s]{Candidate}:   XXX \\
          \vspace{10pt}\\
          \makebox[70pt][s]{Supervisor}:  XXX \\
        }{%
          \makebox[77pt][s]{Candidate}:   XXX \\
          \vspace{10pt}\\
          \makebox[77pt][s]{Supervisors}: & XXX \\
                                                             & XXX\\
        }
      \end{tabular}
    }}
  \end{spacing}

%  \vspace{150pt}
%
%  \begin{spacing}{2.2}
%    {\zihao{-3}
%      \TranDepartment{\@department} \\
%      Anhui University, Hefei, China
%    }
%  \end{spacing}

  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\makecoverinner}{% 封面内页
{ %\pdfbookmark[0]{题目页}{makecoverinner}

  {\zihao{5} \heiti \bfseries \noindent
    \makebox[5\ccwd][s]{中图分类号}：{\bfseries \@clc}%
    % \hfill \TranSecretLevel{\@permission}
    \\
    \makebox[5\ccwd][s]{论文编号}：{\ifthenelse{\equal{\@blindmode}{off}}{\bfseries \@studentid}{\bfseries XXX}}
  }

  \centering
  \vspace{150pt}

  \begin{spacing}{1.2}
    {\zihao{-2} \heiti
        \ifthenelse{\equal{\@thesis}{master}}{%
         \makebox[11\ccwd][s]{硕士学位论文}}{
        \ifthenelse{\equal{\@thesis}{professional}}{%
         \makebox[11\ccwd][s]{硕士学位论文}}{
        \ifthenelse{\equal{\@thesis}{doctor}}{%
          \makebox[11\ccwd][s]{博士学位论文}}{}
        }}

    }

    \vspace{50pt}
    {\begin{spacing}{1.2}
    \zihao{-1} \heiti
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{}
    \@titlecn
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{%
      \\ \vspace{10pt}
      \zihao{2} \@subtitlecn}
    \end{spacing}
    }
  \end{spacing}

  % \ifthenelse{\equal{\@thesis}{master}}{学科专业}{专业名称}

  \vspace{120pt}
  \begin{spacing}{2.3}
    \zihao{-4} \songti
    \ifthenelse{\equal{\@blindmode}{off}}{
    \begin{tabular}{lrrrlrrr}
      作者姓名     &          \multicolumn{3}{l}{\@authorcn}                   & 申请学位级别        &   \multicolumn{3}{l}{ \hspace{-3pt} \@branch } \\
      指导教师姓名 &          \multicolumn{3}{l}{\@tutorcn}                    & 职\hspace{2\ccwd}称 &                        \multicolumn{3}{l}{\@tutordegree}                    \\
      \ifthenelse{\equal{\@thesis}{doctor}}{学科专业}{\ifthenelse{\equal{\@thesis}{master}}{学科专业}{专业名称}}     &          \multicolumn{3}{l}{\ifthenelse{\equal{\@thesis}{doctor}}{\@mastermajor}{\ifthenelse{\equal{\@thesis}{master}}{\@mastermajor}{\@proname}}}                    & 研究方向            &                        \multicolumn{3}{l}{\@field}                            \\
      学习时间自   & \@dateenrolly\ 年 & \@dateenrollm\ 月 & \@dateenrolld\ 日 & \hspace{2\ccwd}起至 & \@dategraduatey\ 年 & \@dategraduatem\ 月 & \@dategraduated\ 日止             \\
      论文提交日期 & \@datesubmity\ 年 & \@datesubmitm\ 月 & \@datesubmitd\ 日 & 论文答辩日期        & \@datedefencey \ 年 & \@datedefencem \ 月 & \@datedefenced \ 日\hspace{\ccwd} \\
%      学位授予单位 &          \multicolumn{3}{l}{安徽大学}             & 学位授予日期        &                  年 &                  月 &                  日\hspace{\ccwd} \\
\end{tabular}
}{
\begin{tabular}{lrrrlrrr}
        作者姓名     &          \multicolumn{3}{l}{XXX}                   & 申请学位级别        &   \multicolumn{3}{l}{ \hspace{-3pt} \@branch } \\
        指导教师姓名 &          \multicolumn{3}{l}{XXX}                    & 职\hspace{2\ccwd}称 &                        \multicolumn{3}{l}{XXX}                      \\
        \ifthenelse{\equal{\@thesis}{doctor}}{学科专业}{\ifthenelse{\equal{\@thesis}{master}}{学科专业}{专业名称}}     &          \multicolumn{3}{l}{\ifthenelse{\equal{\@thesis}{doctor}}{\@mastermajor}{\ifthenelse{\equal{\@thesis}{master}}{\@mastermajor}{\@proname}}}                      & 研究方向            &                        \multicolumn{3}{l}{\@field}                         \\
        学习时间自   & \@dateenrolly\ 年 & \@dateenrollm\ 月 & \@dateenrolld\ 日 & 起至 & \@dategraduatey\ 年 & \@dategraduatem\ 月 & \@dategraduated\ 日止             \\
        论文提交日期 & \@datesubmity\ 年 & \@datesubmitm\ 月 & \@datesubmitd\ 日 & 论文答辩日期        & \@datedefencey \ 年 & \@datedefencem \ 月 & \@datedefenced \ 日\hspace{\ccwd} \\
  %      学位授予单位 &          \multicolumn{3}{l}{安徽大学}             & 学位授予日期        &                  年 &                  月 &                  日\hspace{\ccwd} \\
\end{tabular}
  }
  \end{spacing}
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\makestatementbuaa}{% 声明
{
  \ifthenelse{\equal{\@blindmode}{off}}{
  % \pdfbookmark[0]{独创性声明}{makestatementbuaa}
  \includepdf[pages=-]{statement.pdf}
  % \begin{spacing}{1.7}%1.5+0.2
  %   {\zihao{-1} \fangsong \centerline{独创性声明}}
  %   {\zihao{-4} \fangsong ~\par
  %       本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成
  %   果。据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表
  %   或撰写过的研究成果，也不包含为获得安徽大学或其他教育机构的学位或证书而使用过
  %   的材料。如有学术不端行为，一切后果由本人承担，与导师和安徽大学无关。\\
  %   {学位论文作者签名：\hspace{7\ccwd} \hspace{1\ccwd}
  %   签字日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}
  %   }

  %   \vspace{100pt}

  %   {\zihao{-1} \fangsong \centerline{学位论文版权使用授权书}}
  %   {\zihao{-4} \fangsong ~\par
  %       本学位论文作者完全了解安徽大学有关保留、使用学位论文的规定，有权保留并向
  %   国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人授权安徽
  %   大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印
  %   或扫描等复制手段保存、汇编学位论文。

  %     （保密的学位论文在解密后适用本授权书）\\
  %     {学位论文作者签名：\hspace{7\ccwd} \hspace{1\ccwd}
  %     导师签名：\\
  %     {签字日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}    \hspace{2\ccwd}
  %     签字日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}
  %   }
  % \end{spacing}
  \clearautopage
  }{}
}}


\newcommand{\cnabstractkeyword}{% 中文摘要
{\pdfbookmark[0]{摘要}{cnabstractkeyword}

  \begin{spacing}{1.7}%1.5+0.2
    {\zihao{3} \heiti \bfseries \centerline{摘~~~~要}}
    {\zihao{-4} \songti ~\par
      \@abstrctcn \par ~\par
      {\heiti \bfseries 关键词：} {\heiti \@keywordcn}
    }

    % \clearpage
    % \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}

    % {\zihao{3}  \bfseries \centerline{Abstract}}
    % {\zihao{-4} ~\par
    %   \@abstrcten \par ~\par
    %   {\bfseries Key words:} \@keyworden
    % }

  \end{spacing}

  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}

\newcommand{\enabstractkeyword}{% 英文摘要
{\pdfbookmark[0]{Abstract}{enabstractkeyword}

  \begin{spacing}{1.7}%1.5+0.2
    {\zihao{3}  \bfseries \centerline{Abstract}}
    {\zihao{-4} ~\par
      \@abstrcten \par ~\par
      {\bfseries Key words:} \@keyworden
    }

  \end{spacing}

  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}

\newcommand{\makecontextlist}{% 目录
{\pdfbookmark[0]{目录}{makecontextlist}
  \tableofcontents
  \renewcommand\addvspace[1]{}
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on}}{%
      \renewcommand{\addvspace}[1]{}
      \clearpage
      % \pdfbookmark[0]{图清单}{listoffigures}
      \listoffigures
      \clearpage

      % \pdfbookmark[0]{表清单}{listoftables}
      \listoftables
      \clearpage

      \lstlistoflistings
    }{}
    \ifthenelse{\equal{\@listfigtab}{bi}}{%
      \renewcommand{\addvspace}[1]{}
      \clearpage
      % \pdfbookmark[0]{图清单}{listoffigures}
      \listoffigures
      \clearpage
      % \pdfbookmark[0]{List of Figures}{listoffigureEnges}
      \listoffigureEnges
      \clearpage
      % \pdfbookmark[0]{表清单}{listoftables}
      \listoftables
      \clearpage
      % \pdfbookmark[0]{List of Tables}{listoftableEnges}
      \listoftableEnges
      \clearpage
      % \pdfbookmark[0]{代码清单}{lstlistoflistings}
      \lstlistoflistings
      \clearpage
      % \pdfbookmark[0]{List of Listings}{listoflstlistingEng}
      \listoflstlistingEng
    }{}
  }
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\denotation}{% 缩写定义
{\ifthenelse{\isundefined{\@abbreviations}}{}{%
    \pdfbookmark[0]{主要符号表}{denotation}
    \chapter*{主要符号表}
    %\centering
    %\begin{tabular}{cl}
      \@abbreviations
    %\end{tabular}%
    \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
  }
}}


\newcommand{\chaptera}[1]{%无章号但编入目录
  \ctexset{chapter/numbering=false}
  \chapter{#1}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\summary}{%结论
  \ctexset{chapter/numbering=false}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\Bib}[2]{%参考文献
  \bibliographystyle{#1}
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{参考文献}
  \bibliography{#2}
}
\renewcommand{\appendix}{% 附录
  \ctexset{chapter/numbering=false}
  \chapter{附~~~~录}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  % fix numbering for appendix
  % \renewcommand{\thefigure}{A\arabic{figure}}
  % \setcounter{figure}{0}
  % \renewcommand{\thetable}{A\arabic{table}}
  % \setcounter{table}{0}
  % \renewcommand{\theequation}{A\arabic{equation}}
  % \setcounter{equation}{0}
  \renewcommand{\thefigure}{\thesection\arabic{figure}}
  \numberwithin{figure}{section}
  \renewcommand{\thetable}{\thesection\arabic{table}}
  \numberwithin{table}{section}
  \renewcommand{\theequation}{\thesection\arabic{equation}}
  \numberwithin{equation}{section}
  \renewcommand{\thelstlisting}{\thesection\arabic{lstlisting}}
  \numberwithin{lstlisting}{section}
}
\newcommand{\achievement}{%学术成果
  \ctexset{chapter/numbering=false}
  \ifthenelse{\equal{\@thesis}{master}}{\chapter{攻读硕士学位期间取得的学术成果}}{
  \ifthenelse{\equal{\@thesis}{professional}}{\chapter{攻读硕士学位期间取得的学术成果}}{
  \ifthenelse{\equal{\@thesis}{doctor}}{\chapter{攻读博士学位期间取得的研究成果}}{
  }}}

  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  % \gdef\thesection{\@Alph\c@section}%
  % \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  \gdef\thesection{\zhnum{section}}%
  \gdef\thesubsection{\@arabic\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\acknowledgments}{%致谢
  \ctexset{chapter/numbering=false}
  \chapter{致~~~~谢}

  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\biography}{%作者简介
  \ctexset{chapter/numbering=false}
  \chapter{作者简介}

  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}

%% --END--
\endinput
