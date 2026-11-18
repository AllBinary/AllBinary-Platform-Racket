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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/input/event/GameKeyEventListenerInterface.rkt"
  "../../../../java/lang/Integer.rkt"
  "./GameInput.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["./GameInputStrings.rkt" (GameInputStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define PlayerGameInput%
  (class GameInput%
    (super-new)
    (field [f_gameInputStrings JR.null])
    (field [f_playerInputId 0])
    (define/public (jm_onPressGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (send this jm_add_1 _gameKeyEvent)
        (send this jm_addForRemoval_1 _gameKeyEvent))))
    (define/public (jm_onDownGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (send this jm_add_1 _gameKeyEvent))))
    (define/public (jm_onDownKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (send this jm_add_1 _gameKeyEvent)
        (send this jm_addForRemoval_1 _gameKeyEvent))))
    (define/public (jm_onDownKey_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 (send _gameKeyEvent jm_toString_0)) jm_toString_0) this (get-field f_ON_DOWN_GAME_KEY (get-field f_gameInputStrings this))))))
    (define/public (jm_onUpGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn
        (send this jm_addForRemoval_1 _gameKeyEvent))))
    (define/public (jm_onUpKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_getPlayerInputId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_playerInputId this)))))))
(define (PlayerGameInput.jclassValue) PlayerGameInput%)

(define (PlayerGameInput.jnew_3 _gameKeyEventList _removalGameKeyEventList _playerInputId)
  (define this (new PlayerGameInput% [jclass "PlayerGameInput"]))
    (set-field! f_gameInputStrings this (GameInputStrings.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_playerInputId this _playerInputId)))
  this)



