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
  "./AnimationInterfaceFactoryInterface.rkt"
  "./ProceduralAnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../org/allbinary/animation/special/SpecialAnimation.rkt" (SpecialAnimation.jm_getInstance_0)])
(provide (all-defined-out))

(define NullSpecialAnimationFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (SpecialAnimation.jm_getInstance_0)))))
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (jreturn (SpecialAnimation.jm_getInstance_0)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (NullSpecialAnimationFactory.jclassValue) NullSpecialAnimationFactory%)

(define NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY 'jnone)
(define (NullSpecialAnimationFactory.jstatic_NULL_SPECIAL_ANIMATION_FACTORY)
  (when (eq? NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY 'jnone) (set! NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY (NullSpecialAnimationFactory.jnew_0)))
  NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY)
(define (NullSpecialAnimationFactory.jsetstatic_NULL_SPECIAL_ANIMATION_FACTORY value) (set! NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY value))

(define (NullSpecialAnimationFactory.jnew_0)
  (define this (new NullSpecialAnimationFactory% [jclass "NullSpecialAnimationFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullSpecialAnimationFactory.jm_getFactoryInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullSpecialAnimationFactory.jstatic_NULL_SPECIAL_ANIMATION_FACTORY)))))



