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
;; package org.allbinary.game.input.mapping

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory.rkt" (GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/button/BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define MotionInputMappingEventListener%
  (class JObject%
    (super-new)
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onInputMappingEvent_1 _inputMappingEvent)
    (let ()
      (let/ec jreturn
        (send (GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance_0) jm_updateAll_0)
        (send (BasicTouchInputFactory.jm_getInstance_0) jm_updateAll_1 (send _inputMappingEvent jm_getInputToGameKeyMapping_0)))))))
(define (MotionInputMappingEventListener.jclassValue) MotionInputMappingEventListener%)

(define (MotionInputMappingEventListener.jnew_0)
  (define this (new MotionInputMappingEventListener% [jclass "MotionInputMappingEventListener"]))
  this)



