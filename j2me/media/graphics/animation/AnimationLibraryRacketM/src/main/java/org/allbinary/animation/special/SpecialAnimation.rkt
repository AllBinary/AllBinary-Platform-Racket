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
;; package org.allbinary.animation.special

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/IndexedAnimation.rkt"
  "./SpecialAnimationInterface.rkt")
(lazy-require ["../../../../org/allbinary/animation/IndexedAnimationBehavior.rkt" (IndexedAnimationBehavior.jnew_2)])
(provide (all-defined-out))

(define SpecialAnimation%
  (class IndexedAnimation%
    (super-new)
    (define/override (jm_nextFrame_0)
    (let ([_indexedAnimationBehavior JR.null])
      (let/ec jreturn
        (set! _indexedAnimationBehavior (get-field f_animationBehaviorP this))
        (set-field! f_loopIndex _indexedAnimationBehavior (JR.i32 (+ (get-field f_loopIndex _indexedAnimationBehavior) 1))))))
    (define/public (jm_setLastFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isComplete_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_open_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_process_0)
    (let ()
      (let/ec jreturn (void))))))
(define (SpecialAnimation.jclassValue) SpecialAnimation%)

(define SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION 'jnone)
(define (SpecialAnimation.jstatic_NULL_SPECIAL_ANIMATION)
  (when (eq? SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION 'jnone) (set! SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION (SpecialAnimation.jnew_1 (IndexedAnimationBehavior.jnew_2 1 250))))
  SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION)
(define (SpecialAnimation.jsetstatic_NULL_SPECIAL_ANIMATION value) (set! SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION value))

(define (SpecialAnimation.jnew_1 _animationBehavior)
  (define this (new SpecialAnimation% [jclass "SpecialAnimation"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (SpecialAnimation.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SpecialAnimation.jstatic_NULL_SPECIAL_ANIMATION)))))



