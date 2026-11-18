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

(define PoolInterfaceFactory%
  (class JObject%
    (super-new)))
(define (PoolInterfaceFactory.jclassValue) PoolInterfaceFactory%)

(define (PoolInterfaceFactory.jnew_0)
  (define this (new PoolInterfaceFactory% [jclass "PoolInterfaceFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PoolInterfaceFactory.jm_getInstance_3 _cacheableInterfaceFactoryInterface _poolType _cachePolicy)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (JR.concat "No Such PoolType: " (send _poolType jm_toString_0)))))))



