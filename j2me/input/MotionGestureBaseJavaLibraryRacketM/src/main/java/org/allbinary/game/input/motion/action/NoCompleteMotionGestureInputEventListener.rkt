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
;; package org.allbinary.game.input.motion.action

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventListener.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define NoCompleteMotionGestureInputEventListener%
  (class CompleteMotionGestureInputEventListener%
    (super-new)
    (define/override (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/override (jm_onCompleteMotionGestureInputEvent_1 _completeMotionGestureInputEvent)
    (let ()
      (let/ec jreturn (void))))))
(define (NoCompleteMotionGestureInputEventListener.jclassValue) NoCompleteMotionGestureInputEventListener%)

(define NoCompleteMotionGestureInputEventListener.jcell_instance 'jnone)
(define (NoCompleteMotionGestureInputEventListener.jstatic_instance)
  (when (eq? NoCompleteMotionGestureInputEventListener.jcell_instance 'jnone) (set! NoCompleteMotionGestureInputEventListener.jcell_instance (NoCompleteMotionGestureInputEventListener.jnew_0)))
  NoCompleteMotionGestureInputEventListener.jcell_instance)
(define (NoCompleteMotionGestureInputEventListener.jsetstatic_instance value) (set! NoCompleteMotionGestureInputEventListener.jcell_instance value))

(define (NoCompleteMotionGestureInputEventListener.jnew_0)
  (define this (new NoCompleteMotionGestureInputEventListener% [jclass "NoCompleteMotionGestureInputEventListener"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NoCompleteMotionGestureInputEventListener.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoCompleteMotionGestureInputEventListener.jstatic_instance)))))



