# Commands

Section Heading:	`\rSec`#`[`ref`]{`Title`}` // # starts from zero

Index: `\indextext{lexical conventions|see{conventions, lexical}}`
`\indextext{compilation!separate|)}`

Paragraph Number:	`\pnum`

Note:	`\begin{note}`the text`\end{note}`

Reference:	`~(\ref{`ref`})`

Inline Code:	`\tcode{`the code`}`

Footnote:	`\footnote{`footnote text`}`

Example:	`\begin{example}`the text`\end{example}`

Term:	`\term{`the term`}`

Code Block:	`\begin{codeblock}`the code`\end{codeblock}`

Floating Table:

	\begin{floattable}{Title}{ref}
	{lllll}
	\topline

	... &
	... &
	... &
	... &
	... \\

	\end{floattable}


Backslash: `\textbackslash`

Floating other:

	\begin{figure}[!ht]
	  \caption{A picture of a gull.}
	  \centering
	    \includegraphics[width=0.5\textwidth]{gull}
	\end{figure}

	\begin{table}[!ht]
	  \begin{center}
	    \begin{tabular}{| l c r |}
	    \hline
	    1 & 2 & 3 \\
	    4 & 5 & 6 \\
	    7 & 8 & 9 \\
	    \hline
	    \end{tabular}
	  \end{center}
	  \caption{A simple table}
	\end{table}
