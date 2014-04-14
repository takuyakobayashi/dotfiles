;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; load-path ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/")
        (expand-file-name "~/.emacs.d/elisp/")
        )
       load-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Elpa ;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(setq package-user-dir "~/.emacs.d/elisp/elpa/")
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; auto install ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'cl)
(defvar installing-package-list
  '(
    ;; package list
    auto-complete
    dash
    git-commit-mode
    gitconfig-mode
    helm
    init-loader
    markdown-mode
    popup
    rainbow-delimiters
    undo-tree
    ))
(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-loader ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'init-loader)
(setq init-loader-show-log-after-init nil) ;; 起動時のログバッファを表示しない
(init-loader-load "~/.emacs.d/init_loader")
(if (not (equal (init-loader-error-log) ""))
    (init-loader-show-log)) ; エラーがあったときだけログバッファを表示

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Test ;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "M-/") 'undo-tree-redo)

;; window 分割
;(split-window-horizontally)
;(other-window 1)
;(split-window-vertically)

;; git-commit-mode
(require 'git-commit-mode)