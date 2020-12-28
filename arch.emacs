;; Copied from ubuntu.emacs file
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; Enable evil - must b a way to do this in a different way.
(require 'evil)
(require 'company)
(require 'helm-company)
(require 'which-key)
(evil-mode 1)
;; End copy
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(tsdh-dark))
 '(package-selected-packages
   '(helm-ag helm-emmet http humanoid-themes json-mode posix-manual powerline powerline-evil powershell prettier prism adoc-mode coffee-mode company company-emoji company-fuzzy company-nginx company-org-roam company-quickhelp company-web counsel counsel-css counsel-jq counsel-web css-autoprefixer dired-git easy-jekyll helm-company helm-css-scss helm-themes info-colors ivy-explorer ivy-file-preview js2-mode key-assist mmm-mode nord-theme org-roam ox-asciidoc ox-jekyll-md deadgrep dired-k editorconfig evil-easymotion evil-magit evil-mc evil-org github-review gitignore-templates helm helm-evil-markers helm-ls-git helm-org helm-rg htmlize ivy ivy-todo web-mode which-key evil-collection evil evil-ediff fzf magit markdown-mode markdown-toc)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
