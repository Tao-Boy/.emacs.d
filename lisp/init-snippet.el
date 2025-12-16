;;; init-snippet.el -*- lexical-binding: t; -*-

;; Code:

(use-package yasnippet
  :hook
  ((typst-ts-mode org-mode). yas-minor-mode)
  :config
  (set-face-attribute 'yas-field-highlight-face nil
		      :background 'unspecified
		      :inherit 'unspecified))

(defun my-smart-digit-condition ()
  (interactive)
  (when (texmathp)
    (cond
     ((looking-back "_([0-9]+" (line-beginning-position))
      'extend-brace-sub)
     
     ((looking-back "_[0-9]" (- (point) 2))
      'extend-simple-sub)
     
     ((looking-back "[a-zA-Z]" (- (point) 1))
      'new-sub)
     (t nil))))

(defun my-insert-smart-digit (key)
  (interactive)
  (pcase aas-transient-snippet-condition-result
    ('extend-brace-sub
     (delete-char -1)
     (insert key ")"))
    
    ('extend-simple-sub
     (let ((prev-digit (char-to-string (char-before))))
       (delete-char -1)       ;; 删除原先的数字
       (insert "(" prev-digit key ")"))) ;; 插入 {旧数字+新数字}

    ('new-sub
     (insert "_" key))
    (_ (insert key))))


(use-package aas
  :hook ((typst-ts-mode org-mode) . aas-activate-for-major-mode)
  :config
  (with-eval-after-load 'texmathp
    (add-to-list 'texmathp-tex-commands '("cases" env-on))
    (texmathp-compile))
  
  (aas-set-snippets 'org-mode
    "beg" '(yas "\\begin{$1}\n  $0\n\\end{$1}")
    :cond (lambda () (not (texmathp)))
    ",," '(yas "\\\\($1\\\\)$0")
    ";;" '(yas "\\[\n  $1\n\\]\n$0")
    :cond #'texmathp
    "//" '(yas "\\frac{$1}{$2}$0")
    "bm" '(yas "\\bm{$1}$0")
    "set" '(yas "\\lbrace $1\\rbrace $0")
    "hat" '(yas "\\hat{$1}$0")
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
    "**" "^{\\ast}"
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
    "->" "\\rightarrow"
    "-<" "\\leftarrow"
    "--" "\\leftrightarrow"
    "min" "\\min"
    "max" "\\max"
    "sup" "\\sup"
    "inf" "\\inf"
    "dd" "\\dif"
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
    ";n" "\\nabla"
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
    "sq"  '(yas "\\sqrt{$1}$0")
    "jk" '(yas "_{$1}$0")
    "kj" '(yas "^{$1}$0")
    "lim" '(yas "\\lim_{$1 \\to ${2:\\infty}}$0")
    "lsup" '(yas "\\limsup_{$1}$0")
    "linf" '(yas "\\liminf_{$1}$0")
    "sum" '(yas "\\sum_{$1}$0")
    "int" '(yas "\\int_{$1} $2 \\, \\dif ${3:x}$0")
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
    "lint" '(yas "\\int_{-\\infty}^{+\\infty} $1 \\, d${2:x}$0")
    "lrs" '(yas "\\left( $1 \\right)$0")
    "lrm" '(yas "\\left[ $1 \\right]$0")
    "lrb" '(yas "\\left\\lbrace $1 \\right\\rbrace $0")
    "lr<" '(yas "\\left\\langle $1 \\right\\rangle$0")
    "bra" '(yas "\\bra{$1}$0")
    "ket" '(yas "\\ket{$1}$0")
    "bk" '(yas "\\braket{$1}{$2}$0")
    "mel" '(yas "\\mel{$1}{$2}{$3}$0")
    )
  (aas-set-snippets 'typst-ts-mode
    :cond #'not-typst-mathzone-p
    ",," '(yas "$$1$$0")
    ";;" '(yas "$\n  $1\n$")
    :cond #'typst-mathzone-p
    ";a" "alpha"
    ";A" "Alpha"
    ";b" "beta"
    ";B" "Beta"
    ";t" "theta"
    ";g" "gamma"
    ";G" "Gamma"
    ";d" "delta"
    ";D" "Delta"
    ";e" "epsilon"
    ":e" "epsilon.alt"
    ";E" "Epsilon"
    ";z" "zeta"
    ";Z" "Zeta"
    ";k" "kappa"
    ";K" "Kappa"
    ";l" "lambda"
    ";L" "Lambda"
    ";r" "rho"
    ";R" "Rho"
    ";n" "nabla"
    ";s" "sigma"
    ";S" "Sigma"
    ";o" "omega"
    ";O" "Omega"
    "..." "dots"
    "c." "dot"
    "v." "dot.v"
    "nin" "in.not"
    "aa" "forall"
    "ee" "exists"
    "to" "->"
    "jk" '(yas "_($1)$0")
    "kj" '(yas "^($1)$0")
    "sr" "^2"
    "cb" "^3"
    "inv" "^(-1)"
    "**" "^*"
    "+-" "plus.minus"
    "-+" "minus.plus"
    "cap" "inter"
    "cup" "union"
    "sub" "subset"
    "oo" "infinity"
    "dag" "^dagger"
    "xx" "times"
    "cir" "circle"
    "eqv" "equiv"
    "ox" "times.o"
    "o+" "plus.o"
    "emp" "emptyset"
    "dd" "dif"
    "ket" '(yas "ket($1)$0")
    "bra" '(yas "bra($1)$0")
    "brk" '(yas "braket($1)$0")
    "dot" '(yas "dot($1)$0")
    "doo" '(yas "dot.double($1)$0")
    "hat" '(yas "hat($1)$0")
    "sq" '(yas "sqrt($1)$0")
    "sum" '(yas "sum_($1)$0")
    "int" '(yas "integral_($1)$2 dif $0")
    "iint" '(yas "integral.double_($1)$2 dif $0")
    "lint" '(yas "integral_(-oo)^(+oo) $1 dif $0")
    "//" '(yas "($1)/($2)$0")
    :cond #'my-smart-digit-condition
    "0" (lambda () (interactive) (my-insert-smart-digit "0"))
    "1" (lambda () (interactive) (my-insert-smart-digit "1"))
    "2" (lambda () (interactive) (my-insert-smart-digit "2"))
    "3" (lambda () (interactive) (my-insert-smart-digit "3"))
    "4" (lambda () (interactive) (my-insert-smart-digit "4"))
    "5" (lambda () (interactive) (my-insert-smart-digit "5"))
    "6" (lambda () (interactive) (my-insert-smart-digit "6"))
    "7" (lambda () (interactive) (my-insert-smart-digit "7"))
    "8" (lambda () (interactive) (my-insert-smart-digit "8"))
    "9" (lambda () (interactive) (my-insert-smart-digit "9"))
    ))

(provide 'init-snippet)
;; init-snippet.el ends here
