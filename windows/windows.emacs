(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; Uncomment the next two lines to initiate evil-mode.
;;(require 'evil)
;;      (evil-mode 1)
;;(add-hook 'org-mode-hook 'evil-org-mode)
(add-hook 'org-mode-hook 'org-indent-mode)
;;(helm-mode 1)
(counsel-mode 1)
(ivy-mode 1)
;;(global-company-mode 1)
;;(require 'which-key)
(which-key-mode 1)
;; Enable powerline, powerline-evil, and powerline-evil theme.
(require 'powerline)
;;(require 'powerline-evil)
;;(powerline-evil-center-color-theme)
(powerline-default-theme)
;;(add-to-list 'company-backends 'company-web-html)
;;(add-to-list 'company-backends 'company-web-jade)
;;(add-to-list 'company-backends 'company-web-slim)
(setq user-mail-address "awsomesawce@outlook.com")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes '(default) nil nil "Erased all customizations for themes.")
 '(epg-gpg-home-directory nil)
 '(epg-gpg-program "gpg")
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(inhibit-startup-screen nil)
 '(org-agenda-files
   '("d:/Carl/OneDrive/TODO/TODO.org" "~/CFA_test/my-addon-list.org" "d:/Carl/OneDrive/org_dir/emacs_problems.org"))
 '(package-gnupghome-dir nil)
 '(package-selected-packages
   '(airline-themes bash-completion company-fuzzy company-posframe company-quickhelp ox-gfm web-server yaml-mode yasnippet yasnippet-snippets ivy-posframe magit-todos notmuch treemacs-magit treemacs-projectile helm-ag paper-theme posix-manual powerline powerline-evil prettier prism pydoc tldr treemacs-evil websocket dracula-theme evil-collection evil-test-helpers helm-emmet which-key flycheck evil-traces company-shell evil-org ac-emoji ac-helm ac-html evil-goggles evil-mc evil-mc powershell evil-tabs evil-tutor spacemacs-theme terminal-here toc-org vdiff company-nginx company-org-roam company-web counsel-css counsel-projectile css-autoprefixer dashboard didyoumean dired-recent evil helm-org helm-projectile company coffee-mode auto-complete emmet-mode helm magit markdown-mode ox-jekyll-md python-mode speed-type stylus-mode sublime-themes vs-dark-theme w3m web-mode-edit-element web-mode wgrep org-index org-journal counsel ivy docbook gnu-elpa-keyring-update))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(user-full-name "Carl C")
 '(user-mail-address "awsomesawce@outlook.com"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
