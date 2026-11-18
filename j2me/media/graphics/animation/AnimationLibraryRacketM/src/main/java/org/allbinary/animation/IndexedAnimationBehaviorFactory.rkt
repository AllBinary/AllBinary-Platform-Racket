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
  "../../../allbinary_java.rkt"
  "./AnimationBehaviorFactory.rkt")
(lazy-require ["./IndexedAnimationBehavior.rkt" (IndexedAnimationBehavior.jnew_2)])
(provide (all-defined-out))

(define IndexedAnimationBehaviorFactory%
  (class AnimationBehaviorFactory%
    (super-new)
    (field [f_frameDelayTime 0])
    (field [f_loopTotal 0])
    (define/override (jm_getOrCreateInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (IndexedAnimationBehavior.jnew_2 (get-field f_loopTotal this) (get-field f_frameDelayTime this))))))))
(define (IndexedAnimationBehaviorFactory.jclassValue) IndexedAnimationBehaviorFactory%)

(define (IndexedAnimationBehaviorFactory.jnew_2 _loopTotal _frameDelayTime)
  (define this (new IndexedAnimationBehaviorFactory% [jclass "IndexedAnimationBehaviorFactory"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_loopTotal this _loopTotal)
        (set-field! f_frameDelayTime this _frameDelayTime)))
  this)



