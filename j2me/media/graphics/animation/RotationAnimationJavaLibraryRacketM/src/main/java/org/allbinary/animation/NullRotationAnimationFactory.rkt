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
(lazy-require ["./NullRotationAnimation2.rkt" (NullRotationAnimation2.jnew_0)])
(provide (all-defined-out))

(define NullRotationAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_NULL_ROTATION_ANIMATION_ARRAY JR.null])
    (field [f_NULL_ANIMATION JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_ANIMATION this)))))
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_ANIMATION this)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (NullRotationAnimationFactory.jclassValue) NullRotationAnimationFactory%)

(define NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY 'jnone)
(define (NullRotationAnimationFactory.jstatic_NULL_ROTATION_ANIMATION_FACTORY)
  (when (eq? NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY 'jnone) (set! NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY (NullRotationAnimationFactory.jnew_0)))
  NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY)
(define (NullRotationAnimationFactory.jsetstatic_NULL_ROTATION_ANIMATION_FACTORY value) (set! NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY value))

(define (NullRotationAnimationFactory.jnew_0)
  (define this (new NullRotationAnimationFactory% [jclass "NullRotationAnimationFactory"]))
    (set-field! f_NULL_ROTATION_ANIMATION_ARRAY this (JR.newArray JR.null 0))
    (set-field! f_NULL_ANIMATION this (NullRotationAnimation2.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullRotationAnimationFactory.jm_getFactoryInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullRotationAnimationFactory.jstatic_NULL_ROTATION_ANIMATION_FACTORY)))))



