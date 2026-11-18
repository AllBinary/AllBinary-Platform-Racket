#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ABStringComponent%
  (class JObject%
    (super-new)
    (define/public (jm_getBackgroundBasicColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))
    (define/public (jm_getForegroundBasicColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))
    (define/public (jm_setForegroundBasicColor_1 _foregroundBasicColor)
    (let ()
      (let/ec jreturn (void))))))
(define (ABStringComponent.jclassValue) ABStringComponent%)

(define ABStringComponent.jcell_NULL_STRING_COMPONENT 'jnone)
(define (ABStringComponent.jstatic_NULL_STRING_COMPONENT)
  (when (eq? ABStringComponent.jcell_NULL_STRING_COMPONENT 'jnone) (set! ABStringComponent.jcell_NULL_STRING_COMPONENT (ABStringComponent.jnew_2 (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))))
  ABStringComponent.jcell_NULL_STRING_COMPONENT)
(define (ABStringComponent.jsetstatic_NULL_STRING_COMPONENT value) (set! ABStringComponent.jcell_NULL_STRING_COMPONENT value))

(define (ABStringComponent.jnew_2 _backgroundBasicColor _foregroundBasicColor)
  (define this (new ABStringComponent% [jclass "ABStringComponent"]))
    (let ()
      (let/ec jreturn (void)))
  this)



