%
% $Id: masterthesis.cls,v 1.5 2000/06/27 02:40:09 bill Exp $
%

\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{masterthesis}[2000/06/08 v1.0 class for master thesis]

% Based on jreport
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jreport}}
\ProcessOptions
\LoadClass{jreport}

% for titles, etc.
\def\TJtitle#1{\gdef\@TJtitle{#1}}	% title in Japanese for titlepage
%\def\TEtitle#1{\gdef\@TEtitle{#1}}	% title in English  for titlepage

\def\AJtitle#1{\gdef\@AJtitle{#1}}	% title in Japanese for abstract
\def\AEtitle#1{\gdef\@AEtitle{#1}}	% title in English  for abstract

\def\Jauthor#1{\gdef\@Jauthor{#1}}	% author in Japanese
\def\Eauthor#1{\gdef\@Eauthor{#1}}	% author in English
\def\Kauthor#1{\gdef\@Kauthor{#1}}	% author in Kana

\def\StudentID#1{\gdef\@StudentID{#1}}	% Student ID
\def\Boss#1{\gdef\@Boss{#1}}		% Boss (not Great NoSuKe!!)

\def\Tmajor#1{\gdef\@Tmajor{#1}}  	% major in Japanese for titlepage
\def\Amajor#1{\gdef\@Amajor{#1}}  	% major in Japanese for abstract
\def\Emajor#1{\gdef\@Emajor{#1}}  	% major in English (for abstract)

\def\Tcourse#1{\gdef\@Tcourse{#1}}	% cource in Japanese for titlepage
\def\Acourse#1{\gdef\@Acourse{#1}}	% cource in Japanese for abstract
\def\Ecourse#1{\gdef\@Ecourse{#1}}	% cource in english (for abstract)

