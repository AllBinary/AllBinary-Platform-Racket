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
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/EventListenerInterface.rkt")
(provide (all-defined-out))

(define BaseMotionGestureEventListener%
  (class JObject%
    (super-new)
    (define/public (jm_onMotionGestureEvent_1 _motionGestureEvent)
      (raise (JR.newException "AbstractMethodError" "onMotionGestureEvent")))
    (define/public (jm_onScrolledMotionGestureEvent_1 _motionGestureEvent)
      (raise (JR.newException "AbstractMethodError" "onScrolledMotionGestureEvent")))))
(define (BaseMotionGestureEventListener.jclassValue) BaseMotionGestureEventListener%)

(define (BaseMotionGestureEventListener.jnew_0)
  (define this (new BaseMotionGestureEventListener% [jclass "BaseMotionGestureEventListener"]))
  this)



