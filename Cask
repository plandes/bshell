;; -*- emacs-lisp -*-
(source gnu)
(source melpa)

(depends-on "noflet")

(package-file "lisp/bshell.el")

(files "lisp/*.el" "doc/*.texi" (:exclude ".dir-locals.el"))

(development
 (depends-on "buffer-manage"
	     :git "https://github.com/plandes/buffer-manage"
	     :files ("lisp/*.el"))
 (depends-on "ert-runner")
 (depends-on "dash")
 (depends-on "choice-program"))
