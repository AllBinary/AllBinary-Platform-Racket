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
(lazy-require ["../../../../../../org/allbinary/game/input/event/PressGameKeyEventHandler.rkt" (PressGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define SingleKeyPressGameKeyFromMotionGestureEventListener%
  (class CompleteMotionGestureInputEventListener%
    (super-new)
    (field [f_logUtil JR.null])
    (define/override (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/override (jm_onCompleteMotionGestureInputEvent_1 _completeMotionGestureInputEvent)
    (let ([_gameKeyCompleteMotionGestureInputEvent JR.null][_gameKeyEvent JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "onCompleteMotionGestureInputEvent" _e))])
            (set! _gameKeyCompleteMotionGestureInputEvent _completeMotionGestureInputEvent)
            (set! _gameKeyEvent (send _gameKeyCompleteMotionGestureInputEvent jm_getGameKeyEvent_0))
            (send (PressGameKeyEventHandler.jm_getInstance_0) jm_fireEvent_1 _gameKeyEvent)))))))
(define (SingleKeyPressGameKeyFromMotionGestureEventListener.jclassValue) SingleKeyPressGameKeyFromMotionGestureEventListener%)

(define (SingleKeyPressGameKeyFromMotionGestureEventListener.jnew_0)
  (define this (new SingleKeyPressGameKeyFromMotionGestureEventListener% [jclass "SingleKeyPressGameKeyFromMotionGestureEventListener"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)



