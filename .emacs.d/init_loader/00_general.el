;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; General ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; show number of lines
(global-linum-mode t)
(setq linum-format "% 3d")
;; show full-path in menu
(setq frame-title-format "%f")
;; show time
(display-time)
;; set line-by-line scroll
(setq scroll-step 1)
;; hide message at startup
(setq inhibit-startup-message t)
;; convert tabs to spaces
(setq-default indent-tabs-mode nil)
;; highlight matching parenthesis
(show-paren-mode t)
;; hide toolbar
(tool-bar-mode 0)
;; hide scrollbar
(toggle-scroll-bar nil)