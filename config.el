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

(setq which-key-idle-delay 0.5)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 2)

;; hooks
(after! anaconda-mode
  (set-company-backend! 'anaconda-mode '(company-anaconda company-yasnippet)))

;; keybindings
(map! :nvi "C-c m" #'counsel-rhythmbox
      :nvi "C-c w" #'olivetti-mode
      :nv "] SPC" #'newline-below
      :nv "[ SPC" #'newline-above
      :ni "C-h" #'evil-window-left
      :ni "C-j" #'evil-window-down
      :ni "C-k" #'evil-window-up
      :ni "C-l" #'evil-window-right)

;; settings
(setq exec-path (append exec-path '("/home/firaaz/anaconda3/bin")))
(setenv "PATH" (concat (getenv "PATH") ":/home/firaaz/anaconda3/bin"))
;; UTF-8 support for terminal sessions
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))


(provide 'config)
;;; config.el ends here
