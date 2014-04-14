;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Color ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-faces
 '(default ((t (:background "#191919" :foreground "#FFFFFF")))))
 '(cursor (
            (((class color) (background dark)) (:background "#00AA00"))
            (((class color) (background light)) (:background "#999999"))
            (t ())
            ))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Font ;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-face-attribute 'default nil
                   :family "Ricty Discord"
                   :height 160)
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Ricty Discord"))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; rainbow-delimiters ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode t)
(custom-set-faces '(rainbow-delimiters-depth-1-face ((t (:foreground "#7f8c8d")))))