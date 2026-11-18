#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2007 AllBinary 
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
(provide (all-defined-out))

(define PoolType%
  (class JObject%
    (super-new)
    (field [f_cacheType JR.null])
    (define/public (jm_getCacheType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_cacheType this)))))
    (define/override (jm_toString_0)
    (let ([_POOL_TYPE JR.null])
      (let/ec jreturn
        (set! _POOL_TYPE "PoolType: ")
        (jreturn (JR.concat _POOL_TYPE (send (send this jm_getCacheType_0) jm_toString_0))))))))
(define (PoolType.jclassValue) PoolType%)

(define (PoolType.jnew_1 _cacheType)
  (define this (new PoolType% [jclass "PoolType"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_cacheType this _cacheType)))
  this)



