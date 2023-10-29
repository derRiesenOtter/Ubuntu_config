local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return{
  -- GREEK LETTERS

  -- alpha
  s(";a", 
    {t("\\alpha"),}
  ),
  -- beta
  s(";b",
    {t("\\beta"),}
  ),
  -- gamma
  s(";g",
    {t("\\gamma"),}
  ),

  -- FORMATTING

  -- begin and end frame
  s("frame",
    fmta(
      [[
        \begin{frame}
          \frametitle{<>}
          <>
        \end{frame}
      ]],
      { i(1), i(2)}
    )
  ),

  -- columns
  s("column",
    fmta(
      [[
        \begin{columns}
          \column{0.6\textwidth}
            <>
          \column{0.4\textwidth}
            <>
        \end{columns}
      ]],
      { i(1), i(2)}
    )
  ),

  -- insert picture
   s("figure",
    fmta(
      [[
        \begin{figure}
          \includegraphics[width=\textwidth]{<>}
          \caption{<>}
        \end{figure}
      ]],
      { i(1), i(2)}
    )
  ),

  -- bullet points 
   s("list",
    fmta(
      [[
        \begin{itemize}
          \item <>
        \end{itemize}
      ]],
      { i(1) }
    )
  ),

  -- enumerate
   s("enum",
    fmta(
      [[
        \begin{enumerate}
          \item <>
        \end{enumerate}
      ]],
      { i(1) }
    )
  ),

  -- item 
  s("it",
    fmta(
      "\\item <>",
      { i(1) }
    )
  ),

  -- bold text
  s("bold",
    fmta(
      "\\textbf{<>}",
      { i(1) }
    )
  ),
 
  -- typewriter text
  s("code",
    fmta(
      "\\texttt{<>}",
      { i(1) }
    )
  ),

  -- link
  s("link",
    fmta(
      "\\href{<>}",
      { i(1) }
    )
  ),
 
  -- MATH

  -- fractions
  s("frac",
    fmta(
      "\\frac{<>}{<>}",
      { i(1), i(2) }
    )
  ),

  -- TEMPLATES

  -- presentations
  s("beamer",
    fmta(
      [[
        \documentclass{beamer}
        \usepackage[utf8]{inputenc}
        \usepackage[german]{babel}
        \usepackage{graphicx}
        \usepackage{hyperref}
        \usepackage[font=tiny, labelfont=bf]{caption}

        \setbeamertemplate{footline}[pagenumber]

        \title{<>}
        \author{Asis Hallab}
        \institute{Technische Hochschule Bingen}
        \date{<> - <>}

        \begin{document}
          
          \frame{\titlepage}
            
          <>

        \end{document}
      ]],
      { i(1), i(2), i(3), i(4)}
    )
  ),

  s("uebung", 
    fmta(
      [[
      \documentclass[a4paper,12pt]{report}
      \usepackage[latexsym,url,praphicx}
      \usepackage[
        colorlinks=true,
        urlcolor=blue,
        linkcolor=blue]
        {hyperref}
      
      \usepackage{ngerman}
      \usepackage[utf8]{inputenc}

      \setlength{\parindent}{0pt}
      \setlength{\parskip}{5pt}
      \setlength{\arraycolsep}{1mm}
      \setlength{\unitlength}{1cm}

      \setlength{\topmargin}{-1cm}
      \setlength{\oddsidemargin}{-1cm}
      \setlength{\evensidemargin}{-1cm}
      \setlength{\textwidth}{17cm}
      \setheight{\textheight}{24cm}

      \pagestyle{myheadings}
      \markright{{\bf Bioinformatik Übung (<>), Asis Hallab \hfill\today}\hfill}

      \begin{document}
      <>
      \end{document}
      ]],
      { i(1), i(2)}
    )
  ),
}
