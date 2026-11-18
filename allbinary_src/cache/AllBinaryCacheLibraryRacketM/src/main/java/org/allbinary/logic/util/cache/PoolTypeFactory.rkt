#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.logic.util.cache

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./PoolType.rkt" (PoolType.jnew_1)])
(lazy-require ["./CacheTypeFactory.rkt" (CacheTypeFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PoolTypeFactory%
  (class JObject%
    (super-new)
    (field [f_VECTOR_POOL JR.null])))
(define (PoolTypeFactory.jclassValue) PoolTypeFactory%)

(define PoolTypeFactory.jcell_instance 'jnone)
(define (PoolTypeFactory.jstatic_instance)
  (when (eq? PoolTypeFactory.jcell_instance 'jnone) (set! PoolTypeFactory.jcell_instance (PoolTypeFactory.jnew_0)))
  PoolTypeFactory.jcell_instance)
(define (PoolTypeFactory.jsetstatic_instance value) (set! PoolTypeFactory.jcell_instance value))

(define (PoolTypeFactory.jnew_0)
  (define this (new PoolTypeFactory% [jclass "PoolTypeFactory"]))
    (set-field! f_VECTOR_POOL this (PoolType.jnew_1 (get-field f_NO_CACHE (CacheTypeFactory.jm_getInstance_0))))
  this)

(define (PoolTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PoolTypeFactory.jstatic_instance)))))



