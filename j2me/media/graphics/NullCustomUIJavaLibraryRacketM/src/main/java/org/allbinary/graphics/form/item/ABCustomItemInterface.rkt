#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ABCustomItemInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getMinimumWidth_0)
      (raise (JR.newException "AbstractMethodError" "getMinimumWidth")))
    (define/public (jm_getMinimumHeight_0)
      (raise (JR.newException "AbstractMethodError" "getMinimumHeight")))
    (define/public (jm_getLabel_0)
      (raise (JR.newException "AbstractMethodError" "getLabel")))
    (define/public (jm_paintXY_3 _graphics _x _y)
      (raise (JR.newException "AbstractMethodError" "paintXY")))
    (define/public (jm_paintUnselected_3 _graphics _x _y)
      (raise (JR.newException "AbstractMethodError" "paintUnselected")))))
(define (ABCustomItemInterface.jclassValue) ABCustomItemInterface%)

(define (ABCustomItemInterface.jnew_0)
  (define this (new ABCustomItemInterface% [jclass "ABCustomItemInterface"]))
  this)



