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
  "./CompleteMotionGestureListenerInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventHandler.rkt" (CompleteMotionGestureInputEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener.rkt" (GameKeyFromMotionGestureEventListener.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.rkt" (MotionGestureConfigurationFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define ResolveCompleteMotionGestureListener%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_onMotionGestureCompleted_1 _list)
    (let ([_configuration JR.null][_commandActionsList JR.null][_size JR.null][_association JR.null][_completeMotionGestureInputEvent JR.null][_index JR.null])
      (let/ec jreturn
        (set! _configuration (MotionGestureConfigurationFactory.jm_getInstance_0))
        (set! _commandActionsList (send _configuration jm_getAssociateCommandActionsList_0))
        (set! _size (send _commandActionsList jm_size_0))
        (begin
            (set! _index (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _association (vector-ref (get-field f_objectArray _commandActionsList) _index))
            (when (eq? (send _association jm_isMotionGestureArrayEquals_1 _list) #t)
                (begin
                (set! _completeMotionGestureInputEvent (send _association jm_getCommandAction_0))
                (send (CompleteMotionGestureInputEventHandler.jm_getInstance_0) jm_fireEvent_1 _completeMotionGestureInputEvent)
                (jbreak (void)))))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (ResolveCompleteMotionGestureListener.jclassValue) ResolveCompleteMotionGestureListener%)

(define (ResolveCompleteMotionGestureListener.jnew_0)
  (define this (new ResolveCompleteMotionGestureListener% [jclass "ResolveCompleteMotionGestureListener"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 "MotionGesture to CompleteMotionGesture Reciever" this (get-field f_CONSTRUCTOR _commonStrings))
        (send (CompleteMotionGestureInputEventHandler.jm_getInstance_0) jm_addListener_1 (GameKeyFromMotionGestureEventListener.jnew_0))))
  this)



