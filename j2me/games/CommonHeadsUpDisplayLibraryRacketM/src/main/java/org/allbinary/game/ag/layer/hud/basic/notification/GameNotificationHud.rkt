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
;; package org.allbinary.game.ag.layer.hud.basic.notification

(require racket/class racket/lazy-require
  "../../../../../../../../allbinary_java.rkt"
  "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud.rkt"
  "../../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationListenerInterface.rkt"
  "../../../../../../../../java/lang/Integer.rkt"
  "../../../../../../../../java/lang/Boolean.rkt")
(lazy-require ["../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory.rkt" (BasicHudFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["./GameNotification.rkt" (GameNotification.jstatic_NULL_GAME_NOTIFICATION_EVENT)])
(provide (all-defined-out))

(define GameNotificationHud%
  (class BasicHud%
    (super-new)
    (field [f_METHOD_NAME JR.null])
    (field [f_lastGameNotificationEvent JR.null])
    (define/override (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onGameNotificationEvent_1 _gameNotificationEvent)
    (let ()
      (let/ec jreturn
        (when (not (eq? (get-field f_lastGameNotificationEvent this) _gameNotificationEvent))
            (begin
            (set-field! f_lastGameNotificationEvent this _gameNotificationEvent)
            (JR.className (get-field f_logUtil this))))
        (send this jm_add_4 (send _gameNotificationEvent jm_getString_0) (send _gameNotificationEvent jm_getSeconds_0) (send _gameNotificationEvent jm_getBasicColorP_0) (send _gameNotificationEvent jm_getPermanent_0)))))
    (define/public (jm_add_4 _string _seconds _basicColor _permanent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processTick_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn (void))))))
(define (GameNotificationHud.jclassValue) GameNotificationHud%)

(define GameNotificationHud.jcell_NULL_GAME_NOTIFICATION 'jnone)
(define (GameNotificationHud.jstatic_NULL_GAME_NOTIFICATION)
  (when (eq? GameNotificationHud.jcell_NULL_GAME_NOTIFICATION 'jnone) (set! GameNotificationHud.jcell_NULL_GAME_NOTIFICATION (GameNotificationHud.jnew_4 (get-field f_TOPCENTER (BasicHudFactory.jm_getInstance_0)) (get-field f_HORIZONTAL (BasicHudFactory.jm_getInstance_0)) 0 (get-field f_RED (BasicColorFactory.jm_getInstance_0)))))
  GameNotificationHud.jcell_NULL_GAME_NOTIFICATION)
(define (GameNotificationHud.jsetstatic_NULL_GAME_NOTIFICATION value) (set! GameNotificationHud.jcell_NULL_GAME_NOTIFICATION value))

(define (GameNotificationHud.jnew_4 _location _direction _bufferZone _basicColor)
  (define this (new GameNotificationHud% [jclass "GameNotificationHud"]))
    (set-field! f_METHOD_NAME this "onGameNotificationEvent")
    (set-field! f_lastGameNotificationEvent this (GameNotification.jstatic_NULL_GAME_NOTIFICATION_EVENT))
    (let ()
      (let/ec jreturn
        (void)))
  this)



