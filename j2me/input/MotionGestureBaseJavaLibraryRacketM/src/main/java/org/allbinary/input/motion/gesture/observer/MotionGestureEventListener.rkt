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
  "./BaseMotionGestureEventListener.rkt")
(provide (all-defined-out))

(define MotionGestureEventListener%
  (class JObject%
    (super-new)
    (define/public (jm_onPressedMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onPressedMotionGestureEvent")))
    (define/public (jm_onUpMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onUpMotionGestureEvent")))
    (define/public (jm_onDownMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onDownMotionGestureEvent")))
    (define/public (jm_onLeftMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onLeftMotionGestureEvent")))
    (define/public (jm_onRightMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onRightMotionGestureEvent")))
    (define/public (jm_onDiagonalDownRightMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onDiagonalDownRightMotionGestureEvent")))
    (define/public (jm_onDiagonalDownLeftMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onDiagonalDownLeftMotionGestureEvent")))
    (define/public (jm_onDiagonalUpRightMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onDiagonalUpRightMotionGestureEvent")))
    (define/public (jm_onDiagonalUpLeftMotionGestureEvent_1 _ev)
      (raise (JR.newException "AbstractMethodError" "onDiagonalUpLeftMotionGestureEvent")))
    (define/public (jm_released_1 _ev)
      (raise (JR.newException "AbstractMethodError" "released")))))
(define (MotionGestureEventListener.jclassValue) MotionGestureEventListener%)

(define (MotionGestureEventListener.jnew_0)
  (define this (new MotionGestureEventListener% [jclass "MotionGestureEventListener"]))
  this)



