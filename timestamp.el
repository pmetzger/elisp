;;; timestamp.el --- Functions for inserting timestamps

;; This file is in the public domain.
;; To the extent possible under law, Perry E. Metzger has waived all
;; copyright and related or neighboring rights to timestamp.el.
;; This work is published from: United States
;; see also: https://creativecommons.org/publicdomain/zero/1.0/

;; Author: Perry E. Metzger <perry@piermont.com>

;;; Commentary:
;; I frequently find myself taking notes of classes, meetings and
;; other events using emacs, and wanting to put in a timestamp at the
;; start and the end of my notes. Surprised that I could not find a
;; built-in way to do it, I added this to my .emacs

(defun insert-timestamp ()
  "Insert the date and time into the current buffer."
  (interactive)
  (insert (format-time-string "%a %b %e %Y, %R")))

(global-set-key "\C-ct" 'insert-timestamp)
