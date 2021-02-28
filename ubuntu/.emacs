(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; Enable evil - must b a way to do this in a different way.
(require 'evil)
(evil-mode 1)
;; ;; ;; ;; Copied from Arch/.emacs ;; ;; ;; ;;
;;(counsel-mode)
;;(ivy-mode)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
;;(company-quickhelp-mode)
(which-key-mode 1)
(require 'helm)
(helm-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (misterioso)))
 '(font-use-system-font t)
 '(package-selected-packages
   (quote
    (dired-k elpy helpful lsp-pyright which-key-posframe eclipse-theme editorconfig evil-tabs ag zenburn-theme helm-ag helm-company helm-emmet emmet-mode company-web evil-org undo-tree didyoumean treemacs powershell projectile python-mode spaceline abc-mode abyss-theme ac-emmet ac-emoji ac-html easy-hugo easy-jekyll evil evil-collection evil-ediff evil-exchange evil-goggles evil-magit evil-tutor exwm-edit faff-theme flycheck flymake flymake-css flymake-eslint flymake-less flymake-sass flymake-yaml foggy-night-theme gist git git-command git-commit gitattributes-mode gitconfig gitconfig-mode gited github-browse-file github-clone github-explorer github-issues github-theme gitlab markdown-mode markdown-mode+ ace-window org-edna powerline org magithub htmlize)))
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 181 :width normal)))))
