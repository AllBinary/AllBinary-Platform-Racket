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

(define ScrollSelectionFormVericalDx%
  (class ItemIndexDx%
    (super-new)
    (field [f_scrollSelectionForm JR.null])
    (define/override (jm_getDx_4 _index _item _dx _dy)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_scrollSelectionForm this) jm_getSelectedIndexForPointVerticalDx_4 _index _item _dx _dy)))))))
(define (ScrollSelectionFormVericalDx.jclassValue) ScrollSelectionFormVericalDx%)

(define (ScrollSelectionFormVericalDx.jnew_1 _scrollSelectionForm)
  (define this (new ScrollSelectionFormVericalDx% [jclass "ScrollSelectionFormVericalDx"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_scrollSelectionForm this _scrollSelectionForm)))
  this)



