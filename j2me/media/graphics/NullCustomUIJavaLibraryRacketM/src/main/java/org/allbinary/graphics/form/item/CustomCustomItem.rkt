#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "./ABCustomItem.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(provide (all-defined-out))

(define CustomCustomItem%
  (class ABCustomItem%
    (super-new)
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (CustomCustomItem.jclassValue) CustomCustomItem%)

(define (CustomCustomItem.jnew_3 _label _backgroundBasicColor _foregroundBasicColor)
  (define this (new CustomCustomItem% [jclass "CustomCustomItem"]))
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    (let ()
      (let/ec jreturn
        (void)))
  this)



