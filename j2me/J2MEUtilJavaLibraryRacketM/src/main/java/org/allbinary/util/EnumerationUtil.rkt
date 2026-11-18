#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/util/Enumeration.rkt")
(lazy-require ["./BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

;ArkTs does not have this.  So this is for the ArkTs build.
(define EnumerationUtil%
  (class JObject%
    (super-new)
    (define/public (jm_hasMoreElements_1 _enumeration)
    (let ()
      (let/ec jreturn
        (jreturn (send _enumeration jm_hasMoreElements_0)))))
    (define/public (jm_nextElement_1 _enumeration)
    (let ()
      (let/ec jreturn
        (jreturn (send _enumeration jm_nextElement_0)))))
    (define/public (jm_getAsArray_1 _enumeration)
    (let ([_basicArrayList JR.null])
      (let/ec jreturn
        (set! _basicArrayList (BasicArrayListD.jnew_0))
        (let/ec jbreak (let jloop () (when (send this jm_hasMoreElements_1 _enumeration)
                (let/ec jcontinue
            (send _basicArrayList jm_add_1 (send this jm_nextElement_1 _enumeration))) (jloop))))
        (jreturn (send _basicArrayList jm_toArray_0)))))))
(define (EnumerationUtil.jclassValue) EnumerationUtil%)

(define EnumerationUtil.jcell_instance 'jnone)
(define (EnumerationUtil.jstatic_instance)
  (when (eq? EnumerationUtil.jcell_instance 'jnone) (set! EnumerationUtil.jcell_instance (EnumerationUtil.jnew_0)))
  EnumerationUtil.jcell_instance)
(define (EnumerationUtil.jsetstatic_instance value) (set! EnumerationUtil.jcell_instance value))

(define (EnumerationUtil.jnew_0)
  (define this (new EnumerationUtil% [jclass "EnumerationUtil"]))
  this)

(define (EnumerationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (EnumerationUtil.jstatic_instance)))))



