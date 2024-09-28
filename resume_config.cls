%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------

\ProvidesClass{resume_config}[2023 v1.0 resume_config]
\NeedsTeXFormat{LaTeX2e}

%-------------------------------------------------------------------------------
%                Class options
%-------------------------------------------------------------------------------

\LoadClass[10pt]{article} % adjust font size here

%-------------------------------------------------------------------------------
%                Packages
%-------------------------------------------------------------------------------

\RequirePackage{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontspec}
\RequirePackage{color}
\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
\RequirePackage{fontawesome5}
\RequirePackage{fancyhdr}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{etoolbox,refcount}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage{lipsum}

\setmainfont{TeX Gyre Heros} % adjust font style here

% Additional fonts can be found at the following URL: https://www.draketo.de/anderes/latex-fonts.html#org9f59ea3

%-------------------------------------------------------------------------------
%                Formatting
%-------------------------------------------------------------------------------

\setlength{\tabcolsep}{0in}

\pagenumbering{gobble}
\pagestyle{empty}

\raggedbottom
\raggedright

\geometry{
    paper=letterpaper, % Paper size, change to letterpaper for US letter size
    top=0.5in, % Top margin
    bottom=0.5in, % Bottom margin
    left=0.5in, % Left margin
    right=0.5in, % Right margin
    headheight=0.75cm, % Header height
    footskip=1cm, % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm % Space from the top margin to the baseline of the header
}

% section title format
\titleformat{\section}%
    {\vspace{-4pt}\scshape\raggedright\large\bfseries}% format
    {}% label
    {0em}% space between label and title
    {}% before code
    [\color{black}\titlerule\vspace{-5pt}]% after code

%-------------------------------------------------------------------------------
%                Custom Commands
%-------------------------------------------------------------------------------

\newcommand{\WorkExperience}[5]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{\textcolor{gray}{#3}} \\ % Changed to gray color for consistency
        #2 & #4 \\
    \end{tabular*}
    
    \begin{itemize}[noitemsep, topsep=0pt, leftmargin=1.25em, label={$-$}]
        #5
    \end{itemize}
}

\newcommand{\Header}[5]{
    \fancyhf{}
    \begin{center}
        {\Large\textbf{\textsc{\textcolor{black}{\fontfamily{phv}\selectfont #1}}}}\\[4pt]
        
        \begin{tabular}{@{}p{0.65\textwidth} p{0.3\textwidth}@{}}
            \textcolor{black}{
                Lucknow, UP, India $|$ \href{mailto:#3}{#3} $|$ \href{https://linkedin.com/in/#4}{LinkedIn} $|$ \href{https://github.com/#5}{GitHub}
            } & 
            \textcolor{black}{\hfill \textit{#2 years of experience}} 
        \end{tabular}\\[3pt]
    \end{center}
    \vspace{-15pt}
}





\newcommand{\Certification}[2]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{\textcolor{gray}{#2}} \\
    \end{tabular*}
    \vspace{-10pt} % Adjust vertical space if needed
}





\newcommand{\EducationExperience}[4]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{\textcolor{gray}{#3}} \\ % Changed to gray color for consistency
        #2 & #4 \\
    \end{tabular*}
}

\NewDocumentEnvironment{SkillsList}{O{4} O{1in} +b}{
\vspace{3pt}
    \small
    \begin{itemize}[noitemsep, topsep=0pt, leftmargin=1.5em, label={--}] % Set label to --
        #3
    \end{itemize}
}{}
