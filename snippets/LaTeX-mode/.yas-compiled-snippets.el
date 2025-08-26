;;; "Compiled" snippets and support files for `LaTeX-mode'  -*- lexical-binding:t -*-
;;; Snippet definitions:
;;;
(yas-define-snippets 'LaTeX-mode
		     '((";z" "\\zeta" "zeta" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/zeta"
			nil nil)
		       ("v." "\\vdot" "vdot" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/vdot"
			nil nil)
		       (":p" "\\varphi" "varphi"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/varphi"
			nil nil)
		       (":e" "\\varepsilon" "varepsilon"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/varepsilon"
			nil nil)
		       ("ups" "\\ups" "ups" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/ups"
			nil nil)
		       ("to" "\\to" "to" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/to"
			nil nil)
		       ("xx" "\\times" "times" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/times"
			nil nil)
		       (";t" "\\theta" "theta" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/theta"
			nil nil)
		       ("tbf" "\\textbf{$1}" "textbf"
			(and (not (texmathp)) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/textbf"
			nil nil)
		       ("tan" "\\tan $0" "tan" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/tan"
			nil nil)
		       ("sup" "\\sup" "sup" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/sup"
			nil nil)
		       ("sub" "\\subset" "subset"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/subset"
			nil nil)
		       ("sin" "\\sin $0" "sin" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/sin"
			nil nil)
		       ("~~" "\\sim" "sim" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/sim"
			nil nil)
		       (";s" "\\sigma" "sigma" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/sigma"
			nil nil)
		       ("set" "\\\\{$1\\\\}" "set"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/set"
			nil nil)
		       ("psi" "\\psi" "psi" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/psi"
			nil nil)
		       ("pi" "\\pi" "pi" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/pi"
			nil nil)
		       (";p" "\\phi" "phi" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/phi"
			nil nil)
		       (";o" "\\omega" "omega" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/omega"
			nil nil)
		       ("nu" "\\nu" "nu" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/nu"
			nil nil)
		       ("nin" "\\notin" "notin" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/notin"
			nil nil)
		       ("not" "\\not" "not" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/not"
			nil nil)
		       ("!=" "\\neq" "neq" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/neq"
			nil nil)
		       (";n" "\\nabla" "nabla" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/nabla"
			nil nil)
		       ("mu" "\\mu" "mu" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mu"
			nil nil)
		       ("min" "\\min" "min" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/min"
			nil nil)
		       ("max" "\\max" "max" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/max"
			nil nil)
		       ("msf" "\\mathsf{$1}" "mathsf"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathsf"
			nil nil)
		       ("scr" "\\mathscr{$1}" "mathscr"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathscr"
			nil nil)
		       ("mrm" "\\mathrm{$1}" "mathrm"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathrm"
			nil nil)
		       ("cal" "\\mathcal{$1}" "mathcal"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathcal"
			nil nil)
		       ("mbf" "\\mathbf{$1}" "mathbf"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathbf"
			nil nil)
		       ("ZZ" "\\mathbb{Z}" "mathbb{Z}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathbb{Z}"
			nil nil)
		       ("RR" "\\mathbb{R}" "mathbb{R}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathbb{R}"
			nil nil)
		       ("QQ" "\\mathbb{Q}" "mathbb{Q}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathbb{Q}"
			nil nil)
		       ("NN" "\\mathbb{N}" "mathbb{N}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathbb{N}"
			nil nil)
		       ("FF" "\\mathbb{F}" "mathbb{F}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathbb{F}"
			nil nil)
		       ("CC" "\\mathbb{C}" "mathbb{C}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathbb{C}"
			nil nil)
		       ("bb" "\\mathbb{$1}" "mathbb"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/mathbb"
			nil nil)
		       ("lrb" "\\left{ $1 \\right}" "\\left{ \\right}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/lr{"
			nil nil)
		       ("lrm" "\\left[ $1 \\right]" "\\left[ \\right]"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/lr["
			nil nil)
		       ("lrs" "\\left( $1 \\right)" "\\left( \\right)"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/lr("
			nil nil)
		       ("ln" "\\ln $0" "ln" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/ln"
			nil nil)
		       ("<=" "\\leq" "leq" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/leq"
			nil nil)
		       (";l" "\\lambda" "lambda"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/lambda"
			nil nil)
		       (";k" "\\kappa" "kappa" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/kappa"
			nil nil)
		       ("iot" "\\iota" "iota" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/iota"
			nil nil)
		       ("inn" "\\in" "in" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/inn"
			nil nil)
		       (",," "\\\\($1\\\\)" "inline-math"
			(and (not (texmathp)) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/inline-math"
			nil nil)
		       ("oo" "\\infty" "infty" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/infty"
			nil nil)
		       ("inf" "\\inf" "inf" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/inf"
			nil nil)
		       ("=>" "\\implies" "implies"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/implies"
			nil nil)
		       ("iff" "\\iff" "iff" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/iff"
			nil nil)
		       ("hat" "\\hat{$1}" "hat" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/hat"
			nil nil)
		       (">=" "\\geq" "geq" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/geq"
			nil nil)
		       (";g" "\\gamma" "gamma" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/gamma"
			nil nil)
		       ("//" "\\frac{$1}{$2}" "frac"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/frac"
			nil nil)
		       ("aa" "\\forall" "forall"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/forall"
			nil nil)
		       ("ee" "\\exists" "exists"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/exists"
			nil nil)
		       ("eta" "\\eta" "eta" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/eta"
			nil nil)
		       (";e" "\\epsilon" "epsilon"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/epsilon"
			nil nil)
		       ("emp" "\\emptyset" "empty-set"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/empty-set"
			nil nil)
		       ("..." "\\dots" "dots" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/dots"
			nil nil)
		       ("dot" "\\dot{$1}" "dot" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/dot"
			nil nil)
		       (";;" "\\[\n  $1\n\\]" "display-math"
			(and (not (texmathp)) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/display-math"
			nil nil)
		       (";d" "\\delta" "delta" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/delta"
			nil nil)
		       ("cup" "\\cup" "cup" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/cup"
			nil nil)
		       ("cos" "\\cos $0" "cos" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/cos"
			nil nil)
		       ("chi" "\\chi" "chi" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/chi"
			nil nil)
		       ("c." "\\cdot" "cdot" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/cdot"
			nil nil)
		       ("cases" "\\begin{cases}\n  $1\n\\end{cases}"
			"cases" (texmathp) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/cases"
			nil nil)
		       ("cap" "\\cap" "cap" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/cap"
			nil nil)
		       (";b" "\\beta" "beta" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/beta"
			nil nil)
		       ("bar" "\\bar{$1}" "bar" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/bar"
			nil nil)
		       ("atan" "\\arctan $0" "arctan"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/arctan"
			nil nil)
		       ("asin" "\\arcsin $0" "arcsin"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/arcsin"
			nil nil)
		       ("acos" "\\arccos $0" "arccos"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/arccos"
			nil nil)
		       ("~=" "\\approx" "approx"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/approx"
			nil nil)
		       (";a" "\\alpha" "alpha" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/alpha"
			nil nil)
		       ("jk" "`(delete-backward-char 1)`_{$1}" "_{}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/_{}"
			nil nil)
		       ("kj" "`(delete-backward-char 1)`^{$1}" "^{}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/^{}"
			nil nil)
		       ("cb" "`(delete-backward-char 1)`^3" "^3"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/^3"
			nil nil)
		       ("sr" "`(delete-backward-char 1)`^2" "^2"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/^2"
			nil nil)
		       ("inv" "`(delete-backward-char 1)`^{-1}" "^-1"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/^-1"
			nil nil)
		       ("**" "`(delete-backward-char 1)`^{*}" "^{*}"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/^*"
			nil nil)
		       (";Z" "\\Zeta" "Zeta" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Zeta"
			nil nil)
		       (":P" "\\Varphi" "Varphi"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Varphi"
			nil nil)
		       ("Ups" "\\Ups" "Ups" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Ups"
			nil nil)
		       ("Tau" "\\Tau" "Tau" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Tau"
			nil nil)
		       (";S" "\\Sigma" "Sigma" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Sigma"
			nil nil)
		       ("Psi" "\\Psi" "Psi" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Psi"
			nil nil)
		       ("Pi" "\\Pi" "Pi" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Pi"
			nil nil)
		       (";P" "\\Phi" "Phi" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Phi"
			nil nil)
		       (";O" "\\Omega" "Omega" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Omega"
			nil nil)
		       ("Nu" "\\Nu" "Nu" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Nu"
			nil nil)
		       ("Mu" "\\Mu" "Mu" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Mu"
			nil nil)
		       (";L" "\\Lambda" "Lambda"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Lambda"
			nil nil)
		       (";K" "\\Kappa" "Kappa" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Kappa"
			nil nil)
		       ("Iot" "\\Iota" "Iota" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Iota"
			nil nil)
		       (";G" "\\Gamma" "Gamma" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Gamma"
			nil nil)
		       ("Eta" "\\Eta" "Eta" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Eta"
			nil nil)
		       (";E" "\\Epsilon" "Epsilon"
			(and (texmathp) 'auto) nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Epsilon"
			nil nil)
		       (";D" "\\Delta" "Delta" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Delta"
			nil nil)
		       ("Chi" "\\Chi" "Chi" (and (texmathp) 'auto) nil
			nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Chi"
			nil nil)
		       (";B" "\\Beta" "Beta" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Beta"
			nil nil)
		       (";A" "\\Alpha" "Alpha" (and (texmathp) 'auto)
			nil nil
			"/home/tau/.emacs.d/snippets/LaTeX-mode/Alpha"
			nil nil)))


;;; Do not edit! File generated at Mon Aug 25 22:08:04 2025
