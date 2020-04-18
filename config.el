;; -*- lexical-binding -*-

;; Dont know how to use package.el for non repo packages
(straight-use-package
  '(emacs-surround
    :host github
    :repo "ganmacs/emacs-surround"))

;; setup
(setq user-full-name "Firaaz Farook"
      user-mail-address "firaazfarook19@gmail.com")

(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
(require 'company)
(require 'emacs-surround)

;; Settings
(hl-line-mode -1)

(setq whitespace-line-column 80)
(setq which-key-idle-delay 0.3)
(setq display-line-numbers-type nil)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 1)

;; hooks
(after! evil-snipe (evil-snipe-mode -1))
(add-hook 'after-init-hook 'heaven-and-hell-init-hook)

;;; setting and toggling theme
(after! heaven-and-hell
  (let ((light-theme 'doom-solarized-light)
        (dark-theme 'doom-solarized-dark))
    (setq heaven-and-hell-themes
          `((light  ,light-theme)
            (dark  ,dark-theme)))
    (setq heaven-and-hell-theme-type 'light)))


;; KEYBINDS

(global-set-key (kbd "C-q") 'emacs-surround)

(global-set-key (kbd "C-)") 'sp-forward-slurp-sexp)
(global-set-key (kbd "M-)") 'sp-forward-barf-sexp)
(global-set-key (kbd "C-(") 'sp-backward-slurp-sexp)
(global-set-key (kbd "M-(") 'sp-backward-barf-sexp)

;; toggle sub-bindings
(global-set-key (kbd "C-c t t") 'heaven-and-hell-toggle-theme)

;; open sub-binding
(global-set-key (kbd "C-c o m") 'counsel-rhythmbox)
(global-set-key (kbd "C-c o s") 'helm-spotify-plus)
