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
(provide (all-defined-out))

(define GameKeyCompleteMotionGestureInputEvent%
  (class CompleteMotionGestureInputEvent%
    (super-new)
    (field [f_gameKey JR.null])
    (field [f_gameKeyEvent JR.null])
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn (void))))
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
    (set-field! f_gameKey this (GameKey.jstatic_NULL_GAME_KEY))
    (set-field! f_gameKeyEvent this (GameKeyEvent.jstatic_NONE))
    (let ()
      (let/ec jreturn
        (void)))
  this)



