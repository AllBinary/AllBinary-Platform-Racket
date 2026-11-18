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
;; package org.allbinary.input.motion.gesture.configuration

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["./MotionGestureConfiguration.rkt" (MotionGestureConfiguration.jnew_0)])
(provide (all-defined-out))

(define MotionGestureConfigurationFactory%
  (class JObject%
    (super-new)))
(define (MotionGestureConfigurationFactory.jclassValue) MotionGestureConfigurationFactory%)

(define MotionGestureConfigurationFactory.jcell_config 'jnone)
(define (MotionGestureConfigurationFactory.jstatic_config)
  (when (eq? MotionGestureConfigurationFactory.jcell_config 'jnone) (set! MotionGestureConfigurationFactory.jcell_config (MotionGestureConfiguration.jnew_0)))
  MotionGestureConfigurationFactory.jcell_config)
(define (MotionGestureConfigurationFactory.jsetstatic_config value) (set! MotionGestureConfigurationFactory.jcell_config value))

(define (MotionGestureConfigurationFactory.jnew_0)
  (define this (new MotionGestureConfigurationFactory% [jclass "MotionGestureConfigurationFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (MotionGestureConfigurationFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MotionGestureConfigurationFactory.jstatic_config)))))



