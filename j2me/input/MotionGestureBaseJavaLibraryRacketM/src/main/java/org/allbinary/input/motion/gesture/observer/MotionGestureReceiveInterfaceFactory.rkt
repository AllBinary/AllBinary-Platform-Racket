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
;; package org.allbinary.input.motion.gesture.observer

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.rkt" (MotionGestureConfigurationFactory.jm_getInstance_0)])
(lazy-require ["./ResolveCompleteMotionGestureListener.rkt" (ResolveCompleteMotionGestureListener.jnew_0)])
(lazy-require ["./NullCompleteMotionGestureReceiver.rkt" (NullCompleteMotionGestureReceiver.jnew_0)])
(provide (all-defined-out))

(define MotionGestureReceiveInterfaceFactory%
  (class JObject%
    (super-new)))
(define (MotionGestureReceiveInterfaceFactory.jclassValue) MotionGestureReceiveInterfaceFactory%)

(define (MotionGestureReceiveInterfaceFactory.jnew_0)
  (define this (new MotionGestureReceiveInterfaceFactory% [jclass "MotionGestureReceiveInterfaceFactory"]))
  this)

(define (MotionGestureReceiveInterfaceFactory.jm_getInstance_0)
    (let ([_configuration JR.null])
      (let/ec jreturn
        (set! _configuration (MotionGestureConfigurationFactory.jm_getInstance_0))
        (if (not (send _configuration jm_isExecutingActionsAllowed_0))
            (begin
            (jreturn (NullCompleteMotionGestureReceiver.jnew_0)))
            (begin
            (jreturn (ResolveCompleteMotionGestureListener.jnew_0)))))))



