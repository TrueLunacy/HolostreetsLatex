\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{shadowrun}%[Shadowrun-style two-column book class]

\LoadClass[twocolumn]{book}

\RequirePackage{xcolor}
\RequirePackage{etoolbox}
\RequirePackage{multirow}
\RequirePackage[
    paperheight=270mm,
    paperwidth=216mm,
    inner=20mm,
    outer=15mm,
    top=32.5mm,
    bottom=20mm
]{geometry}
\RequirePackage{fontspec}
\RequirePackage{background}
\RequirePackage{etoc}
\RequirePackage{tikz}
\RequirePackage{etoolbox}
\RequirePackage{titlesec}
\RequirePackage{anyfontsize}
\RequirePackage{fancyhdr}
\RequirePackage{ragged2e}
\RequirePackage{transparent}
\RequirePackage{titling}
\RequirePackage{enumitem}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{mdframed}[framemethod=tikz]
\RequirePackage{float}
\RequirePackage{tabularx}
\RequirePackage{setspace}
\RequirePackage{stfloats}

\renewcommand{\topfraction}{.85}
\renewcommand{\bottomfraction}{.7}
\renewcommand{\textfraction}{.15}
\renewcommand{\floatpagefraction}{.66}
\renewcommand{\dbltopfraction}{.66}
\renewcommand{\dblfloatpagefraction}{.66}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}

\usetikzlibrary{positioning}
\usetikzlibrary{patterns}
\usetikzlibrary{calc}
\usetikzlibrary{math}

\definecolor{srpurple}{RGB}{189, 26, 141}
\definecolor{srred}{RGB}{126, 15, 18}
\definecolor{srblue}{RGB}{30, 67, 130}

\definecolor{tablebackground}{RGB}{235, 234, 229}
\definecolor{tablebackground2}{RGB}{224, 224, 217}

%- default purple theme
\colorlet{corecolor}{srpurple}
\colorlet{chaptercolor}{white}
\colorlet{sectioncolor}{srpurple}
\colorlet{subsectioncolor}{black}
\def\logo{SR6 logo.png}

\DeclareOption{red}
{
    \colorlet{corecolor}{srred}
    \colorlet{chaptercolor}{white}
    \colorlet{sectioncolor}{srred}
    \colorlet{subsectioncolor}{black}
    \def\logo{SR6 logo-red.png}
}
\DeclareOption{blue}
{
    \colorlet{corecolor}{srblue}
    \colorlet{chaptercolor}{white}
    \colorlet{sectioncolor}{srblue}
    \colorlet{subsectioncolor}{black}
    \def\logo{SR6 logo-blue.png}
}

% default logo SR6
\def\titlelogo{logos/Shadowrun 6 Logo.png}

\DeclareOption{logo-5e}{\def\titlelogo{logos/Shadowrun 5 Logo.png}}
\DeclareOption{logo-4e}{\def\titlelogo{logos/Shadowrun 4 Logo.png}}
\DeclareOption{logo-3e}{\def\titlelogo{logos/Shadowrun 3 Logo.png}}
\DeclareOption{logo-2e}{\def\titlelogo{logos/Shadowrun 1-2 Logo.png}}
\DeclareOption{logo-1e}{\def\titlelogo{logos/Shadowrun 1-2 Logo.png}}

\DeclareOption*{\PackageWarning{shadowrun}{Unknown ‘\CurrentOption’}}

\renewcommand\arraystretch{1.2}

\def\titleimage{exampleimage.jpg}

