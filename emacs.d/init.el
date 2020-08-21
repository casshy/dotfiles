
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(prefer-coding-system 'utf-8-unix)

;; Don't maek lock file and backup file
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)

(setq inhibit-startup-message t)

;; Don't make back-up files.
(setq make-backup-files nil)

;; Delete auto save file after exiting.
(setq delete-auto-save-files t)

(setq-default tab-width 4 indent-tabs-mode nil)

(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; Show line count
(global-linum-mode t)
(setq linum-format "%4d ")

;; Show column count
(column-number-mode t)

(setq hl-line-face 'underline)
(global-hl-line-mode)

;(global-hl-line-mode t)

(show-paren-mode 1)

(setq scroll-conservatively 1)

;(setq pc-select-selection-keys-only t)
;(pc-selection-mode 1)

;; Delete whole line with C-k
(setq kill-whole-line t)
;; C-h > backspace
(global-set-key (kbd "C-h") 'delete-backward-char)

(fset 'yes-or-no-p 'y-or-n-p)

(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

;; Package settings
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)

(package-initialize)
