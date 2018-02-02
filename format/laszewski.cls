%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Class:   laszewski
% Author:  Gregor von Laszewski
% License: CC BY-NC-SA 3.0
%          (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
% This Class has Is a heavily modified version of the Legrand Orange
% Book file And integrates And modifies the structure.tex file
% Version 2.0 (9/2/15). The original Legrand authors are
% Mathias Legrand (legrand.mathias@gmail.com) with modifications by
% Vel (vel@latextemplates.com). The structure file 
% was downloaded from http://www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{laszewski}
              [2018/01/01 Book Format For Cloud Handbook]

\RequirePackage[hyphens]{url}
\LoadClass[11pt,felqn]{book}

%-------------------------------------------------------------------------------
%	VARIOUS REQUIRED PACKAGES AND CONFIGURATIONS
%-------------------------------------------------------------------------------

\usepackage{comment}
\usepackage{markdown}
\usepackage{todonotes}
\usepackage{fancyvrb}
\usepackage{parskip}
\usepackage{longtable}
\usepackage{lipsum} % Inserts dummy text
\usepackage{tikz} % Required for drawing custom shapes
\usepackage[english]{babel} % English language/hyphenation
\usepackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists
\usepackage{booktabs} % Required for nicer horizontal rules in tables
\usepackage{xcolor,colortbl} % Required for specifying colors by name
%\definecolor{ocre}{RGB}{243,102,25} % Define the orange color used for
%                                % highlighting throughout the book
\definecolor{ocre}{RGB}{65,105,225} % Define the orange color used for
                                % highlighting throughout the book
\usepackage{nameref}
\usepackage{listings}
\usepackage[most]{tcolorbox}
\usepackage{datetime}
%\usepackage{minted} % use lstlisting instead
\usepackage[top=3cm,bottom=3cm,left=3cm,right=3cm,headsep=10pt,a4paper]{geometry} % Page margins

%\usepackage{tipa}
\parindent 0pt
\setlength{\parskip}{6pt}


\usepackage{graphicx} % Required for including pictures
\graphicspath{{./}{images/}} % Specifies the directory where pictures are stored

\usepackage[style=numeric,citestyle=numeric,sorting=nyt,sortcites=true,autopunct=true,%
            babel=hyphen,hyperref=true,abbreviate=false,backref=true,backend=biber]{biblatex}

\usepackage{calc} % For simpler calculation - used for spacing the index letter headings correctly
\usepackage{makeidx} % Required to make an index
\makeindex % Tells LaTeX to create the files required for indexing

%------------------------------------------------------------------------------
%	FONTS
%------------------------------------------------------------------------------

\usepackage{avant} % Use the Avantgarde font for headings
%\usepackage{times} % Use the Times font for headings
\usepackage{mathptmx} % Use the Adobe Times Roman as the default text font together with math symbols from the Sym­bol, Chancery and Com­puter Modern fonts

\usepackage{microtype} % Slightly tweak font spacing for aesthetics
\DisableLigatures{encoding = *, family = * } % disable fi and -- contractions
\usepackage[utf8]{inputenc} % Required for including letters with accents
\usepackage[T1]{fontenc} % Use 8-bit encoding that has 256 glyphs
\usepackage{pifont}
