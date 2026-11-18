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
;; package org.allbinary.animation.transition.shake

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./ShakeAnimationListener.rkt")
(provide (all-defined-out))

(define NoShakeAnimationListener%
  (class ShakeAnimationListener%
    (super-new)))
(define (NoShakeAnimationListener.jclassValue) NoShakeAnimationListener%)

(define NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER 'jnone)
(define (NoShakeAnimationListener.jstatic_NO_SHAKE_ANIMATION_LISTENER)
  (when (eq? NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER 'jnone) (set! NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER (NoShakeAnimationListener.jnew_0)))
  NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER)
(define (NoShakeAnimationListener.jsetstatic_NO_SHAKE_ANIMATION_LISTENER value) (set! NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER value))

(define (NoShakeAnimationListener.jnew_0)
  (define this (new NoShakeAnimationListener% [jclass "NoShakeAnimationListener"]))
  this)



