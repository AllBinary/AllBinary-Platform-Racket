#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2011 AllBinary
;; 
;; By agreeing to this license you and any business entity you represent are
;; legally bound to the AllBinary Open License Version 1 legal agreement.
;; 
;; You may obtain the AllBinary Open License Version 1 legal agreement from
;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;; 
;; Created By: Travis Berthelot
;;  
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt")
(provide (all-defined-out))

(define FormPaintable%
  (class Paintable%
    (super-new)
    (field [f_form JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_form this) jm_paint_1 _graphics))))
    (define/public (jm_getForm_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_form this)))))))
(define (FormPaintable.jclassValue) FormPaintable%)

(define (FormPaintable.jnew_1 _form)
  (define this (new FormPaintable% [jclass "FormPaintable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_form this _form)))
  this)



