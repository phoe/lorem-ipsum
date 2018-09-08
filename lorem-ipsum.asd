;;;; lorem-ipsum.asd

(asdf:defsystem #:lorem-ipsum
  :description "Lorem ipsum generator in portable Common Lisp"
  :author "Michał \"phoe\" Herda <phoe@disroot.org>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :depends-on (#:alexandria)
  :components ((:file "lorem-ipsum")))
