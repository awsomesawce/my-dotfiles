(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)
;; Uncomment to activate evil
;; Download Evil
;;(unless (package-installed-p 'evil)
;;    (package-install 'evil))

;; Enable Evil
;;(require 'evil)
;;(evil-mode 1)
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
 '(org-agenda-files (quote ("~/documents/linux_todos.org")))
 '(package-selected-packages
   (quote
    (css-autoprefixer csv csv-mode cyberpunk-theme diffview dired-collapse dired-du dired-explorer dired-git dired-git-info dired-k dired-sidebar diredfl discover django-commands django-manage django-mode django-snippets django-theme djangonaut commentary-theme company company-emoji company-org-roam company-quickhelp company-quickhelp-terminal company-web abc-mode abyss-theme ac-emmet ac-emoji ac-html easy-hugo easy-jekyll evil evil-collection evil-ediff evil-exchange evil-goggles evil-magit evil-tutor exwm-edit faff-theme flycheck flymake flymake-css flymake-eslint flymake-less flymake-sass flymake-yaml foggy-night-theme gist git git-command git-commit gitattributes-mode gitconfig gitconfig-mode gited github-browse-file github-clone github-explorer github-issues github-theme gitlab markdown-mode markdown-mode+ ace-window org-edna powerline org magithub htmlize)))
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 181 :width normal)))))
