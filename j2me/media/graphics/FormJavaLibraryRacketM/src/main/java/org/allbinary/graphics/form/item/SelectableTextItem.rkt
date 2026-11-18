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
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./ABTextItem.rkt")
(provide (all-defined-out))

(define SelectableTextItem%
  (class ABTextItem%
    (super-new)
    (define/override (jm_isFocusable_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ([_stringComponent JR.null])
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (set! _stringComponent (send this jm_getLabelStringComponent_0))
        (when (not (JR.null? _stringComponent))
            (begin
            (send _graphics jm_setColor_1 (JR.className (send _stringComponent jm_getForegroundBasicColor_0)))))
        (send _graphics jm_drawString_4 (send this jm_getLabel_0) (JR.i32 (+ _x 2)) _y 0))))))
(define (SelectableTextItem.jclassValue) SelectableTextItem%)

(define (SelectableTextItem.jnew_5 _label _layout _altText _backgroundBasicColor _foregroundBasicColor)
  (define this (new SelectableTextItem% [jclass "SelectableTextItem"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



