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
  "../../../../../java/lang/Long.rkt")
(lazy-require ["./CachePolicy.rkt" (CachePolicy.jnew_3)])
(provide (all-defined-out))

(define CachePolicyFactory%
  (class JObject%
    (super-new)
    (field [f_NAME JR.null])
    (field [f_MAX_TIME_THOUSAND_MAX JR.null])
    (field [f_THIRTY_MINUTES_TEN_THOUSAND_MAX JR.null])
    (field [f_THIRTY_MINUTES_FIFTY_THOUSAND_MAX JR.null])
    (field [f_ONE_MINUTE_FIVE_MAX JR.null])
    (field [f_ONE_MINUTE_TEN_MAX JR.null])
    (field [f_ONE_MINUTE_ONE_HUNDRED_MAX JR.null])))
(define (CachePolicyFactory.jclassValue) CachePolicyFactory%)

(define CachePolicyFactory.jcell_instance 'jnone)
(define (CachePolicyFactory.jstatic_instance)
  (when (eq? CachePolicyFactory.jcell_instance 'jnone) (set! CachePolicyFactory.jcell_instance (CachePolicyFactory.jnew_0)))
  CachePolicyFactory.jcell_instance)
(define (CachePolicyFactory.jsetstatic_instance value) (set! CachePolicyFactory.jcell_instance value))

(define (CachePolicyFactory.jnew_0)
  (define this (new CachePolicyFactory% [jclass "CachePolicyFactory"]))
    (set-field! f_NAME this "lru")
    (set-field! f_MAX_TIME_THOUSAND_MAX this (CachePolicy.jnew_3 (get-field f_NAME this) (Long.jstatic_MAX_VALUE) 1000))
    (set-field! f_THIRTY_MINUTES_TEN_THOUSAND_MAX this (CachePolicy.jnew_3 (get-field f_NAME this) (JR.i32 (* (JR.i32 (* 1000 60)) 30)) 10000))
    (set-field! f_THIRTY_MINUTES_FIFTY_THOUSAND_MAX this (CachePolicy.jnew_3 (get-field f_NAME this) (JR.i32 (* (JR.i32 (* 1000 60)) 30)) 100000))
    (set-field! f_ONE_MINUTE_FIVE_MAX this (CachePolicy.jnew_3 (get-field f_NAME this) (JR.i32 (* (JR.i32 (* 1000 60)) 1)) 5))
    (set-field! f_ONE_MINUTE_TEN_MAX this (CachePolicy.jnew_3 (get-field f_NAME this) (JR.i32 (* (JR.i32 (* 1000 60)) 1)) 10))
    (set-field! f_ONE_MINUTE_ONE_HUNDRED_MAX this (CachePolicy.jnew_3 (get-field f_NAME this) (JR.i32 (* (JR.i32 (* 1000 60)) 1)) 100))
  this)

(define (CachePolicyFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CachePolicyFactory.jstatic_instance)))))



