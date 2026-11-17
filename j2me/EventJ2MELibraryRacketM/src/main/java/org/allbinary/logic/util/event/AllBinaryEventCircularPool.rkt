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
;; package org.allbinary.logic.util.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/cache/BaseCircularPool.rkt")
(lazy-require ["../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define AllBinaryEventCircularPool%
  (class BaseCircularPool%
    (super-new)
    (define/public (jm_initAllBinaryEventCircularPool_1 _allBinaryEventObjectFactoryInterface)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (JR.className (get-field f_circularIndexUtil this))
        (set! _size (JR.className (get-field f_circularIndexUtil this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! (get-field f_OBJECT_ARRAY this) _index (send _allBinaryEventObjectFactoryInterface jm_getInstance_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))

(define (AllBinaryEventCircularPool.jnew_1 _max)
  (define this (new AllBinaryEventCircularPool% [jclass "AllBinaryEventCircularPool"]))
    (let ()
      (let/ec jreturn
        (set-field! f_OBJECT_ARRAY this (JR.newArray JR.null _max))
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 _max))))
  this)



