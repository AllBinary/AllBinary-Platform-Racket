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
  "../../../allbinary_java.rkt"
  "./SequentialAnimationInterface.rkt")
(provide (all-defined-out))

(define IndexedAnimationInterface%
  (class JObject%
    (super-new)
    (define/public (jm_reset_0)
      (raise (JR.newException "AbstractMethodError" "reset")))
    (define/public (jm_setFrame_1 _index)
      (raise (JR.newException "AbstractMethodError" "setFrame")))
    (define/public (jm_getFrame_0)
      (raise (JR.newException "AbstractMethodError" "getFrame")))))
(define (IndexedAnimationInterface.jclassValue) IndexedAnimationInterface%)

(define (IndexedAnimationInterface.jnew_0)
  (define this (new IndexedAnimationInterface% [jclass "IndexedAnimationInterface"]))
  this)



