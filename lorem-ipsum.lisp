;;;; lorem-ipsum.lisp

(defpackage #:lorem-ipsum
  (:use #:common-lisp)
  (:export #:word #:words #:paragraph #:paragraphs))

(in-package #:lorem-ipsum)

(defvar *prologue*
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit")

(defvar *words*
  #("do" "eiusmod" "incididunt" "labore" "dolore" "aliqua" "erat" "bibendum"
    "venenatis" "condimentum" "nisi" "natoque" "penatibus" "magnis" "dis"
    "parturient" "montes" "aenean" "nam" "ante" "metus" "tempor" "nullam"
    "suscipit" "justo" "posuere" "eleifend" "vulputate" "luctus" "accumsan"
    "lacus" "dictum" "fusce" "euismod" "placerat" "elementum" "pharetra"
    "maecenas" "ultricies" "suspendisse" "potenti" "pulvinar" "gravida"
    "hendrerit" "interdum" "laoreet" "magna" "urna" "porttitor" "rhoncus"
    "dolor" "non" "praesent" "nec" "pretium" "fringilla" "est" "nulla"
    "facilisi" "etiam" "dignissim" "tincidunt" "lobortis" "vivamus" "augue"
    "velit" "ligula" "ullamcorper" "malesuada" "a" "duis" "diam" "quam" "mattis"
    "libero" "ornare" "arcu" "elit" "pellentesque" "habitant" "tristique"
    "senectus" "netus" "ut" "sem" "eget" "viverra" "integer" "feugiat"
    "scelerisque" "varius" "mollis" "consectetur" "lorem" "donec" "sapien"
    "molestie" "semper" "auctor" "neque" "vitae" "tempus" "nisl" "ipsum"
    "faucibus" "cras" "adipiscing" "enim" "eu" "turpis" "volutpat" "consequat"
    "nunc" "congue" "leo" "vel" "porta" "fermentum" "et" "sollicitudin" "ac"
    "orci" "phasellus" "egestas" "tellus" "rutrum" "mauris" "amet" "massa"
    "nibh" "tortor" "id" "aliquet" "lectus" "proin" "aliquam" "vestibulum"
    "blandit" "risus" "at" "ultrices" "mi" "facilisis" "sed" "morbi" "quis"
    "commodo" "odio" "cursus" "in" "hac" "habitasse" "platea" "dictumst"
    "quisque" "sagittis" "purus" "sit"))

(defun word () (aref *words* (random (length *words*))))

(defun words (n) (loop repeat n collect (word)))

(defun paragraph (&key (word-count 50) (prologue t))
  (with-output-to-string (*standard-output*)
    (let ((words-remaining word-count)
          (words-until-end-of-sentence (+ 2 (random 8)))
          (capitalize t))
      (tagbody
       :start
         (cond (prologue
                (princ *prologue*)
                (decf words-until-end-of-sentence 3)
                (setf capitalize nil))
               (t (go :output-word)))
         (setf words-until-end-of-sentence (+ 2 (random 8)))
       :end-paragraph
         (when (= 0 words-remaining)
           (princ ".")
           (go :end))
       :end-sentence
         (cond ((= 0 words-until-end-of-sentence)
                (princ ". ")
                (setf capitalize t
                      words-until-end-of-sentence (+ 2 (random 8))))
               (t (if (= 0 (random 8))
                      (princ ", ")
                      (princ " "))))
       :output-word
         (princ (if capitalize (string-capitalize (word)) (word)))
         (setf capitalize nil)
         (decf words-remaining)
         (decf words-until-end-of-sentence)
       :loop
         (go :end-paragraph)
       :end))))

(defun paragraphs (n &key (word-count 50) (prologue t))
  (loop with prologue = prologue
        repeat n
        collect (paragraph :word-count word-count :prologue prologue)
        do (setf prologue nil)))
