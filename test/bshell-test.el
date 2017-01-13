;;; package --- Summary
;;; Commentary:
;;
;; Unit tests of bshell-test.el
;;
;;; Code:

(require 'ert)
(require 'dash)
(require 'bshell)

(ert-deftest test-bshell-creation ()
  "Validate bshell function creation/class"
  (should (eq t (fboundp 'bshell-new)))
  (should (eq t (fboundp 'bshell-switch)))
  (should (->> (eieio-class-parent 'bshell-manager)
	       eieio-class-name
	       (eq 'buffer-manager))))

(ert-deftest bshell-creation ()
  "Validate creation of a bshell inferior shell entry creation."
  (let ((bs (bshell-new)))
    (should (eq t (eieio-object-p bs)))
    (should (eq 'bshell-entry (eieio-object-class bs)))))

(provide 'bshell-test)

;;; bshell-test ends here
