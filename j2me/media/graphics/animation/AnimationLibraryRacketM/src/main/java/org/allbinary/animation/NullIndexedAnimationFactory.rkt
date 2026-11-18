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
(lazy-require ["./NullIndexedAnimationInner.rkt" (NullIndexedAnimationInner.jnew_0)])
(provide (all-defined-out))

(define NullIndexedAnimationFactory%
  (class JObject%
    (super-new)
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
(define (NullIndexedAnimationFactory.jclassValue) NullIndexedAnimationFactory%)

(define NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY 'jnone)
(define (NullIndexedAnimationFactory.jstatic_NULL_INDEXED_ANIMATION_ARRAY)
  (when (eq? NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY 'jnone) (set! NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY (JR.newArray JR.null 0)))
  NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY)
(define (NullIndexedAnimationFactory.jsetstatic_NULL_INDEXED_ANIMATION_ARRAY value) (set! NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY value))

(define NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY 'jnone)
(define (NullIndexedAnimationFactory.jstatic_NULL_INDEXED_ANIMATION_FACTORY)
  (when (eq? NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY 'jnone) (set! NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY (NullIndexedAnimationFactory.jnew_0)))
  NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY)
(define (NullIndexedAnimationFactory.jsetstatic_NULL_INDEXED_ANIMATION_FACTORY value) (set! NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY value))

(define (NullIndexedAnimationFactory.jnew_0)
  (define this (new NullIndexedAnimationFactory% [jclass "NullIndexedAnimationFactory"]))
    (set-field! f_NULL_ANIMATION this (NullIndexedAnimationInner.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullIndexedAnimationFactory.jm_getFactoryInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullIndexedAnimationFactory.jstatic_NULL_INDEXED_ANIMATION_FACTORY)))))



