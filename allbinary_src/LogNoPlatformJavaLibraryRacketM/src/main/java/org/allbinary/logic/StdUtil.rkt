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
;; package org.allbinary.logic

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/util/ABHashMap.rkt" (ABHashMap.jnew_0)])
(lazy-require ["../../../org/allbinary/util/ABHashtable.rkt" (ABHashtable.jnew_0)])
(lazy-require ["../../../org/allbinary/util/ABStack.rkt" (ABStack.jnew_0)])
(lazy-require ["../../../org/allbinary/util/ABVector.rkt" (ABVector.jnew_0)])
(provide (all-defined-out))

;NoPlatform
(define StdUtil%
  (class JObject%
    (super-new)
    (field [f_EMPTY_VECTOR JR.null])
    (field [f_NULL_TABLE JR.null])
    (field [f_NULL_MAP JR.null])
    (define/public (jm_createStack_0)
    (let ()
      (let/ec jreturn
        (jreturn (ABStack.jnew_0)))))
    (define/public (jm_createVector_0)
    (let ()
      (let/ec jreturn
        (jreturn (ABVector.jnew_0)))))
    (define/public (jm_createHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (ABHashtable.jnew_0)))))
    (define/public (jm_createHashMap_0)
    (let ()
      (let/ec jreturn
        (jreturn (ABHashMap.jnew_0)))))))

(define StdUtil.jcell_instance 'jnone)
(define (StdUtil.jstatic_instance)
  (when (eq? StdUtil.jcell_instance 'jnone) (set! StdUtil.jcell_instance (StdUtil.jnew_0)))
  StdUtil.jcell_instance)

(define (StdUtil.jnew_0)
  (define this (new StdUtil% [jclass "StdUtil"]))
    (set-field! f_EMPTY_VECTOR this (send this jm_createVector_0))
    (set-field! f_NULL_TABLE this (send this jm_createHashtable_0))
    (set-field! f_NULL_MAP this (send this jm_createHashMap_0))
  this)

(define (StdUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (StdUtil.jstatic_instance)))))



