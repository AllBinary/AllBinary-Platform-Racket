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

(define CacheInterfaceFactory%
  (class JObject%
    (super-new)))
(define (CacheInterfaceFactory.jclassValue) CacheInterfaceFactory%)

(define (CacheInterfaceFactory.jnew_0)
  (define this (new CacheInterfaceFactory% [jclass "CacheInterfaceFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (CacheInterfaceFactory.jm_getInstance_2 _cacheType _cachePolicy)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (JR.concat "No such " (send _cacheType jm_toString_0)))))))



