;;; .doom.d/config.el -*- lexic
;; Place your private configuration here
;; setup


(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

(load-theme 'doom-spacegrey)
(setq whitespace-line-column 80)
(setq which-key-idle-delay 0.3)
(setq evil-want-o/O-to-continue-comments nil)

(require 'company)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)

;; Keybindings
;; open sub-binding
(map! :n "SPC o m" #'counsel-rhythmbox
      :n "SPC o s" #'helm-spotify-plus)
