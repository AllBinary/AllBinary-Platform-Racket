#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.logic.util.cache

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./CacheType.rkt" (CacheType.jnew_2)])
(provide (all-defined-out))

(define CacheTypeFactory%
  (class JObject%
    (super-new)
    (field [f_NO_CACHE JR.null])
    (field [f_CACHE JR.null])
    (field [f_SET JR.null])
    (field [f_CACHE_VECTOR JR.null])))
(define (CacheTypeFactory.jclassValue) CacheTypeFactory%)

(define CacheTypeFactory.jcell_instance 'jnone)
(define (CacheTypeFactory.jstatic_instance)
  (when (eq? CacheTypeFactory.jcell_instance 'jnone) (set! CacheTypeFactory.jcell_instance (CacheTypeFactory.jnew_0)))
  CacheTypeFactory.jcell_instance)
(define (CacheTypeFactory.jsetstatic_instance value) (set! CacheTypeFactory.jcell_instance value))

(define (CacheTypeFactory.jnew_0)
  (define this (new CacheTypeFactory% [jclass "CacheTypeFactory"]))
    (set-field! f_NO_CACHE this (CacheType.jnew_2 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_CACHE this (CacheType.jnew_2 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))
    (set-field! f_SET this (CacheType.jnew_2 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) "Set"))
    (set-field! f_CACHE_VECTOR this (CacheType.jnew_2 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))
  this)

(define (CacheTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CacheTypeFactory.jstatic_instance)))))



