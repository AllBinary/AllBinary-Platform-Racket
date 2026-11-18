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
  "./AnimationBehavior.rkt")
(provide (all-defined-out))

(define IndexedAnimationBehavior%
  (class AnimationBehavior%
    (super-new)
    (field [f_frameDelayTime 0])
    (field [f_loopTotal 0])
    (field [f_elapsedTime 0])
    (field [f_loopIndex 0])
    (define/override (jm_reset_0)
    (let ()
      (let/ec jreturn
        (set-field! f_loopIndex this 0))))))
(define (IndexedAnimationBehavior.jclassValue) IndexedAnimationBehavior%)

(define (IndexedAnimationBehavior.jnew_2 _loopTotal _frameDelayTime)
  (define this (new IndexedAnimationBehavior% [jclass "IndexedAnimationBehavior"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_loopTotal this _loopTotal)
        (set-field! f_frameDelayTime this _frameDelayTime)))
  this)



