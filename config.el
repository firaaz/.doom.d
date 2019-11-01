;;; .doom.d/config.el -*- lexic

;; Place your private configuration here

;; setup

(load-theme 'doom-nord)
(setq whitespace-line-column 80)

(require 'company)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 2)

(require 'evil-matchit)
(global-evil-matchit-mode 1)

(setq which-key-idle-delay 0.5)
(beacon-mode 1)

;; Keybindings
(map! :n "SPC o w" #'writeroom-mode
      :n "SPC o m" #'counsel-rhythmbox
      :n "SPC o s" #'helm-spotify-plus
      :n "SPC t i" #'aggressive-indent-mode)

(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

