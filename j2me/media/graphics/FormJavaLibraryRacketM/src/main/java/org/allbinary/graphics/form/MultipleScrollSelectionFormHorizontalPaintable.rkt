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
  "./ItemIndexPaintable.rkt")
(provide (all-defined-out))

(define MultipleScrollSelectionFormHorizontalPaintable%
  (class ItemIndexPaintable%
    (super-new)
    (field [f_multipleScrollSelectionForm JR.null])
    (define/override (jm_paint_5 _graphics _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_multipleScrollSelectionForm this) jm_paintHorizontal_5 _graphics _index _item _dx _dy)))))))
(define (MultipleScrollSelectionFormHorizontalPaintable.jclassValue) MultipleScrollSelectionFormHorizontalPaintable%)

(define (MultipleScrollSelectionFormHorizontalPaintable.jnew_1 _multipleScrollSelectionForm)
  (define this (new MultipleScrollSelectionFormHorizontalPaintable% [jclass "MultipleScrollSelectionFormHorizontalPaintable"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_multipleScrollSelectionForm this _multipleScrollSelectionForm)))
  this)



