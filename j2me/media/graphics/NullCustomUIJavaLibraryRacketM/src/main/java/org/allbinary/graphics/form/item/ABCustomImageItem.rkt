#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./ABCustomItem.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE)])
(provide (all-defined-out))

(define ABCustomImageItem%
  (class ABCustomItem%
    (super-new)
    (field [f_yOffset 0])
    (define/public (jm_getImage_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullImage.jstatic_NULL_IMAGE)))))))
(define (ABCustomImageItem.jclassValue) ABCustomImageItem%)

(define (ABCustomImageItem.jnew_6 _label _image _layout _altText _basicColor _yOffset)
  (define this (new ABCustomImageItem% [jclass "ABCustomImageItem"]))
    (set-field! f_yOffset this 0)
    (let ()
      (let/ec jreturn
        (void)))
  this)



