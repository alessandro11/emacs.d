(require 'function-args)
(fa-config-default)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))

;;(semantic-add-system-include "/usr/include/")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; You can add this to improve the parse of macro-heavy code:

;(require 'semantic/bovine/c)
;(add-to-list 'semantic-lex-c-preprocessor-symbol-file
;   "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h")