\newcommand{\TitleImage}[1]{\def\titleimage{#1}}

\newdimen\titleimageheight

\backgroundsetup{
    scale=1, 
    opacity=1,
    angle=0,
    color=black,
    contents={%
    \ifodd\LastMark{drawBackground}
    \begin{tikzpicture}
        \node (background) at (0, 0) {%
        \ifodd\value{page}
        \includegraphics[width=\paperwidth,height=\paperheight]{background-left.png}
        \else
        \includegraphics[width=\paperwidth,height=\paperheight]{background-right.png}
        \fi
        };
        \begin{pgfinterruptboundingbox}
            \ifodd\FirstMark{isChapter}
                \node (chapter) [below=0cm of background.north] {\includegraphics[width=\paperwidth]{chapter-intro.png}};
                \node (logo) [above right=1.8cm and (1in + \hoffset + \oddsidemargin + 0.5\textwidth)-6cm of chapter.south west]{{\transparent{0.4}\includegraphics[width=12cm]{\logo}}};
                \node (chaptertext) [align=center, above=1.5cm+20pt of logo.south] {\color{chaptercolor}\fontsize{60pt}{70pt}\headerfont\MakeUppercase{\FirstMark{chapter}}};
                \node (bottom_left) [shape=coordinate, below left=0.3cm+4pt and 2cm of chaptertext.south west] {};
                \node (bottom_right) [shape=coordinate, below right=0.3cm and 2cm of chaptertext.south east] {};
                \node (top_left) [shape=coordinate, above left=0.3cm+4pt and 2cm of chaptertext.north west] {};
                \node (top_right) [shape=coordinate, above right=0.3cm and 2cm of chaptertext.north east] {};
                \fill [pattern color=corecolor, pattern=crosshatch] (bottom_left) rectangle (bottom_right);
                \fill [pattern color=corecolor, pattern=crosshatch] (top_left) rectangle(top_right);
            \else
                \node (chapter) [below=-12.5cm of background.north] {\includegraphics[width=\paperwidth]{chapter-intro.png}};
                \node (logo) [above right=-0.8cm and 1cm of chapter.south west]{\includegraphics[width=4cm]{\logo}};
                \ifodd\LastMark{drawPageNumber}
                    \node (pageanchor) [shape=coordinate, above left=2.3cm and 2.5cm of chapter.south east]{};
                    \draw [color=corecolor, line width=1pt] (pageanchor) -- ++(0, -1.12) -- ++(-2.04,0) -- ++(0, 1.52) -- ++(1.66, 0) -- (pageanchor);
                    \node (pagetext) [below left=-0.2cm and 0.95cm of pageanchor] {\color{white}\tt\small PAGE};
                    \node (pageline) [below right=0.1cm and 0cm of pagetext.south west] {\color{white}\tt\tiny////////////////////};
                    \node (pagenum) [below=0.1cm of pageline] {\color{white}\tt\huge\thepage};
                \fi
            \fi
        \end{pgfinterruptboundingbox}
    \end{tikzpicture}
    \else
    \begin{tikzpicture}
        \node (background) at (0, 0) {%
            \includegraphics[width=\paperwidth, height=\paperheight]{frontpage.png}
        };
        \node (title) [below=1cm of background.north] {%
            \includegraphics[width=\paperwidth]{\titlelogo}
        };
        \node (holostreets) [above=1.5cm of background.south] {%
            \includegraphics[width=12cm]{holostreets.png}
        };
        \node (legaltext) [below=0cm of holostreets.south] {
            \parbox{16cm}{\centering\footnotesize\color{gray}Shadowrun, Sixth World, and Matrix, and associated graphics and logos are registered trademarks and/or trademarks of The Topps Company, Inc., in the United States and/or other countries. Catalyst Game Labs and the Catalyst Game Labs logo are trademarks of InMediaRes Productions, LLC.}
        };
        \node (titletext) [below=0cm of title.south] {%
            \parbox{20cm}{
                \centering\fontsize{40pt}{60pt}\headerfont\color{white}\MakeUppercase{\thetitle}
            }
        };
        \ifdefined\titleimage
            \node (bottom) [shape=coordinate, below=0cm of holostreets.north] {};
            \node (top) [shape=coordinate, below=0.5cm of titletext.south] {};
            \pgfextracty{\titleimageheight}{\pgfpointdiff{\pgfpointanchor{bottom}{center}}{\pgfpointanchor{top}{center}}}
            \node (titlelogo) [below=0.5cm of top] {%
                \includegraphics[height=\titleimageheight]{\titleimage}
            };
        \fi
    \end{tikzpicture}
    \fi
    }
}

\etocsettocstyle
{
}
{
}

\patchcmd{\chapter}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}

\renewcommand{\headrulewidth}{0pt}

\NewMarkClass{chapter}
\NewMarkClass{section}
\NewMarkClass{isChapter}
\NewMarkClass{drawBackground}
\NewMarkClass{drawPageNumber}

\renewcommand{\chaptermark}[1]{\InsertMark{chapter}{#1}\InsertMark{section}{}\InsertMark{isChapter}{1}\InsertMark{isChapter}{0}}
\renewcommand{\sectionmark}[1]{\InsertMark{section}{#1}}

\renewenvironment{FlushLeft}{%
   \topsep=0pt
   \partopsep=0pt 
   \trivlist%
   \RaggedRight\item\relax
   }{%
   \endtrivlist%
}

\setmainfont{Shadowrun}
\setmonofont{Decker}
\newfontfamily\headerfont{Mustica Pro Semi-Bold}
\newfontfamily\tablefont{Creato Display}

\def\headerrule{}
\newlength{\postheaderlength}
\setlength{\postheaderlength}{4pt}

\newcommand{\nullify}[1]{}

\titleformat{\chapter}[display]{\centering\color{chaptercolor}\fontsize{60pt}{70pt}\headerfont}{}{0pt}{\nullify}
\titlespacing{\chapter}{0pt}{130pt}{90pt}
\titleformat{\section}[hang]{\color{sectioncolor}\headerfont\huge\RaggedRight}{}{0pt}{\MakeUppercase}[\ifdefined\headerrule\hrule\fi]
\titleformat{\subsection}[hang]{\color{subsectioncolor}\headerfont\Large\RaggedRight}{}{0pt}{\MakeUppercase}[\ifdefined\headerrule\hrule\fi]
\titleformat{\subsubsection}[hang]{\color{subsectioncolor}\headerfont\normalsize\RaggedRight}{}{0pt}{\MakeUppercase}[\ifdefined\headerrule\hrule\fi]
\titlespacing{\section}{0pt}{8pt plus 8pt minus 8pt}{\postheaderlength}
\titlespacing{\subsection}{0pt}{8pt plus 8pt minus 8pt}{\postheaderlength}
\titlespacing{\subsubsection}{0pt}{8pt plus 8pt minus 8pt}{\postheaderlength}

\ProcessOptions\relax

\input{environments.tex}

\AtBeginDocument{
    \pagenumbering{arabic}
    \InsertMark{isChapter}{0}
    \InsertMark{drawBackground}{1}
    \InsertMark{drawPageNumber}{0}

    \fancyhead{}
    \fancyfoot{}
    \fancyfoot[LO]{\headerfont\color{corecolor}\MakeUppercase{\FirstMark{chapter}\space//\space\large\LastMark{section}}}
    \fancyfoot[RE]{\headerfont\color{corecolor}\MakeUppercase{\large\LastMark{section}\space//\space\normalsize\FirstMark{chapter}}}

    \pagestyle{fancy}
}



\renewcommand{\maketitle}
{
\InsertMark{drawPageNumber}{0}
\InsertMark{drawBackground}{0}
\null
\clearpage
\InsertMark{drawBackground}{1}
\InsertMark{drawPageNumber}{1}
}

\pretocmd{\tableofcontents}
{
    \InsertMark{drawPageNumber}{0}
}{}{}

\apptocmd{\tableofcontents}
{
    \cleardoublepage
    \beginnumbering
}{}{}

\newcommand{\beginnumbering}
{
    \InsertMark{drawPageNumber}{1}    
    \setcounter{page}{1}
}