(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(consult gptel markdown-mode orderless vertico vterm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                       ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                       ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
(package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(use-package vertico
  :ensure t
  :init (vertico-mode))

(use-package orderless
:ensure t
:custom
(completion-styles '(orderless basic))
(completion-category-overrides '((file (styles basic partial-completion)))))

(use-package consult
  :ensure t
  :bind (
         ("M-s b" . consult-buffer)
         ("M-s g" . consult-grep)
         ("M-s j" . consult-outline)
         ))

(use-package vterm
  :ensure t)
(global-set-key (kbd "C-c v") 'vterm)

;; Disable startup message
inhibit-startup-message t

;; Clear the initial scratch message
initial-scratch-message nil

;; Disable backup files
;; make-backup-files nil

;; Set the frame title format with a palm tree emoji
frame-title-format (list "🌴 %b")

;; Set Dired listing switches for more minimalist output
;; dired-listing-switches "-laghov --group-directories-first")

;; Disable the menu bar
(menu-bar-mode -1)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode +1)

(setq package-install-upgrade-built-in t)

(use-package gptel
  :ensure t
  :config
  ;; Create the Gemini backend, reading the key from authinfo
  (setq gptel-backend
        (gptel-make-gemini "Gemini"
          :key #'gptel-api-key-from-auth-source
          :stream t))

  ;; Set default model
  (setq gptel-model 'gemini-2.5-flash))

(use-package markdown-mode
  :ensure t)
(global-set-key (kbd "C-c g") 'gptel)
