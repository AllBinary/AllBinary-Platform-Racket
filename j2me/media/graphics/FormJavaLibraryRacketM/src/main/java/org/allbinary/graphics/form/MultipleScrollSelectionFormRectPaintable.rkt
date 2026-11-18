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

(define MultipleScrollSelectionFormRectPaintable%
  (class Paintable%
    (super-new)
    (field [f_multipleScrollSelectionForm JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_multipleScrollSelectionForm this) jm_fillRect_1 _graphics))))))
(define (MultipleScrollSelectionFormRectPaintable.jclassValue) MultipleScrollSelectionFormRectPaintable%)

(define (MultipleScrollSelectionFormRectPaintable.jnew_1 _multipleScrollSelectionForm)
  (define this (new MultipleScrollSelectionFormRectPaintable% [jclass "MultipleScrollSelectionFormRectPaintable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_multipleScrollSelectionForm this _multipleScrollSelectionForm)))
  this)



