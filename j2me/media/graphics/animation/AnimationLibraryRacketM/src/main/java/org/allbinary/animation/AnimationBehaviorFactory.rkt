#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
(lazy-require ["./AnimationBehavior.rkt" (AnimationBehavior.jm_getInstance_0)])
(provide (all-defined-out))

(define AnimationBehaviorFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getOrCreateInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnimationBehavior.jm_getInstance_0)))))))
(define (AnimationBehaviorFactory.jclassValue) AnimationBehaviorFactory%)

(define AnimationBehaviorFactory.jcell_instance 'jnone)
(define (AnimationBehaviorFactory.jstatic_instance)
  (when (eq? AnimationBehaviorFactory.jcell_instance 'jnone) (set! AnimationBehaviorFactory.jcell_instance (AnimationBehaviorFactory.jnew_0)))
  AnimationBehaviorFactory.jcell_instance)
(define (AnimationBehaviorFactory.jsetstatic_instance value) (set! AnimationBehaviorFactory.jcell_instance value))

(define (AnimationBehaviorFactory.jnew_0)
  (define this (new AnimationBehaviorFactory% [jclass "AnimationBehaviorFactory"]))
  this)

(define (AnimationBehaviorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnimationBehaviorFactory.jstatic_instance)))))