% table of contents
\def\tableofcontents{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\chapter*{$BL\(B $B<!(B\@mkboth{}{$BL\(B $B<!(B}}
 \@starttoc{toc}\if@restonecol\twocolumn\fi}
%\def\l@part#1#2{\addpenalty{-\@highpenalty}
% \addvspace{2.25em plus 1pt} \begingroup
% \@tempdima 3em \parindent \z@ \rightskip \@pnumwidth \parfillskip
%-\@pnumwidth
% {\large \bf \leavevmode #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
% \nobreak \endgroup}

\def\l@chapter#1#2{\pagebreak[3]
 \vskip 1.0em plus 1pt \@tempdima 1.5em \begingroup
 \parindent \z@ \rightskip \@pnumwidth
 \parfillskip -\@pnumwidth
 \def\@lnumwidth{4zw}%20000627
 \bf \leavevmode \advance\leftskip\@tempdima \hskip -\leftskip #1\nobreak\hfil
\nobreak\hbox to\@pnumwidth{\hss #2}\par
 \endgroup}
\def\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\def\listoffigures{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\chapter*{$B?^(B $BL\(B $B<!(B\@mkboth
 {}{$B?^(B $BL\(B $B<!(B}}\@starttoc{lof}\if@restonecol
 \twocolumn\fi}
\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\def\listoftables{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\chapter*{$BI=(B $BL\(B $B<!(B\@mkboth
 {}{$BI=(B $BL\(B $B<!(B}}\@starttoc{lot}\if@restonecol
 \twocolumn\fi}
\let\l@table\l@figure

\def\thebibliography#1{\chapter*{$B;29MJ88%(B\@mkboth
 {}{$B;2(B $B9M(B $BJ8(B $B8%(B}}
 \addcontentsline{toc}{chapter}{$B;29MJ88%(B}%20000627;please delete if not necessary
 \list
 {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
 \advance\leftmargin\labelsep
 \usecounter{enumi}}
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy
 \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist

\def\fnum@figure{$B?^(B \thefigure}
\def\fnum@table{$BI=(B \thetable}

\newif\if@restonecol
\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
\columnseprule \z@
\columnsep 35pt\twocolumn[\@makeschapterhead{$B:w(B $B0z(B}]
 \@mkboth{}{$B:w(B $B0z(B}\thispagestyle{plain}\parindent\z@
 \parskip\z@ plus .3pt\relax\let\item\@idxitem}
\def\@idxitem{\par\hangindent 40pt}
\def\subitem{\par\hangindent 40pt \hspace*{20pt}}
\def\subsubitem{\par\hangindent 40pt \hspace*{30pt}}
\def\endtheindex{\if@restonecol\onecolumn\else\clearpage\fi}
\def\indexspace{\par \vskip 10pt plus 5pt minus 3pt\relax}

\def\@chapapp{$BBh(B\thechapter $B>O(B}

\def\@makechapterhead#1{ \vspace*{30pt} { \parindent 0pt \raggedright
 \ifnum \c@secnumdepth >\m@ne \huge\bf \@chapapp{} \par
 \vskip 20pt \fi \Huge \bf #1\par
 \nobreak \vskip 40pt } }

\def\@makeschapterhead#1{ \vspace*{30pt} { \parindent 0pt \raggedright
 \Huge \bf #1\par
 \nobreak \vskip 40pt } }

\def\chapter{\clearpage \thispagestyle{plain} \global\@topnum\z@
\@afterindenttrue \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
 \refstepcounter{chapter}
 \typeout{\@chapapp}
 \addcontentsline{toc}{chapter}{\protect
 \numberline{\@chapapp}#1}\else
%\numberline{\thechapter}#1}\else
 \addcontentsline{toc}{chapter}{#1}\fi
 \chaptermark{#1}
 \addtocontents{lof}{\protect\addvspace{10pt}}
\addtocontents{lot}{\protect\addvspace{10pt}} \if@twocolumn
\@topnewpage[\@makechapterhead{#2}]
 \else \@makechapterhead{#2}
 \@afterheading \fi}
\def\@schapter#1{\if@twocolumn \@topnewpage[\@makeschapterhead{#1}]
 \else \@makeschapterhead{#1}
 \@afterheading \fi}

%\font\logofont=kiis10 scaled \magstep2

\makeatletter
\def\ps@headings{\let\@mkboth\markboth
\def\@oddhead{$\underline{\makebox[\textwidth]{{\sl\leftmark}\hfill{\sl\rightmark}}}$}
\def\@oddfoot{\rm\hfil\thepage\hfil}
\def\@evenhead{$\underline{\makebox[\textwidth]{{\sl\leftmark}\hfill{\sl\rightmark}}}$}
\def\@evenfoot{\rm\hfil\thepage\hfil}
\def\chaptermark##1{\markboth{\ifnum\c@secnumdepth >\m@ne\thechapter.\ \fi ##1}{}}
\def\sectionmark##1{\markright{\ifnum\c@secnumdepth >\z@\thesection.\ \fi ##1}}}

\newif\if$B@>Nq(B\let\if$B@>Nq(B=\iffalse \def\$B@>Nq(B{\let\if$B@>Nq(B=\iftrue}
\def\thisyear{{\if$B@>Nq(B\count0=\year\else%
\count0=\year\advance\count0 -1989 $BJ?@.(B\,\fi%
\ifnum\count0=1 2\else\number\count0\fi\,$BG/EY(B}}

\long\def\abst#1{\long\gdef\@abst{#1}}
\long\def\jabst#1{\long\gdef\@jabst{#1}}
%\long\def\jabstfoot#1{\long\gdef\@jabstfoot{#1}}
\newif\if$B30OH(B\let\if$B30OH(B=\iftrue
\long\def\noabstframe{\let\if$B30OH(B=\iffalse}
\def\makejabstract{\begin{titlepage}
 \oddsidemargin=0truecm
 \evensidemargin=0truecm
 \topmargin=0truecm
% \textwidth=18truecm
% \textheight=25truecm
 \baselineskip=6mm
 \setlength{\unitlength}{1mm}
 \ifnum\@ptsize=2
  \let\huge\LARGE \let\LARGE\Large \let\Large\large \let\large\normalsize
  \let\normalsize\small \let\small\footnotesize \let\footnotesize\scriptsize
 \fi
 \ifnum\@ptsize=1
  \let\small\footnotesize \let\footnotesize\scriptsize
 \fi
 \begin{center}
  \begin{picture}(154,222)(0,0)
   \normalsize
   \if$B30OH(B %
   \linethickness{0.05mm}
   \put(0,0){\linethickness{0.3mm}\framebox(154,204){}}
   \put(  0.0,174){\line(1,0){154}}
   \put(  0.0,193){\line(1,0){154}}
   \put( 38.0,193){\line(0,1){11}}
   \put( 87.5,193){\line(0,1){11}}
   \put( 15.5,193){\dashbox(0,11){}}
   \put( 53.5,193){\dashbox(0,11){}}
   \put(103.0,193){\dashbox(0,11){}}
%
   \put(77,212){\makebox(0,0){\huge $BB4(B~~~~$B6H(B~~~~$BO@(B~~~~$BJ8(B~~~~$BMW(B~~~~$B;](B}}
   \put(77, -4){\makebox(0,0){$B7D(B~$BXf(B~$B5A(B~$B=N(B~$BBg(B~$B3X(B~$BM}(B~$B9)(B~$B3X(B~$BIt(B}}
   \put(-6,  0){\makebox(8,172)[t]{\begin{minipage}{8mm}
    \renewcommand{\baselinestretch}{0.0}\large\normalsize
%    $\smile$\\$BFb(B\\$BMF(B\\$B$N(B\\$BMW(B\\$B;](B\\$B$O(B\\$BLs(B\vspace{2pt}\\25\vspace{2pt}\\$B9T(B\\$BDx(B\\$BEY(B\\$B$G(B\\$B5-(B\\$BF~(B\\$B$N(B\\$B$3(B\\$B$H(B\\$\frown$
    $\frown$\\$BFb(B\\$BMF(B\\$B$N(B\\$BMW(B\\$B;](B\\$B$O(B\\$BLs(B\vspace{2pt}\\25\vspace{2pt}\\
    $B9T(B\\$BDx(B\\$BEY(B\\$B$G(B\\$B5-(B\\$BF~(B\\$B$N(B\\$B$3(B\\$B$H(B\\$\smile$
    \end{minipage}}}
%
   \else \linethickness{0pt} \fi
%
\if$B30OH(B \put(  0.0,193){\makebox(15.5,11){$B3X(B~~~$B2J(B}} \fi
        \put( 15.5,193){\makebox(22.5,11){\large\@Amajor}}
\if$B30OH(B \put( 38.0,193){\makebox(15.5,11){\shortstack{$B3X(B~~~$B@R(B\\$BHV(B~~~$B9f(B}}}\fi
        \put( 53.5,193){\makebox(34.0,11){\large\@StudentID}}
\if$B30OH(B \put( 87.5,193){\makebox(15.5,11){\shortstack{
    \footnotesize $B%U%j%,%J(B\\ \normalsize $B;a(B~~~$BL>(B}}} \fi
        \put(103.0,193){\makebox(51.0,11){\shortstack{{
         \footnotesize\@Kauthor}\\ \large\@Jauthor}}}
%
\if$B30OH(B \put(13,189){\makebox(0,0){($BO@(B~$BJ8(B~$BBj(B~$BL>(B)}} \fi
        \put( 0,174){\makebox(154,19){\Large\bf\gt\shortstack{\@AJtitle}}}
\if$B30OH(B \put(15,170){\makebox(0,0){($BFb(B~$BMF(B~$B$N(B~$BMW(B~$B;](B)}} \fi
   \put(0,0){\makebox(153,164)[t]{\begin{minipage}{150mm}
    \parindent=12pt\renewcommand{\baselinestretch}{1.0}\large
    \@jabst
    \end{minipage}}}
  \end{picture}
 \end{center}
\end{titlepage}}

% \maketitle
\def\maketitle{\begin{titlepage}
 \let\footnotesize\small \let\footnoterule\relax \setcounter{page}{0}
 \ifnum\@ptsize=2
 \let\Huge\huge \let\huge\LARGE \let\LARGE\Large \normalsize\small
 \fi
 \null
 \vfil
 \begin{center}
  \renewcommand{\baselinestretch}{1.0}\large\normalsize
  \vskip -0.0cm
  \underline{\LARGE $BB4!!6H!!O@!!J8(B} \vskip 2cm
%  \underline{\LARGE $B=$!!;N!!O@!!J8(B} \vskip 2cm
  \leftline{\hspace*{1.0cm} \underline{$BBj!!!!L\(B}} \vskip 0.5cm
  {\huge \bf \gt \@TJtitle}\par \vskip 1cm
%  {\huge \bf \gt \@TEtitle}\par \vskip 2cm
  \leftline{\hspace*{1.0cm} \underline{$BG/!!!!EY(B}} \vskip 0.5cm
  {\LARGE \thisyear} \ifnum\@ptsize=2\vskip 1cm\else\vskip 1.3cm\fi
  \leftline{\hspace*{1.0cm} \underline{$B=j!!!!B0(B}} \vskip 0.5cm
  {\LARGE $B7DXf5A=NBg3X(B} \vskip .4cm
  {\LARGE $BM}9)3XIt!!(B\@Tmajor} \vskip 1.0cm
  \leftline{\hspace*{1.0cm} \underline{$B;XF3650w(B}}\vskip 0.5cm
  {\LARGE \@Boss} \vskip 1cm
  \leftline{\hspace*{1.0cm} \underline{$B;a!!!!L>(B}}\vskip 0.5cm
  \leftline{\hspace*{4.0cm}\LARGE \@StudentID}\vskip .5cm
  {\Huge \@Jauthor}
 \end{center} \par
\@thanks
\vfil
%\null
\end{titlepage}
\setcounter{footnote}{0} \let\thanks\relax
\let\maketitle\relax}
