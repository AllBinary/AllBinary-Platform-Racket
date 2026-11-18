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
  "./CacheableInterfaceFactoryInterface.rkt")
(lazy-require ["./BasicArrayListCacheable.rkt" (BasicArrayListCacheable.jnew_0)])
(provide (all-defined-out))

(define BasicArrayListCacheableInterfaceFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _key)
    (let ()
      (let/ec jreturn
        (jreturn (BasicArrayListCacheable.jnew_0)))))))
(define (BasicArrayListCacheableInterfaceFactory.jclassValue) BasicArrayListCacheableInterfaceFactory%)

(define (BasicArrayListCacheableInterfaceFactory.jnew_0)
  (define this (new BasicArrayListCacheableInterfaceFactory% [jclass "BasicArrayListCacheableInterfaceFactory"]))
  this)



