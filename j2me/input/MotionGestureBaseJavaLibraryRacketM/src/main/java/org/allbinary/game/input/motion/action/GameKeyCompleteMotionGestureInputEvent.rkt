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
  "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEvent.rkt"
  "../../../../../../org/allbinary/game/input/GameKeyEventSourceInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/GameKey.rkt" (GameKey.jstatic_NULL_GAME_KEY)])
(lazy-require ["../../../../../../org/allbinary/game/input/event/GameKeyEvent.rkt" (GameKeyEvent.jstatic_NONE)])
(lazy-require ["../../../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./GameKeyCompleteMotionGestureInputEventFactory.rkt" (GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameKeyCompleteMotionGestureInputEvent%
  (class CompleteMotionGestureInputEvent%
    (super-new)
    (field [f_gameKeyEventFactory JR.null])
    (field [f_SOURCE_ID 0])
    (field [f_gameKey JR.null])
    (field [f_gameKeyEvent JR.null])
    (field [f_inputToGameKeyMapping JR.null])
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_SOURCE_ID this)))))
    (define/public (jm_update_0)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (JR.className (get-field f_logUtil this)))])
            (send this jm_setGameKey_1 (send (get-field f_inputToGameKeyMapping this) jm_getInstance_1 (JR.className (send this jm_getMotionGestureInput_0))))
            (send this jm_setGameKeyEvent_1 (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 this (send this jm_getGameKey_0)))))))
    (define/public (jm_setGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (set-field! f_gameKeyEvent this _gameKeyEvent))))
    (define/public (jm_getGameKeyEvent_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameKeyEvent this)))))
    (define/public (jm_setGameKey_1 _gameKey)
    (let ()
      (let/ec jreturn
        (set-field! f_gameKey this _gameKey))))
    (define/public (jm_getGameKey_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameKey this)))))))
(define (GameKeyCompleteMotionGestureInputEvent.jclassValue) GameKeyCompleteMotionGestureInputEvent%)

(define (GameKeyCompleteMotionGestureInputEvent.jnew_3 _name _motionGestureInput _inputToGameKeyMapping)
  (define this (new GameKeyCompleteMotionGestureInputEvent% [jclass "GameKeyCompleteMotionGestureInputEvent"]))
    (set-field! f_gameKeyEventFactory this (GameKeyEventFactory.jm_getInstance_0))
    (set-field! f_SOURCE_ID this (get-field f_MOTION_GESTURE_SOURCE_ID (get-field f_gameKeyEventFactory this)))
    (set-field! f_gameKey this (GameKey.jstatic_NULL_GAME_KEY))
    (set-field! f_gameKeyEvent this (GameKeyEvent.jstatic_NONE))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_inputToGameKeyMapping this _inputToGameKeyMapping)
        (send (GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance_0) jm_add_1 this)
        (send this jm_update_0)))
  this)



