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
(lazy-require ["./Animation.rkt" (Animation.jnew_0)])
(provide (all-defined-out))

(define NullAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_NULL_ANIMATION JR.null])
    (field [f_EMPTY_ARRAY JR.null])
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
(define (NullAnimationFactory.jclassValue) NullAnimationFactory%)

(define NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY 'jnone)
(define (NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY)
  (when (eq? NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY 'jnone) (set! NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY (NullAnimationFactory.jnew_0)))
  NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY)
(define (NullAnimationFactory.jsetstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY value) (set! NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY value))

(define NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY 'jnone)
(define (NullAnimationFactory.jstatic_NULL_ANIMATION_FACTORY)
  (when (eq? NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY 'jnone) (set! NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY (NullAnimationFactory.jnew_0)))
  NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY)
(define (NullAnimationFactory.jsetstatic_NULL_ANIMATION_FACTORY value) (set! NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY value))

(define (NullAnimationFactory.jnew_0)
  (define this (new NullAnimationFactory% [jclass "NullAnimationFactory"]))
    (set-field! f_NULL_ANIMATION this (Animation.jnew_0))
    (set-field! f_EMPTY_ARRAY this (JR.newArray JR.null 0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullAnimationFactory.jm_getFactoryInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullAnimationFactory.jstatic_NULL_ANIMATION_FACTORY)))))



