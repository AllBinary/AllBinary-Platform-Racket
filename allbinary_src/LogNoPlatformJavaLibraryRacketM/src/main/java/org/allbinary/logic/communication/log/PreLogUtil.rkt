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
;; package org.allbinary.logic.communication.log

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

;NoPlatform
(define PreLogUtil%
  (class JObject%
    (super-new)))

(define (PreLogUtil.jnew_0)
  (define this (new PreLogUtil% [jclass "PreLogUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PreLogUtil.jm_put_3 _specialMessage _anyType _functionName)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_putOE_4 _specialMessage _anyType _functionName (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))))

(define (PreLogUtil.jm_putOE_4 _specialMessage _anyType _functionName _exception)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))

(define (PreLogUtil.jm_putSE_4 _specialMessage _className _functionName _exception)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))



