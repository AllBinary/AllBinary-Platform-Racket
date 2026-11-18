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
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/logic/util/cache/BaseCircularPool.rkt")
(lazy-require ["../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define AllBinaryLayerCircularPool%
  (class BaseCircularPool%
    (super-new)
    (define/public (jm_initAllBinaryLayerCircularPool_2 _allbinaryLayerFactoryInterface _total)
    (let ([_localIndex JR.null])
      (let/ec jreturn
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 _total))
        (set-field! f_OBJECT_ARRAY this (JR.newArray JR.null _total))
        (begin
            (set! _localIndex 0)
            (let/ec jbreak (let jloop () (when (< _localIndex _total)
                (let/ec jcontinue
            (vector-set! (get-field f_OBJECT_ARRAY this) _localIndex (send _allbinaryLayerFactoryInterface jm_getInstance_0)))
                (set! _localIndex (JR.i32 (+ _localIndex 1))) (jloop))))))))))
(define (AllBinaryLayerCircularPool.jclassValue) AllBinaryLayerCircularPool%)

(define (AllBinaryLayerCircularPool.jnew_0)
  (define this (new AllBinaryLayerCircularPool% [jclass "AllBinaryLayerCircularPool"]))
    (let ()
      (let/ec jreturn (void)))
  this)



