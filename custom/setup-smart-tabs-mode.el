;; C
(add-hook 'c-mode-hook (lambda()
						(smart-tabs-mode-enable)
						(smart-tabs-advice c-indent-line c-basic-offset)
						(smart-tabs-advice c-indent-region c-basic-offset)))

;; JavaScrip
(add-hook 'js2-mode-hook (lambda()
						   (smart-tabs-mode-enable)
						   (smart-tabs-advice c-indent-line c-basic-offset)
						   (smart-tabs-advice c-indent-region c-basic-offset)))

;; Perl (cperl-mode)
(add-hook 'cperl-mode-hook (lambda()
							 (smart-tabs-mode-enable)
							 (smart-tabs-advice cperl-indent-line cperl-indent-level)))

;; Python
(add-hook 'python-mode-hook (lambda()
							  (smart-tabs-mode-enable)
							  (smart-tabs-advice python-indent-line-1 python-indent)))


;; HTML
(add-hook 'html-mode-hook (lambda()
						 (smart-tabs-mode-enable)
						 (smart-tabs-advice html-indent-line html-basic-offset)
						 (smart-tabs-advice html-indent-region html-basic-offset)))
