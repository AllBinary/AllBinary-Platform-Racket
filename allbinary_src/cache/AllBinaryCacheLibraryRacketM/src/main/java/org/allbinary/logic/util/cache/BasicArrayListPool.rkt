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
  "../../../../../allbinary_java.rkt"
  "./AbstractArrayListPool.rkt")
(provide (all-defined-out))

(define BasicArrayListPool%
  (class AbstractArrayListPool%
    (super-new)
    (define/override (jm_clear_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_buffers this)))))
    (define/override (jm_remove_1 _key)
    (let ([_size JR.null])
      (let/ec jreturn
        (set! _size (JR.className (get-field f_buffers this)))
        (if (> _size 0)
            (begin
            (jreturn (JR.className (get-field f_buffers this))))
            (begin
            (jreturn (send (get-field f_cacheableInterfaceFactoryInterface this) jm_getInstance_1 _key)))))))
    (define/public (jm_addAll_1 _usedList)
    (let ([_anyType JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send _usedList jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _anyType (vector-ref (get-field f_objectArray _usedList) _index))
            (send this jm_add_1 _anyType)) (jloop)))))
        (send _usedList jm_clear_0))))
    (define/public (jm_releaseUsedBackToPool_1 _usedList)
    (let ([_list JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send _usedList jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _list (vector-ref (get-field f_objectArray _usedList) _index))
            (when (= (send _list jm_size_0) 0)
                (begin
                (send _usedList jm_removeAt_1 _index)
                (send this jm_add_1 _list)))) (jloop))))))))))
(define (BasicArrayListPool.jclassValue) BasicArrayListPool%)

(define (BasicArrayListPool.jnew_1 _cacheableInterfaceFactoryInterface)
  (define this (new BasicArrayListPool% [jclass "BasicArrayListPool"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



