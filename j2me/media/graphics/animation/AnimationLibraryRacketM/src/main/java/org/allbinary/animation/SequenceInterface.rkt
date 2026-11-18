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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define SequenceInterface%
  (class JObject%
    (super-new)
    (define/public (jm_setSequence_1 _sequence)
      (raise (JR.newException "AbstractMethodError" "setSequence")))
    (define/public (jm_getSequence_0)
      (raise (JR.newException "AbstractMethodError" "getSequence")))))
(define (SequenceInterface.jclassValue) SequenceInterface%)

(define (SequenceInterface.jnew_0)
  (define this (new SequenceInterface% [jclass "SequenceInterface"]))
  this)



