#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./ABCustomItem.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ABCustomGaugeItem%
  (class ABCustomItem%
    (super-new)))
(define (ABCustomGaugeItem.jclassValue) ABCustomGaugeItem%)

(define ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM 'jnone)
(define (ABCustomGaugeItem.jstatic_NULL_GAUGE_ITEM)
  (when (eq? ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM 'jnone) (set! ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM (ABCustomGaugeItem.jnew_5 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) 1 0 (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))))
  ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM)
(define (ABCustomGaugeItem.jsetstatic_NULL_GAUGE_ITEM value) (set! ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM value))

(define (ABCustomGaugeItem.jnew_5 _label _maxValue _initialValue _backgroundBasicColor _foregroundBasicColor)
  (define this (new ABCustomGaugeItem% [jclass "ABCustomGaugeItem"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



