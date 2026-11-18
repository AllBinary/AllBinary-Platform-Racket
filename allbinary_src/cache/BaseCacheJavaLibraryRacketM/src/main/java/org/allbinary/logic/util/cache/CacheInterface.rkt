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
(provide (all-defined-out))

(define CacheInterface%
  (class JObject%
    (super-new)
    (define/public (jm_add_1 _cacheableInterface)
      (raise (JR.newException "AbstractMethodError" "add")))
    (define/public (jm_addArray_1 _cacheableInterfaces)
      (raise (JR.newException "AbstractMethodError" "addArray")))
    (define/public (jm_clear_0)
      (raise (JR.newException "AbstractMethodError" "clear")))))
(define (CacheInterface.jclassValue) CacheInterface%)

(define (CacheInterface.jnew_0)
  (define this (new CacheInterface% [jclass "CacheInterface"]))
  this)



