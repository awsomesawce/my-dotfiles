;; Copied from ubuntu.emacs file

;;; Commentary:
;; This is my personal Arch Linux WSL emacs init file.

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
;;(counsel-mode 1)
;;(ivy-mode 1)
;;(company-mode)
;; Next is the preferred method of calling global company mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(company-quickhelp-mode)
(which-key-mode)
(require 'helm)
(helm-mode)
;; Enable powerline, powerline-evil, and powerline-evil theme.
(require 'powerline)
(require 'powerline-evil)
(powerline-evil-center-color-theme)
;;(powerline-evil-vim-color-theme)
;;(add-to-list 'company-backends 'company-web-html)
;;(add-to-list 'company-backends 'company-web-jade)
;;(add-to-list 'company-backends 'company-web-slim)
(setq user-mail-address "awsomesawce@outlook.com")
(setq user-full-name "Carl C.")
;; End copy
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(compilation-message-face 'default)
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes
   '("2ed177de0dfc32a6a32d6109ddfd1782a61bcc23916b7b967fa212666d1aa95c" "8ca8fbaeaeff06ac803d7c42de1430b9765d22a439efc45b5ac572c2d9d09b16" "d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(fci-rule-color "#3C3D37")
 '(highlight-changes-colors '("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   '(("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100)))
 '(hl-todo-keyword-faces
   '(("TODO" . "magenta1")
     ("NEXT" . "magenta1")
     ("THEM" . "turquoise2")
     ("PROG" . "aquamarine2")
     ("OKAY" . "DeepSkyBlue2")
     ("DONT" . "DarkOrange")
     ("FAIL" . "red2")
     ("DONE" . "green2")
     ("NOTE" . "goldenrod1")
     ("KLUDGE" . "DarkOrange2")
     ("HACK" . "MediumPurple3")
     ("TEMP" . "gray64")
     ("FIXME" . "magenta1")
     ("DEPRECATED" . "DarkOrange")
     ("REVIEW" . "tan3")
     ("XXX" . "magenta1")
     ("XXXX" . "magenta1")
     ("\\?\\?\\?+" . "magenta1")))
 '(magit-diff-use-overlays nil)
 '(org-agenda-files
   '("~/Documents/wsl-notes/TODO/DONE.org" "~/Documents/wsl-notes/editor_info/magit_kbings.org"))
 '(package-selected-packages
   '(ox-hugo markdown-mode eldoc ox-twbs pass passmm posframe lsp-ivy airline-themes company-ctags company-php counsel-gtags counsel-projectile company-posframe dired-posframe flycheck-posframe helm-posframe ivy-posframe dired-launch doneburn-theme evil-collection evil-snipe org-journal org-super-agenda ox-json ox-ssh projectile spacemacs-theme ssh-config-mode treemacs-evil treemacs-projectile org-evil evil-org web-server websocket evil-nerd-commenter flycheck gitconfig-mode go-mode haml-mode jq-mode key-chord lsp-mode lua-mode monokai-pro-theme monokai-theme flymake-css helm-ag helm-emmet http humanoid-themes json-mode posix-manual powerline powerline-evil powershell prettier prism adoc-mode coffee-mode company company-emoji company-fuzzy company-nginx company-org-roam company-quickhelp company-web counsel counsel-css counsel-web css-autoprefixer dired-git easy-jekyll helm-company helm-css-scss helm-themes info-colors ivy-explorer ivy-file-preview js2-mode key-assist mmm-mode nord-theme org-roam ox-asciidoc ox-jekyll-md deadgrep dired-k editorconfig evil-easymotion evil-magit evil-mc github-review gitignore-templates helm-evil-markers helm-ls-git helm-org helm-rg htmlize ivy ivy-todo web-mode which-key evil evil-ediff fzf markdown-toc))
 '(pdf-view-midnight-colors '("WhiteSmoke" . "gray18"))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
