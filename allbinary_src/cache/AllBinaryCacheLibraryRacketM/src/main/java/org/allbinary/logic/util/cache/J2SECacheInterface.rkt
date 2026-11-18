#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
  "../../../../../java/util/Set.rkt"
  "./AutomaticCacheInterface.rkt")
(provide (all-defined-out))

(define J2SECacheInterface%
  (class JObject%
    (super-new)
    (define/public (jm_keySet_0)
      (raise (JR.newException "AbstractMethodError" "keySet")))))
(define (J2SECacheInterface.jclassValue) J2SECacheInterface%)

(define (J2SECacheInterface.jnew_0)
  (define this (new J2SECacheInterface% [jclass "J2SECacheInterface"]))
  this)



