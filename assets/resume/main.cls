% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=0.70cm, vmargin=0.15cm]{geometry}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{blue}{RGB}{41, 128, 185}
\definecolor{darkgreen}{RGB}{19, 141, 117}
\definecolor{darkblue}{HTML}{057bfa}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{010000} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[
    Color=primary,
    Path=fonts/lato/,
    BoldItalicFont=Lato-RegIta,
    BoldFont=Lato-Reg,
    ItalicFont=Lato-LigIta
]{Lato-Lig}

\setsansfont[
    Scale=MatchLowercase,
    Mapping=tex-text, 
    Path=fonts/raleway/
]{Raleway-ExtraLight}

\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=darkblue,
    filecolor=darkblue,      
    urlcolor=darkblue,
    bookmarks=true,
}
\urlstyle{same}
\def\Hy@href#{%
  \bfseries
  \addfontfeatures{Color=darkblue}\hyper@normalise\href@
}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{
    \begin{textblock}{60}(155,5)
    \color{date}
    \fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}
    \fontsize{7pt}{9pt}
    \selectfont Last Updated on \today
    \end{textblock}
}

% Name command
\newcommand{\namesection}[3]{
\centering{
\color{black}
\fontsize{20pt}{30pt}
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-12pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{4pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{14pt}{21pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
