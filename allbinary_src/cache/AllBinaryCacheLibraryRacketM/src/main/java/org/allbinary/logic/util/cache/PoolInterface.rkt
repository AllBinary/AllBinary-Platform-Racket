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
  "./CacheInterface.rkt")
(provide (all-defined-out))

(define PoolInterface%
  (class JObject%
    (super-new)
    (define/public (jm_remove_1 _key)
      (raise (JR.newException "AbstractMethodError" "remove")))))
(define (PoolInterface.jclassValue) PoolInterface%)

(define (PoolInterface.jnew_0)
  (define this (new PoolInterface% [jclass "PoolInterface"]))
  this)



