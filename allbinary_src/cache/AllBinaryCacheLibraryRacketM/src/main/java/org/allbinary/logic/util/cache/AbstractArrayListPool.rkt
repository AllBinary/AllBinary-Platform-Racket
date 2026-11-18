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
  "./PoolInterface.rkt")
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define AbstractArrayListPool%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_buffers JR.null])
    (field [f_cacheableInterfaceFactoryInterface JR.null])
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_remove_1 _key)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_add_1 _cacheableInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_buffers this) jm_add_1 _cacheableInterface))))
    (define/public (jm_addArray_1 _cacheableInterfaces)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _cacheableInterfaces))
                (let/ec jcontinue
            (send (get-field f_buffers this) jm_add_1 (vector-ref _cacheableInterfaces _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (AbstractArrayListPool.jclassValue) AbstractArrayListPool%)

(define (AbstractArrayListPool.jnew_1 _cacheableInterfaceFactoryInterface)
  (define this (new AbstractArrayListPool% [jclass "AbstractArrayListPool"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_buffers this (BasicArrayListD.jnew_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_cacheableInterfaceFactoryInterface this _cacheableInterfaceFactoryInterface)))
  this)



