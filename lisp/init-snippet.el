;;; init-snippet.el -*- lexical-binding: t; -*-

;; Code:

(use-package yasnippet
  :straight t
  :init
  (yas-global-mode)
  :config
  (set-face-attribute 'yas-field-highlight-face nil
		      :background "unspecified")
  (setq yas-cursor-field-highlight nil))

(defvar my-snippets 
      (list
       'laas-mode
       :cond  (lambda () (not (texmathp)))
       ";;" (lambda () (interactive)
	      (yas-expand-snippet  "\\begin{equation*}\n  $1\n\\end{equation*}\n$0"))
       ",," (lambda () (interactive)
	      (yas-expand-snippet "\\\\($1\\\\) $0"))
       "tbf" (lambda () (interactive)
	       (yas-expand-snippet "\\textbf{$1}$0"))
       :cond #'texmathp
       "sq" (lambda () (interactive)
	      (yas-expand-snippet "\\sqrt{$1}$0"))
       ";a" "\\alpha"
       ";A" "\\Alpha"
       ";b" "\\beta"
       ";t" "\\theta"
       ";B" "\\Beta"
       ";g" "\\gamma"
       ";G" "\\Gamma"
       ";d" "\\delta"
       ";D" "\\Delta"
       ";e" "\\epsilon"
       ":e" "\\varepsilon"
       ";E" "\\Epsilon"
       ";z" "\\zeta"
       ";Z" "\\Zeta"
       "eta" "\\eta"
       "Eta" "\\Eta"
       ";k" "\\kappa"
       ";l" "\\lambda"
       ";L" "\\Lambda"
       "mu" "\\mu"
       "Mu" "\\Mu"
       "nu" "\\nu"
       "Nu" "\\Nu"
       "pi" "\\pi"
       "Pi" "\\Pi"
       ";r" "\\rho"
       ";R" "\\Rho"
       ";s" "\\sigma"
       ";S" "\\Sigma"
       "tau" "\\tau"
       "phi" "\\phi"
       "psi" "\\psi"
       ";o" "\\omega"
       ";O" "\\Omega"
       "sr" "^2"
       "cb" "^3"
       "jk" (lambda () (interactive)
	      (yas-expand-snippet "_{$1}$0"))
       "kj" (lambda () (interactive)
	      (yas-expand-snippet "^{$1}$0"))
       "lim" (lambda () (interactive)
	       (yas-expand-snippet "\\lim_{$1 \\to ${2:\\infty}}$0"))
       "lsup" (lambda () (interactive)
		(yas-expand-snippet "\\limsup_{$1}$0"))
       "linf" (lambda () (interactive)
		(yas-expand-snippet "\\liminf_{$1}$0"))
       "sum" (lambda () (interactive)
	       (yas-expand-snippet
		(yas-choose-value '("\\sum_{$1} $0"
				    "\\sum_{$1}^{$2} $0"))))
       "int" (lambda () (interactive)
	       (yas-expand-snippet
		(yas-choose-value '("\\int_{$1} $2 \\dif $0"
				    "\\int_{$1}^{$2} $3 \\dif $0"))))
       "par" (lambda () (interactive)
	       (yas-expand-snippet
		(yas-choose-value '("\\frac{\\partial $1}{\\partial $2}$0"
				    "\\frac{\\partial^2 $1}{\\partial $2^2}$0"
				    "\\frac{\\partial^2 $1}{\\partial $2 \\partial $3}$0"))))
       "div" (lambda () (interactive)
	       (yas-expand-snippet
		(yas-choose-value '("\\frac{\\dif $1}{\\dif $2}$0"
				    "\\frac{\\dif^2 $1}{\\dif $2^2}$0"
				    "\\frac{\\dif^2 $1}{\\dif $2 \\dif $3}$0"))))
       "bcup" (lambda () (interactive)
		(yas-expand-snippet "\\bigcup_{$1}^{$2}$0"))
       "bcap" (lambda () (interactive)
		(yas-expand-snippet "\\bigcap_{$1}^{$2}$0"))
       "oint" (lambda () (interactive)
		(yas-expand-snippet "\\oint_{$1} $2 \\dif $0"))
       "lint" (lambda () (interactive)
		(yas-expand-snippet "\\int_{-\\infty}^{+\\infty} $1 \\dif $0"))
       "msf" (lambda () (interactive)
	       (yas-expand-snippet "\\mathsf{$1}$0"))
       "mbf" (lambda () (interactive)
	       (yas-expand-snippet "\\mathbf{$1}$0"))
       "cal" (lambda () (interactive)
	       (yas-expand-snippet "\\mathcal{$1}$0"))
       "scr" (lambda () (interactive)
	       (yas-expand-snippet "\\mathscr{$1}$0"))
       "mbb" (lambda () (interactive)
	       (yas-expand-snippet "\\mathbb{$1}$0"))
       "bm" (lambda () (interactive)
	      (yas-expand-snippet "\\bm{$1}$0"))
       "mrm" (lambda () (interactive)
	       (yas-expand-snippet "\\mathrm{$1}$0"))
       "RR" "\\mathbb{R}"
       "CC" "\\mathbb{C}"
       "NN" "\\mathbb{N}"
       "ZZ" "\\mathbb{Z}"
       "QQ" "\\mathbb{Q}"
       "sin" "\\sin "
       "cos" "\\cos "
       "tan" "\\tan "
       "asin" "\\arcsin "
       "acos" "\\arccos "
       "atan" "\\arctan "
       "log" "\\log "
       "ln" "\\ln "
       "exp" "\\exp "
       "hbar" "\\hbar"
       "dot" (lambda () (interactive)
	       (yas-expand-snippet "\\dot{$1}$0"))
       "doo" (lambda () (interactive)
	       (yas-expand-snippet "\\ddot{$1}$0"))
       "hat" (lambda () (interactive)
	       (yas-expand-snippet "\\hat{$1}$0"))
       "bar" (lambda () (interactive)
	       (yas-expand-snippet "\\bar{$1}$0"))
       "->" "\\rightarrow"
       "-<" "\\leftarrow"
       "--" "\\leftrightarrow"
       "min" "\\min"
       "max" "\\max"
       "sup" "\\sup"
       "inf" "\\inf"
       "dd" "\\dif"
       "lrs" (lambda () (interactive)
	       (yas-expand-snippet "\\left( $1 \\right)$0"))
       "lrm" (lambda () (interactive)
	       (yas-expand-snippet "\\left[ $1 \\right]$0"))
       "lrb" (lambda () (interactive)
	       (yas-expand-snippet "\\left\\\\{ $1 \\right\\\\}$0"))
       "lr<" (lambda () (interactive)
	       (yas-expand-snippet "\\left\\langle $1 \\right\\rangle"))
       "..." "\\dots"
       "c." "\\cdot"
       "v." "\\vdot"
       "inn" "\\in"
       "nin" "\\notin"
       "aa" "\\forall"
       "ee" "\\exists"
       "!=" "\\neq"
       "~=" "\\approx"
       "~~" "\\sim"
       ">=" "\\geq"
       "<=" "\\leq"
       ">>" "\\gg"
       "<<" "\\ll"
       "to" "\\to"
       "inv" "^{-1}"
       "**" "^*"
       "+-" "\\pm"
       "-+" "\\mp"
       "cap" "\\cap"
       "cup" "\\cup"
       "sub" "\\subseteq"
       "oo" "\\infty"
       "dag" "^\\dagger"
       "xx" "\\times"
       "=>" "\\implies"
       "up" "\\uparrow"
       "cir" "\\circ"
       "eqv" "\\equiv"
       "ell" "\\ell"
       "ox" "\\otimes"
       "o+" "\\oplus"
       "not" "\\not"
       "emp" "\\emptyset"
       "set" (lambda () (interactive)
	      (yas-expand-snippet "\\\\{ $1 \\\\}$0"))
       ";n" "\\nabla"
       "bra" (lambda () (interactive)
	       (yas-expand-snippet "\\bra{$1}$0"))
       "ket" (lambda () (interactive)
	       (yas-expand-snippet "\\ket{$1}$0"))
       "bk" (lambda () (interactive)
	      (yas-expand-snippet
	       (yas-choose-value '("\\braket{$1}{$2}$0"
				   "\\mel{$1}{$2}{$3}$0"))))
       ))

(use-package laas
  :straight t
  :hook ((LaTeX-mode org-mode) . laas-mode)
  :init
  (setq laas-enable-auto-space nil)
  (setq laas-basic-snippets nil
        laas-latex-accent-cond nil
        laas-subscript-snippets nil)
  :config
  (apply 'aas-set-snippets my-snippets)
  )

(provide 'init-snippet)
;; init-snippet.el ends here
