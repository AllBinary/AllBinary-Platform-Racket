#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ABCustomItem%
  (class JObject%
    (super-new)
    (define/public (jm_setOwner_1 _owner)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paintUnselected_3 _graphics _x _y)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isFocusable_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_getLabel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_setLabel_1 _label)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_setHeight_1 _height)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getValue_0)
    (let ()
      (let/ec jreturn
        (jreturn 0.0))))
    (define/public (jm_setValue_1 _value)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getMinimumWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getMinimumHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_preMeasurement_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (ABCustomItem.jclassValue) ABCustomItem%)

(define ABCustomItem.jcell_NULL_CUSTOM_ITEM 'jnone)
(define (ABCustomItem.jstatic_NULL_CUSTOM_ITEM)
  (when (eq? ABCustomItem.jcell_NULL_CUSTOM_ITEM 'jnone) (set! ABCustomItem.jcell_NULL_CUSTOM_ITEM (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  ABCustomItem.jcell_NULL_CUSTOM_ITEM)
(define (ABCustomItem.jsetstatic_NULL_CUSTOM_ITEM value) (set! ABCustomItem.jcell_NULL_CUSTOM_ITEM value))

(define (ABCustomItem.jnew_3 _label _backgroundBasicColor _foregroundBasicColor)
  (define this (new ABCustomItem% [jclass "ABCustomItem"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ABCustomItem.jm_getNullInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (ABCustomItem.jstatic_NULL_CUSTOM_ITEM) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! ABCustomItem.jcell_NULL_CUSTOM_ITEM (ABCustomItem.jnew_3 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))
        (jreturn (ABCustomItem.jstatic_NULL_CUSTOM_ITEM)))))



