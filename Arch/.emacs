;; Copied from ubuntu.emacs file
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; Enable custom packages
(require 'evil)
(evil-mode 1)
;; Add hook for evil-org
(add-hook 'org-mode-hook 'evil-org-mode)
;;(helm-mode 1)
(counsel-mode 1)
(ivy-mode 1)
;;(company-mode 1)
;;(require 'which-key)
(which-key-mode)
;; Enable powerline, powerline-evil, and powerline-evil theme.
(require 'powerline)
(require 'powerline-evil)
(powerline-evil-center-color-theme)
;;(add-to-list 'company-backends 'company-web-html)
;;(add-to-list 'company-backends 'company-web-jade)
;;(add-to-list 'company-backends 'company-web-slim)
(setq user-mail-address "awsomesawce@outlook.com")
;; End copy
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(tango-dark))
 '(package-selected-packages
   '(company-posframe dired-posframe flycheck-posframe helm-posframe ivy-posframe dired-launch doneburn-theme evil-collection evil-snipe org-books org-download org-gtd org-journal org-sidebar org-sticky-header org-super-agenda ox-hugo ox-json ox-ssh projectile spacemacs-theme ssh-config-mode treemacs-evil treemacs-projectile org-evil evil-org web-server websocket evil-nerd-commenter flycheck gitconfig-mode go-mode haml-mode jq-mode key-chord lsp-mode lua-mode monokai-pro-theme monokai-theme flymake-css helm-ag helm-emmet http humanoid-themes json-mode posix-manual powerline powerline-evil powershell prettier prism adoc-mode coffee-mode company company-emoji company-fuzzy company-nginx company-org-roam company-quickhelp company-web counsel counsel-css counsel-jq counsel-web css-autoprefixer dired-git easy-jekyll helm-company helm-css-scss helm-themes info-colors ivy-explorer ivy-file-preview js2-mode key-assist mmm-mode nord-theme org-roam ox-asciidoc ox-jekyll-md deadgrep dired-k editorconfig evil-easymotion evil-magit evil-mc github-review gitignore-templates helm-evil-markers helm-ls-git helm-org helm-rg htmlize ivy ivy-todo web-mode which-key evil evil-ediff fzf markdown-mode markdown-toc)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
