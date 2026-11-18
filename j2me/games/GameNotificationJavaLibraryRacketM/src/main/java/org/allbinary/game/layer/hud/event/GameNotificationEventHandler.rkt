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
;; package org.allbinary.game.layer.hud.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/util/event/NullEventListener.rkt" (NullEventListener.jstatic_NULL_EVENT_LISTENER)])
(provide (all-defined-out))

(define GameNotificationEventHandler%
  (class BasicEventHandler%
    (super-new)
    (field [f_enabled #f])
    (define/override (jm_removeAllListeners_0)
    (let ([_eventListenerInterface JR.null][_list JR.null])
      (let/ec jreturn
        (set! _eventListenerInterface (NullEventListener.jstatic_NULL_EVENT_LISTENER))
        (set! _list (get-field f_eventListenerInterfaceList this))
        (when (> (send _list jm_size_0) 0)
            (begin
            (set! _eventListenerInterface (vector-ref (get-field f_objectArray _list) 0))))
        (super jm_removeAllListeners_0)
        (when (not (eq? _eventListenerInterface (NullEventListener.jstatic_NULL_EVENT_LISTENER)))
            (begin
            (send this jm_addListenerInterface_1 _eventListenerInterface))))))
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_gameNotificationListenerInterface JR.null])
      (let/ec jreturn
        (when (not (get-field f_enabled this))
            (begin
            (jreturn (void))))
        (set! _gameNotificationListenerInterface _eventListenerInterface)
        (send _gameNotificationListenerInterface jm_onGameNotificationEvent_1 _eventObject))))))
(define (GameNotificationEventHandler.jclassValue) GameNotificationEventHandler%)

(define GameNotificationEventHandler.jcell_instance 'jnone)
(define (GameNotificationEventHandler.jstatic_instance)
  (when (eq? GameNotificationEventHandler.jcell_instance 'jnone) (set! GameNotificationEventHandler.jcell_instance (GameNotificationEventHandler.jnew_0)))
  GameNotificationEventHandler.jcell_instance)
(define (GameNotificationEventHandler.jsetstatic_instance value) (set! GameNotificationEventHandler.jcell_instance value))

(define (GameNotificationEventHandler.jnew_0)
  (define this (new GameNotificationEventHandler% [jclass "GameNotificationEventHandler"]))
    (set-field! f_enabled this #t)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameNotificationEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameNotificationEventHandler.jstatic_instance)))))



