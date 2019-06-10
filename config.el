;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
;; Place your private configuration here

;; user defined functions
(defun newline-below ()
    (interactive)
    (let ((oldpos (point)))
        (end-of-line)
        (newline)))

(defun newline-above ()
    (interactive)
    (let ((oldpos (point)))
        (beginning-of-line)
        (newline)))

;; UTF-8 support for terminal sessions
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; hooks
(after! anaconda-mode
  (set-company-backend! 'anaconda-mode '(company-anaconda company-yasnippet)))

;; keybindings
(map! :n "C-c m" #'counsel-rhythmbox
      :nv "] SPC" #'newline-below
      :nv "[ SPC" #'newline-above)
