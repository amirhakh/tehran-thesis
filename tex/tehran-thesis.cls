%%
%%  This is file `tehran-thesis.cls',
%%  It is a modification of IUST-Thesis by Mahmood Amintoosi
%%  which itself is a change of Tabriz_thesis by Vahid Damanafshan
%%  which itself is a change of xepersian-thesis by Vafa Khalighi
%%
%%  Author: Sina Momken, sina.momken@gmail.com
%%	Base author: Mahmood Amintoosi, m.amintoosi@gmail.com
%%  https://github.com/sinamomken/tehran-thesis
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tehran-thesis}
[05/08/2024 v0.2 Persian thesis document class in XeLaTeX for University of Tehran projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\college#1{\gdef\@college{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\gender}[1]{\def\@gender{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\firstsupervisorrank}[1]{\def\@firstsupervisorrank{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\secondsupervisorrank}[1]{\def\@secondsupervisorrank{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\firstadvisorrank}[1]{\def\@firstadvisorrank{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\newcommand{\secondadvisorrank}[1]{\def\@secondadvisorrank{#1}}
\newcommand{\internaljudge}[1]{\def\@internaljudge{#1}}
\newcommand{\internaljudgerank}[1]{\def\@internaljudgerank{#1}}
\newcommand{\secondinternaljudge}[1]{\def\@secondinternaljudge{#1}}
\newcommand{\secondinternaljudgerank}[1]{\def\@secondinternaljudgerank{#1}}
\newcommand{\externaljudge}[1]{\def\@externaljudge{#1}}
\newcommand{\externaljudgerank}[1]{\def\@externaljudgerank{#1}}
\newcommand{\externaljudgeuniversity}[1]{\def\@externaljudgeuniversity{#1}}
\newcommand{\secondexternaljudge}[1]{\def\@secondexternaljudge{#1}}
\newcommand{\secondexternaljudgerank}[1]{\def\@secondexternaljudgerank{#1}}
\newcommand{\secondexternaljudgeuniversity}[1]{\def\@secondexternaljudgeuniversity{#1}}
\newcommand{\graduatedeputy}[1]{\def\@graduatedeputy{#1}}
\newcommand{\graduatedeputyrank}[1]{\def\@graduatedeputyrank{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\long\def\acknowledgement#1{\gdef\@acknowledgement{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\long\def\farsiabstract#1{\gdef\@farsiabstract{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
\def\latincollege#1{\gdef\@latincollege{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\long\def\latinabstract#1{\gdef\@latinabstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\newif\if@proposal
\@proposalfalse
\DeclareOption{proposal}{\@proposaltrue}
\newif\if@phdthesis
\@phdthesisfalse
\DeclareOption{phd}{\@phdthesistrue}
\newif\if@irfonts
\@irfontsfalse
\DeclareOption{irfonts}{\@irfontstrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
	{
		\if@mscthesis
			{\projectLabel{پایان‌نامه}}
		\else
			\if@bscthesis
				{\projectLabel{پروژه}}
			\else
				{\projectLabel{رساله}}
			\fi
		\fi
	}\fi

\ifx\@degree\undefined%
	{
		\if@mscthesis
			\degree{کارشناسی ارشد}
		\else
			\if@bscthesis
				\degree{کارشناسی}
			\else
				\degree{دکتری تخصصی \lr{PhD}}
			\fi
		\fi
	}
	%%%%%%%%%%%%%%%%%%%%%%%%%%%
	%% جلد زرکوب به فارسی (بدون اساتید مشاور)
	\newcommand{\coverPage}{\begin{titlepage}
			%\topmargin=-30pt
			\vspace{-10mm}
			% دستورات دوآرمه
			\begin{latin}
				\hskip-1cm
				\makebox[\textwidth+2cm][c]{
					\begin{minipage}{4cm}
						\centering
						\includegraphics[height=3cm]{eng-logo}
					\end{minipage}
					\begin{minipage}{\textwidth - 7cm}
						\begin{center}
							\begin{persian}
								\begin{onehalfspacing}
									{\large\bfseries\@university \\}
									{\large\bfseries\@college \\}
									{\large\bfseries\@faculty \\}
									{\large\bfseries\@department}
								\end{onehalfspacing}
							\end{persian}
						\end{center}
					\end{minipage}
					\begin{minipage}{4cm}
						\centering
						\includegraphics[height=3cm]{logo}
					\end{minipage}
				}
			\end{latin}
			% دستورات تک‌آرمه
			%\centerline{{\includegraphics[width=5cm]{logo}}}
			%\centerline{\bf \@university}
			%\centerline{\large\bfseries\@faculty}
			% بعد از آرم‌ها
			\centering
			\vskip 1.5cm
			\if@bscthesis
			{\large\bfseries{پروژهٔ کارشناسی \@subject}
				\ifx\@field\undefined%
					\relax
				\else
					گرایش \@field
				\fi
			}
			\else
				{\large\bfseries \@projectLabel\ \writtenfor \@degree{}}
				\vskip .2cm
				\centerline{\large\bfseries{رشتهٔ \@subject{} گرایش \@field}}
			\fi
			\vskip 5mm
				{\huge\titlefont\bfseries \@title}
				\par
			\vskip 1cm
			{\large نگارنده}
			\par
			{\Large\bfseries{\@name\ \ \@surname}}

			\par
			\vskip .8cm
			\large
			{
			\ifx\@firstsupervisor\undefined%
				\ifx\@secondsupervisor\undefined%
				\else
				\fi
			\else
				\ifx\@secondsupervisor\undefined%
					استاد راهنما
					{\large\bfseries\par \@firstsupervisor}
				\else
					\large
					اساتید راهنما
					\par
					{\large\bfseries \@firstsupervisor{} \vskip .2cm \@secondsupervisor}
				\fi
			\fi}
			
			\par
			\vskip 6mm
			\large
			{\ifx\@firstadvisor\undefined%
				\ifx\@secondadvisor\undefined%
				\else\fi
			\else
				\ifx\@secondadvisor\undefined%
					استاد مشاور
					{\large\bfseries\par
					\@firstadvisor}
				\else

					\large
					اساتید مشاور
					\par
					{\large\bfseries\@firstadvisor{} \vskip .2cm \@secondadvisor}
				\fi
			\fi}


			\par
			\vskip 6mm
				%\vfill
				{\large \@thesisdate}
			%\vfill
		\end{titlepage}%
	} % end of coverPage
	%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\newcommand{\besmPage}{
		%% بسم الله الرحمن الرحیم
		\cleardoublepage
		\thispagestyle{empty}
		\hfill
		\begin{center}
			\includegraphics[width=10cm]{img/besm}
		\end{center}
	}
	%%%%%%%%%%%%%%%%%%%%%%%%%%%
	%% فرم داخلی جلد به فارسی (دارای استاد مشاور)
	\newcommand{\titlePage}{\begin{titlepage}
			%\topmargin=-30pt
			\vspace{-10mm}
			% دستورات دوآرمه
			\begin{latin}
				\hskip-1cm
				\makebox[\textwidth+2cm][c]{
					\begin{minipage}{4cm}
						\centering
						\includegraphics[height=3cm]{eng-logo}
					\end{minipage}
					\begin{minipage}{\textwidth - 7cm}
						\begin{center}
							\begin{persian}
								\begin{onehalfspacing}
									{\large\bfseries\@university \\}
									{\large\bfseries\@college \\}
									{\large\bfseries\@faculty \\}
									{\large\bfseries\@department}
								\end{onehalfspacing}
							\end{persian}
						\end{center}
					\end{minipage}
					\begin{minipage}{4cm}
						\centering
						\includegraphics[height=3cm]{logo}
					\end{minipage}
				}
			\end{latin}
			% دستورات تک‌آرمه
			%\centerline{{\includegraphics[width=5cm]{logo}}}
			%\centerline{\bf \@university}
			%\centerline{\large\bfseries\@faculty}
			% بعد از آرم‌ها
			\centering
			\vskip 1.5cm
			\if@bscthesis
			{\large\bfseries{پروژهٔ کارشناسی \@subject}
				\ifx\@field\undefined%
					\relax
				\else
					گرایش \@field
				\fi
			}
			\else
				{\large\bfseries \@projectLabel{} \writtenfor \@degree{}}
				\vskip .2cm
				\centerline{\large\bfseries{رشتهٔ \@subject{} گرایش \@field}}
			\fi
			\vskip 5mm
			{\huge\titlefont\bfseries \@title}

			\par
			\vskip 1cm
			{\large نگارنده}
			
			\par
			{\Large\bfseries{\@name\ \ \@surname}}

			\par
			\vskip 10mm
			\large
			{
			\ifx\@firstsupervisor\undefined%
				\ifx\@secondsupervisor\undefined%
				\else
				\fi
			\else
				\ifx\@secondsupervisor\undefined%
					استاد راهنما
					{\large\bfseries\par
					\@firstsupervisor}
				\else
					\large
					اساتید راهنما
					\par
					{\large\bfseries \@firstsupervisor{} \par \@secondsupervisor}
				\fi
			\fi}

			\par
			\vskip 6mm
			\large
			{\ifx\@firstadvisor\undefined%
				\ifx\@secondadvisor\undefined%
				\else\fi
			\else
				\ifx\@secondadvisor\undefined%
					استاد مشاور
					{\large\bfseries\par
					\@firstadvisor}
				\else

					\large
					اساتید مشاور
					\par
					{\large\bfseries\@firstadvisor{} \par \@secondadvisor}
				\fi
			\fi}

			\par
			\vskip 6mm
				%\vfill
				{\large \@thesisdate}
			%\vfill
		\end{titlepage}%
	} % end of titlePage
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\def\titlepage{\if@RTL\cleardoublepage\else\clearpage\fi
		\thispagestyle{empty}
		\parindent 0pt \parskip 10pt plus 1fil minus 1fil
		\def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
	\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup}

	\def\signature{\vspace{1cm}
		\begin{flushleft}
			{%\nastaliq \scriptsize
				\@name\ \@surname \\
				\@thesisdate}
		\end{flushleft}}
	\def\getsignature{
		\vspace{1cm}
		\begin{center}
			\begin{tabular}{lr}
				نام و نام خانوادگی دانشجو: & \@name{} \@surname \\
				امضاء:                      &                    \\
				تاریخ:                      &                    \\
			\end{tabular}
		\end{center}
	}
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	%% تاییدیه هیات داوران
	\newcommand{\davaranPage}{
		\cleardoublepage
		%\setcounter{page}{1}
		\thispagestyle{empty}

		\begin{minipage}{4cm}
			\raggedleft
			\includegraphics[height=3cm]{logo}
		\end{minipage}
		\begin{minipage}{\textwidth - 7cm}
			\begin{center}
				\begin{onehalfspacing}
					{\large\bfseries\@university \\}
					{\large\bfseries\@college \\}
					{\large\bfseries\@faculty \\}
					%{\large\bfseries\@department}
				\end{onehalfspacing}
			\end{center}
		\end{minipage}
		\begin{minipage}{4cm}
			\raggedright
			\includegraphics[height=3cm]{eng-logo}
		\end{minipage}

		\begin{center}
			{\Large\bfseries
				گواهی دفاع از \@projectLabel{}ٔ \@degree{}
			}
		\end{center}
		%\vspace{.5cm}
		هیأت داوران \@projectLabel{} \@degree{}
		\ifx\@gender\undefined
			آقای~/~خانم \space
		\else
			\@gender \space
		\fi
		\@name{} \@surname{} به شمارهٔ دانشجویی \@studentID{} در رشتهٔ \@subject{}~-~گرایش \@field{} را در تاریخ ................ با عنوان «\@title{}»\\
		\makebox[\textwidth][l]{
			\parbox{0.7\textwidth}{
				\makebox[2cm]{}\hspace{1ex}\makebox[2cm]{به عدد}\makebox[5cm]{به حروف}\\
				\makebox[2cm][l]{با نمرهٔ نهایی}\hspace{1ex}\framebox[2cm]{\strut}\framebox[5cm]{\strut}
				\\
				\\
				\makebox[2cm][l]{و درجهٔ}\hspace{1ex}\framebox[3cm]{\strut}\hspace{1ex}
				ارزیابی کرد.
			}
		}

		\newcounter{davaranCounter}
		\begin{table}[h]
			\small
			\begin{onehalfspacing}
				\begin{tabular}{| >{\centering\arraybackslash}m{0.03\textwidth} | >{\centering\arraybackslash}m{.17\textwidth} | >{\centering\arraybackslash}m{.17\textwidth} |>{\centering\arraybackslash}m{.1\textwidth}|>{\centering\arraybackslash}m{.2\textwidth}|>{\centering\arraybackslash}m{.15\textwidth}|}
					\hline
					{\bfseries\begin{sideways}ردیف\end{sideways}} & {\bfseries مشخصات هیأت داوران} & {\bfseries نام و نام خانوادگی} & {\bfseries مرتبهٔ دانشگاهی} & {\bfseries دانشگاه یا مؤسسه}    & {\bfseries امضا}                                   \\
					\hline
					\ifx\@firstsupervisor\undefined
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & استاد راهنما                   & \@firstsupervisor              & \@firstsupervisorrank      & دانشگاه تهران                   & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
					\fi
					\ifx\@secondsupervisor\undefined%
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & استاد راهنما                   & \@secondsupervisor             & \@secondsupervisorrank     & دانشگاه تهران                   & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
					\fi
					\hline
					\ifx\@firstadvisor\undefined%
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & استاد مشاور                    & \@firstadvisor                 & \@firstadvisorrank         & دانشگاه تهران                   & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
					\fi
					\ifx\@secondadvisor\undefined%
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & استاد مشاور                    & \@secondadvisor                & \@secondadvisorrank        & دانشگاه تهران                   & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
					\fi
					\hline
					\ifx\@internaljudge\undefined%
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & استاد داور داخلی               & \@internaljudge                & \@internaljudgerank        & دانشگاه تهران                   & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
						\hline
					\fi
					\ifx\@secondinternaljudge\undefined%
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & استاد داور داخلی               & \@secondinternaljudge          & \@secondinternaljudgerank  & دانشگاه تهران                   & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
						\hline
					\fi
					\ifx\@externaljudge\undefined%
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & استاد مدعو                     & \@externaljudge                & \@externaljudgerank        & \@externaljudgeuniversity       & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
						\hline
					\fi
					\ifx\@secondexternaljudge\undefined%
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & استاد مدعو                     & \@secondexternaljudge          & \@secondexternaljudgerank  & \@secondexternaljudgeuniversity & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
						\hline
					\fi
					\ifx\@graduatedeputy\undefined%
					\else \stepcounter{davaranCounter}
					\arabic{davaranCounter}                       & نمایندهٔ تحصیلات تکمیلی دانشکده & \@graduatedeputy               & \@graduatedeputyrank       & دانشگاه تهران                   & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
						\hline
					\fi
				\end{tabular}
			\end{onehalfspacing}
		\end{table}

		\begin{center}
			\noindent
			\begin{minipage}{0.45\textwidth}
				\begin{center}
					نام و نام خانوادگی معاون تحصیلات تکمیلی و پژوهشی دانشکده~/~گروه:\\
					تاریخ و امضا:
				\end{center}
			\end{minipage}
			\hspace{0.08\textwidth}
			\begin{minipage}{0.45\textwidth}
				\begin{center}
					نام و نام خانوادگی معاون آموزشی و تحصیلات تکمیلی پردیس دانشکدگان فنی:\\
					تاریخ و امضا:
				\end{center}
			\end{minipage}
		\end{center}
	} % End of davaranPage
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	%% تأییدیهٔ صحت و اصالت نتایج
	\newcommand{\esalatPage}{
		\cleardoublepage
		\thispagestyle{empty}
		\begin{center}
			\begin{minipage}{5cm}
				\centering
				\includegraphics[height=2cm]{logo}
			\end{minipage}

			\vspace{.5cm}
			\centerline{\bfseries باسمه تعالی}
			\vspace{.5cm}
			{\Large \titlefont\bfseries
				تعهدنامهٔ اصالت اثر\\
			}
			\vspace{.5cm}
		\end{center}
		\doublespacing


		اینجانب
		\@name \@surname 
		گواهی و تعهد میدهم كه مطالب مندرج در این \textbf{رساله/ پایان‌نامه}، حاصل كار پژوهشی اینجانب است و به دستاوردهای پژوهشی دیگران كه در این پژوهش از آنها استفاده شده، مطابق مقررات و اصول مرتبط با درج منابع و مآخذ، ارجاع داده ام. این \textbf{رساله/پایان‌نامه} قبلاً برای دریافت هیچ مدرك تحصیلی دیگری ارائه نشده است. ضمن پایبندی به رعایت مقررات و اصول اخلاق در پژوهش، میپذیرم كه در هر زمانی، خلاف این گواهی اثبات شود، دانشگاه تهران حق دارد مدرك تحصیلی صادرشده را از درجهٔ اعتبار ساقط نماید.

		كلیه حقوق مادی و معنوی این اثر متعلق به دانشگاه تهران است.

		\getsignature
	}
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	%% مجوز بهره‌برداری از پایان‌نامه
	\newcommand{\mojavezPage}
	{
	\cleardoublepage
	\thispagestyle{empty}
	\ \vfill
	\vspace{-12cm}
	\tikzstyle{tmpvip}=%
	[ultra thick,rectangle,draw=black!72,rounded corners=2mm,%
	inner xsep=-1.3cm,inner ysep=0.4cm]
	\begin{center}
		\begin{tikzpicture}
			\node[tmpvip](mainbox){%
				\begin{minipage}{0.7\textwidth}
					\begin{persian}
						\begin{center}

							\textbf{کلیهٔ حقوق مادی  و معنوی این اثر}

							\textbf{متعلّق به دانشگاه تهران است.}

						\end{center}
					\end{persian}
				\end{minipage}};
			%\node[viptitle] at (mainbox.west){\ding{'153}};
		\end{tikzpicture}
	\end{center}
	\ \vfill
	}

	% \def\frame{\newpage
	% \thispagestyle{empty}
	% \begin{framed}\thispagestyle{empty}}
	% \def\endframe{\thispagestyle{empty}\end{framed}
	% \thispagestyle{empty}
	% \newpage
	% }
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	% بخش تقدیم
	%% پایان‌نامه خود را تقدیم کنید! %%
	\newcommand{\taghdimPage}
	{
		\ifx\@dedication\undefined%
			\relax
		\else
			\cleardoublepage
			\thispagestyle{empty}
			%\vspace{-40mm}
			\@dedication
		\fi
	}

	%% قدردانی (فارسی)
	\newcommand{\ghadrdaniPage}
	{
		\ifx\@acknowledgement\undefined%
			\relax
		\else
			\cleardoublepage
			\thispagestyle{empty}
			\centerline{\Large \bfseries قدردانی}
			\vspace{1cm}
			\par\noindent
			\@acknowledgement
			% با استفاده از دستور زیر، امضای شما، به طور خودکار، درج می‌شود.
			\signature
		\fi
	}

	\newcommand{\sogandnamehPage}
	{
		\if@phdthesis
			\cleardoublepage
			\thispagestyle{empty}
			\centerline{\Large\bfseries سوگندنامه دانش آموختگان دکتری دانشگاه تهران }
			\vspace{1cm}
			\par\noindent
			\centerline{بسم الله الرحمن الرحیم}

			\par\noindent
			سپاس یزدان پاک را که مرا مشمول الطاف خویش نمود که با طی مراحل تحصیل به اخذ درجه دکتری نائل شوم  به شکرانه این نعمت بزرگ الهی که با امکانات این مرز و بوم فراهم و نزد اینجانب به امانت گذاشته شده است، در پیشگاه ملت ایران به کتاب آسمانی خود، قرآن کریم، سوگند یاد می‌کنم که:
			\begin{itemize}
				\item در سراسر زندگی حرفه‌ای، به نحو احسن در راه اعتلای کشور ایران و جامعه بشری قدم برداشته و در این راه از هیچ کوششی دریغ نکنم.
				\item در تمام فعالیت‌های تخصصی، رضای خدا را همراه با صداقت علمی و اجتماعی مدنظر داشته و از موقعیت‌های به دست آمده در جهت رفع مشکلات مردم استفاده کنم و در همهٔ امور، منافع کشور را بر منافع فردی مقدم بدارم.
				\item همواره علم و دانش خود را به روز نگاه داشته و در ادای وظایف و تعهدات حرفه ای در حد توان سعی و تلاش خود را بکارگیرم.
			\end{itemize}

			\par\noindent
			و اینک از خداوند متعال توفیق بندگی و پای بندی به مفاد این سوگندنامه را خواستارم و از او می‌خواهم که مرا در ادامه و پیمودن مسیر و فتح قله‌های رفیع علم و دانش و ایفای رسالت علمی‌و انسانی خویش موفق بدارد.

			\vspace{1cm}
			\par\noindent
			و ایمان دارم که:

			\centerline{«إِنَّ اللَّهَ يَعْلَمُ غَيْبَ السَّماواتِ وَ الْأَرْضِ وَ اللَّهُ بَصيرٌ بِما تَعْمَلُونَ» (سوره حجرات، آیه 18)}

			\getsignature
		\else
			\relax
		\fi
	}

	%% چکیده فارسی
	\newcommand\abstractPage{
		\cleardoublepage
		\thispagestyle{empty}
		\section*{چکیده}
		% \addcontentsline{toc}{section}{چکیده}
		\@farsiabstract
		\par\noindent
		\paragraph{واژگان کلیدی:}
		\@keywords
	}

	\def\latinabstractPage{
		%% Latin abstract Page
		\cleardoublepage\newpage
		\thispagestyle{empty}
		~
		\newpage
		\thispagestyle{empty}
		\section*{Abstract}
		% \addcontentsline{toc}{section}{چکیده}
		\@latinabstract
		\par
		\noindent
		\paragraph{Keywords:}
		\@latinkeywords
	}
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


	%% Latin Abstract and Title pages

	\font\supervisorfont=cmbxti10

	\newcommand{\latinTitlePage}{%
	%% Latin title page
	\clearpage
	\thispagestyle{empty}
	~
	\begin{titlepage}
		\vspace{-10mm}
		%% Double logo commands
		\begin{latin}
			\hskip-1cm
			\makebox[\textwidth+2cm][c]{
				\begin{minipage}{4cm}
					\centering
					\includegraphics[height=3cm]{eng-logo-en}
				\end{minipage}
				\begin{minipage}{\linewidth - 7cm}
					\begin{center}
						\begin{onehalfspacing}
							{\large\@latinuniversity \\}
							{\large\@latincollege \\}
							{\large\@latinfaculty \\}
							{\large\@latindepartment \\}
						\end{onehalfspacing}
					\end{center}
				\end{minipage}
				\begin{minipage}{4cm}
					\centering
					\includegraphics[height=3cm]{logo-en}
				\end{minipage}
			}
		\end{latin}
		%% Single logo commands
		%\centerline{{\includegraphics[width=5cm]{logo-en}}}
		%\centerline{\bf \@latinuniversity}
		%\centerline{\large\bfseries\@latinfaculty}
		%% After logos
		\centering
		\vskip 1.5cm
			{
				\large
				\if@bscthesis
					Bachelor of Science Thesis
					in  \@latinsubject
				\else
					A
					\if@mscthesis
						Dissertation
					\else
						Thesis
					\fi
					Submitted for the Degree of
					\if@mscthesis
						Master of Science % /Art/Engineering 
					\else
						Doctor of Philosophy
					\fi
					in \\ \@latinsubject{} - \@latinfield{}
					%\baselineskip=.750cm
					%\addtolength{\baselineskip}{-5mm}
				\fi
			}
			\vskip 15mm
			{%\latintitlefont
				\Huge\latintitlefont\bfseries
				\@latintitle}
			%\baselineskip=.750cm \par
		\vskip 15mm
			{\latinby}\par
		{\large %\supervisorfont
			\rm \Large\bfseries \@latinname \; \@latinsurname}\par

		\vskip 15mm

		\large
		{\ifx\@firstlatinsupervisor\undefined%
			\ifx\@secondlatinsupervisor\undefined%
			\else\fi
		\else
			\ifx\@secondlatinsupervisor\undefined%
				Supervisor
				{\Large\bfseries\par
				\@firstlatinsupervisor}
			\else
				\large
				Supervisors
				\par
				{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
			\fi
		\fi}
		\par
		\large
		{\ifx\@firstlatinadvisor\undefined%
			\ifx\@secondlatinadvisor\undefined%
			\else\fi
		\else
			\vskip 1cm
			\ifx\@secondlatinadvisor\undefined%
				Advisor:
				{\Large\bfseries\par
				\@firstlatinadvisor}
			\else
				Advisors:
				\par
				{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
			\fi
		\fi}
		\vskip 5mm

		\par
		\vskip 1cm

			{\@latinthesisdate}
		\par
		\vskip 1cm

		\par

		\vfill
		%
	\end{titlepage}
\fi}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجهٔ }
\def\by{پژوهشگر}
\def\latinby{By}
\def\cleardoublepage{
	\clearpage
	\if@twoside
		\ifodd
			\c@page
		\else
			\hbox{}
			\thispagestyle{empty}
			\newpage
			\if@twocolumn\hbox{}\newpage
			\fi
		\fi
	\fi}

\AtBeginDocument{
	\makeatletter
	% تعیین مشخصات فایل PDF
	\hypersetup{
		pdftitle={\@latintitle},
		pdfauthor={\@latinname \@latinsurname},
		pdfsubject={Thesis in \@latinsubject},
		pdfkeywords={\@latinkeywords},
		pdfdirection={R2L}
	}
	\makeatother
}

%%
%% Author: Sina Momken
%%
%% Base author: M.Amintoosi
%%
%% Copyright © 2025-     by Amir Haji Ali Khamseh (tehran-thesis)
%% Copyright © 2019-     by Hadi Safari (tehran-thesis)
%% Copyright © 2017-     by Sina Momken (tehran-thesis)
%% Copyright © 2012-2012 by Mahmood Amintoosi (IUST-Thesis)
%% Copyright © 2011-2012 by Vahid Damanafshan (Tabriz_thesis)
%% Copyright © 2008-2011 by Vafa Khalighi (xepersian-thesis.cls)
%%
%% Distributable under GNU GENERAL PUBLIC LICENSE Version 3.
%%
%% This work is "maintained" by Sina Momken & Hadi Safari & Amir Haji Ali Khamseh.
%%
%% Special thanks to Mahmood Amintoosi, Vahid Damanafshan and Vafa Khalighi for their invaluable work.
%%
%% End of file `tehran-thesis.cls'.
