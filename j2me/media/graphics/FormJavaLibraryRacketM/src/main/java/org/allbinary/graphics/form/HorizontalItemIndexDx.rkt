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
  "./ItemIndexDx.rkt")
(provide (all-defined-out))

(define HorizontalItemIndexDx%
  (class ItemIndexDx%
    (super-new)
    (field [f_scrollCurrentSelectionForm JR.null])
    (define/override (jm_getDx_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_scrollCurrentSelectionForm this) jm_getXHorizontalForm_4 _index _item _dx _dy)))))))
(define (HorizontalItemIndexDx.jclassValue) HorizontalItemIndexDx%)

(define (HorizontalItemIndexDx.jnew_1 _scrollCurrentSelectionForm)
  (define this (new HorizontalItemIndexDx% [jclass "HorizontalItemIndexDx"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_scrollCurrentSelectionForm this _scrollCurrentSelectionForm)))
  this)



