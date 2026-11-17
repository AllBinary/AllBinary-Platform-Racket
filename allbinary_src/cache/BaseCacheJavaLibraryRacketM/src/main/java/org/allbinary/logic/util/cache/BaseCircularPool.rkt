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
;; package org.allbinary.logic.util.cache

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL)])
(provide (all-defined-out))

(define BaseCircularPool%
  (class JObject%
    (super-new)
    (field [f_circularIndexUtil JR.null])
    (field [f_OBJECT_ARRAY JR.null])
    (define/public (jm_getNextInstance_0)
    (let ([_anyType JR.null])
      (let/ec jreturn
        (set! _anyType (vector-ref (get-field f_OBJECT_ARRAY this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
        (send (get-field f_circularIndexUtil this) jm_next_0)
        (jreturn _anyType))))
    (define/public (jm_init_1 _allBinaryObjectFactoryInterface)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_setIndex_1 0)
        (set! _size (send (get-field f_circularIndexUtil this) jm_getSize_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! (get-field f_OBJECT_ARRAY this) _index (send _allBinaryObjectFactoryInterface jm_getInstance_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_getInstance_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_OBJECT_ARRAY this) _index)))))))

(define (BaseCircularPool.jnew_0)
  (define this (new BaseCircularPool% [jclass "BaseCircularPool"]))
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL))
    (set-field! f_OBJECT_ARRAY this (get-field f_NULL_OBJECT_ARRAY (NullUtil.jm_getInstance_0)))
  this)



