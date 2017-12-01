(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  (require 'setup-helm-gtags))
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)

(require 'function-args)
(fa-config-default)

;(require 'flymake)
;(defun flymake-get-tex-args (file-name)
;(list "pdflatex"
;(list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))
;(add-hook 'LaTeX-mode-hook 'flymake-mode)

(require 'android-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(android-mode-sdk-dir "/opt/android")
 '(c-basic-offset (quote set-from-style))
 '(column-number-mode t)
 '(completion-ignored-extensions
   (quote
	(".o" "~" ".bin" ".lbin" ".so" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".svn/" ".hg/" ".git/" ".bzr/" "CVS/" "_darcs/" "_MTN/" ".fmt" ".tfm" ".class" ".fas" ".lib" ".mem" ".x86f" ".sparcf" ".dfsl" ".pfsl" ".d64fsl" ".p64fsl" ".lx64fsl" ".lx32fsl" ".dx64fsl" ".dx32fsl" ".fx64fsl" ".fx32fsl" ".sx64fsl" ".sx32fsl" ".wx64fsl" ".wx32fsl" ".fasl" ".ufsl" ".fsl" ".dxl" ".lo" ".la" ".gmo" ".mo" ".toc" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".pyc" ".pyo")))
 '(custom-enabled-themes (quote (manoj-dark)))
 '(default-frame-alist (quote ((nil))))
 '(dired-listing-switches "-alhF --group-directories-first --color=auto")
 '(focus-follows-mouse t)
 '(font-lock-global-modes (quote (not speedbar-mode)))
 '(global-mark-ring-max 5000)
 '(indent-tabs-mode t)
 '(line-number-mode nil)
 '(major-mode (quote text-mode))
 '(package-selected-packages
   (quote
	(projectile org-projectile-helm projectile-trailblazer helm-projectile helm-flymake flymake-shell auto-complete-auctex ac-math auctex-latexmk android-mode ede-compdb company-c-headers function-args smart-tabs-mode zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu)))
 '(safe-local-variable-values
   (quote
	((company-clang-arguments "-I/home/m3cool/doc/bcc/grafos-ci065/trab2/ae11/")
	 (company-clang-arguments "I-/home/m3cool/doc/bcc/grafos-ci065/trab2/ae11")
	 (company-clang-arguments "-I/home/m3cool/projects/c-demo-project/include1/" "-I/home/m3cool/projects/c-demo-project/include2/"))))
 '(speedbar-ignored-directory-expressions (quote ("[/\\]logs?[/\\]\\'")))
 '(speedbar-show-unknown-files t)
 '(tab-width 4))



(when window-system          ; start speedbar if we're using a window system
  (speedbar t))
(require 'setup-speedbar)

(setq-default c-basic-offset 4
			  tab-width 4
			  indent-tabs-mode t)

'(tab-width 4)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "lawn green" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width condensed :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(company-tooltip ((t (:background "gold" :foreground "black"))))
 '(cursor ((t (:background "green" :foreground "blue"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "rosy brown"))))
 '(font-lock-comment-face ((t (:foreground "sienna4" :slant oblique))))
 '(font-lock-function-name-face ((t (:foreground "green" :weight bold :height 1.0))))
 '(font-lock-keyword-face ((t (:foreground "yellow"))))
 '(font-lock-preprocessor-face ((t (:foreground "cyan" :slant italic))))
 '(font-lock-string-face ((t (:foreground "white"))))
 '(font-lock-type-face ((t (:foreground "DodgerBlue1"))))
 '(font-lock-warning-face ((t (:foreground "yellow" :weight bold))))
 '(linum ((t (:inherit (shadow default) :foreground "dim gray")))))
(put 'upcase-region 'disabled nil)
