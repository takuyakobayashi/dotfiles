;;-----------------------------
;; General --------------------
;;-----------------------------
;; show number of lines
(global-linum-mode t)
(setq linum-format "% 5d")
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
;; set backup directory
(setq backup-directory-alist
  (cons (cons ".*" (expand-file-name "~/dotfiles/.emacs.d/backup/"))
        backup-directory-alist))
;; set auto save directory
(setq auto-save-file-name-transforms
  `((".*", (expand-file-name "~/dotfiles/.emacs.d/auto-save-list/") t)))
