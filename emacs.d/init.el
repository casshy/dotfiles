(setq inhibit-startup-essage t)

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

;; Show column count
(column-number-mode t)

(global-hl-line-mode t)

(show-paren-mode 1)

(setq scroll-conservatively 1)

(setq pc-select-selection-keys-only t)
(pc-selection-mode 1)

;; Delete whole line with C-k
(setq kill-whole-line t)
;; C-h > backspace
(global-set-key (kbd "C-h") 'delete-backward-char)

(fset 'yes-or-no-p 'y-or-n-p)
