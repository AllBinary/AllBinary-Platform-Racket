#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./CustomCustomItem.rkt"
  "./ABCustomItemInterface.rkt")
(lazy-require ["./ABStringComponent.rkt" (ABStringComponent.jstatic_NULL_STRING_COMPONENT)])
(provide (all-defined-out))

(define ABTextItem%
  (class CustomCustomItem%
    (super-new)
    (define/public (jm_keyPressed_1 _keyCode)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paintUnselected_3 _graphics _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getLabelStringComponent_0)
    (let ()
      (let/ec jreturn
        (jreturn (ABStringComponent.jstatic_NULL_STRING_COMPONENT)))))
    (define/override (jm_getMinimumWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getMinimumWidth_0)))))
    (define/override (jm_getMinimumHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getMinimumHeight_0)))))
    (define/override (jm_getLabel_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getLabel_0)))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (super jm_paintXY_3 _graphics _x _y))))))
(define (ABTextItem.jclassValue) ABTextItem%)

(define (ABTextItem.jnew_5 _label _layout _altText _backgroundBasicColor _foregroundBasicColor)
  (define this (new ABTextItem% [jclass "ABTextItem"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



