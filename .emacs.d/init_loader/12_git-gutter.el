;;-----------------------------
;; git-gutter -----------------
;;-----------------------------
(require 'git-gutter)
(global-git-gutter-mode t)

;;----------
;; setting -
;;----------
;; toggle
(global-set-key (kbd "C-x C-g") 'git-gutter:toggle)
;; show diff popup
(global-set-key (kbd "C-x v =") 'git-gutter:popup-hunk)
;; Jump to next/previous hunk
(global-set-key (kbd "C-x p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter:next-hunk)
