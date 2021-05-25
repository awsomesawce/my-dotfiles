(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; Uncomment the next two lines to initiate evil-mode.
(require 'evil)
      (evil-mode 1)
(add-hook 'org-mode-hook 'evil-org-mode)
;;(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'html-mode-hook 'web-mode) ;; Testing this
(helm-mode 1)
;;(counsel-mode 1)
;;(ivy-mode 1)
(global-company-mode)
;;(counsel-company)
;;(require 'which-key)
(which-key-mode 1)
;; Enable powerline, powerline-evil, and powerline-evil theme.
(require 'powerline)
(require 'powerline-evil)
(powerline-evil-center-color-theme)
;;(add-to-list 'load-path
;;             "~/path-to-yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
;;(powerline-default-theme)
;;(add-to-list 'company-backends 'company-web-html)
;;(add-to-list 'company-backends 'company-web-jade)
;;(add-to-list 'company-backends 'company-web-slim)
(setq user-mail-address "awsomesawce@outlook.com")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes
   '("7922b14d8971cce37ddb5e487dbc18da5444c47f766178e5a4e72f90437c0711" "2ed177de0dfc32a6a32d6109ddfd1782a61bcc23916b7b967fa212666d1aa95c" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default) nil nil "Erased all customizations for themes.")
 '(desktop-after-read-hook '(list-buffers))
 '(epg-gpg-home-directory nil)
 '(epg-gpg-program "gpg")
 '(evil-undo-system 'undo-tree)
 '(face-font-family-alternatives
   '(("FuraCode NF" "courier" "fixed")
     ("Monospace Serif" "Courier 10 Pitch" "Consolas" "Courier Std" "FreeMono" "Nimbus Mono L" "courier" "fixed")
     ("courier" "CMU Typewriter Text" "fixed")
     ("Sans Serif" "helv" "helvetica" "arial" "fixed")
     ("helv" "helvetica" "arial" "fixed")))
 '(fci-rule-color "#37474f")
 '(hl-sexp-background-color "#1c1f26")
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
 '(inhibit-startup-screen t)
 '(initial-buffer-choice 'remember-notes)
 '(initial-major-mode 'shell-script-mode)
 '(ivy-mode t)
 '(org-agenda-files
   '("d:/Carl/OneDrive/Desktop/List_Of_Libraries.org" "d:/Carl/OneDrive/TODO/TODO.org" "~/CFA_test/my-addon-list.org" "d:/Carl/OneDrive/org_dir/emacs_problems.org"))
 '(org-indent-mode-turns-off-org-adapt-indentation nil)
 '(package-check-signature allow-unsigned)
 '(package-gnupghome-dir nil)
 '(package-selected-packages
   '(undo-tree helpful powershell clang-format auctex editorconfig-generate darkokai-theme deadgrep writeroom-mode ag editorconfig elisp-def elscreen-tab eshell-prompt-extras eshell-syntax-highlighting buttons flymake counsel-jq counsel-notmuch counsel-web ctrlf dired-posframe dired-rsync dired-sidebar eshell-toggle evil-nerd-commenter evil-owl evil-tex fzf kakoune key-assist key-chord lsp-ivy lsp-java lsp-mode lsp-ui lua-mode markdown-toc material-theme mmm-mode monokai-theme mustache nord-theme org-evil pandoc-mode pass pomidor xonsh-mode helm-slime airline-themes bash-completion company-fuzzy company-posframe company-quickhelp ox-gfm web-server yaml-mode yasnippet yasnippet-snippets ivy-posframe magit-todos notmuch treemacs-magit treemacs-projectile helm-ag paper-theme posix-manual powerline powerline-evil prettier prism pydoc tldr treemacs-evil websocket dracula-theme evil-collection evil-test-helpers helm-emmet which-key flycheck evil-traces company-shell evil-org ac-emoji ac-helm ac-html evil-goggles evil-mc evil-tabs evil-tutor spacemacs-theme terminal-here toc-org vdiff company-nginx company-org-roam company-web counsel-css counsel-projectile css-autoprefixer dashboard didyoumean dired-recent evil helm-org helm-projectile coffee-mode auto-complete emmet-mode helm magit markdown-mode ox-jekyll-md python-mode speed-type stylus-mode sublime-themes vs-dark-theme w3m web-mode-edit-element wgrep org-index org-journal counsel ivy docbook gnu-elpa-keyring-update))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(shell-completion-fignore '("*.dll"))
 '(texinfo-mode-hook '(flyspell-mode))
 '(tool-bar-style 'both-horiz nil nil "This will display both text and icon in the above toolbar")
 '(user-full-name "Carl C")
 '(user-mail-address "awsomesawce@outlook.com")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a")))
 '(vc-annotate-very-old-color nil)
 '(visible-bell t)
 '(x-stretch-cursor t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
