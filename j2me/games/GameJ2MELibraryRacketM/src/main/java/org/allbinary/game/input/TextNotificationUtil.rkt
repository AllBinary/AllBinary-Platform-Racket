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
  "../../../../java/lang/Integer.rkt"
  "../../../../java/lang/Boolean.rkt")
(lazy-require ["../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent.rkt" (GameNotificationEvent.jnew_5)])
(lazy-require ["../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler.rkt" (GameNotificationEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/media/audio/ErrorSound.rkt" (ErrorSound.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory.rkt" (PrimaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/media/audio/SelectSound.rkt" (SelectSound.jm_getInstance_0)])
(provide (all-defined-out))

(define TextNotificationUtil%
  (class JObject%
    (super-new)
    (field [f_TWO JR.null])
    (field [f_FALSE JR.null])
    (field [f_gameNotificationEventHandler JR.null])
    (define/public (jm_fireError_1 _message)
    (let ()
      (let/ec jreturn
        (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (ErrorSound.jm_getInstance_0))
        (send this jm_fire_1 _message))))
    (define/public (jm_fireNew_1 _message)
    (let ()
      (let/ec jreturn
        (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (SelectSound.jm_getInstance_0))
        (send this jm_fire_1 _message))))
    (define/public (jm_fireSuccess_1 _message)
    (let ()
      (let/ec jreturn
        (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (SelectSound.jm_getInstance_0))
        (send this jm_fire_1 _message))))
    (define/public (jm_fire_1 _message)
    (let ([_gameNotificationEvent JR.null])
      (let/ec jreturn
        (set! _gameNotificationEvent (GameNotificationEvent.jnew_5 this _message (get-field f_TWO this) (get-field f_RED (BasicColorFactory.jm_getInstance_0)) (get-field f_FALSE this)))
        (send (get-field f_gameNotificationEventHandler this) jm_fireEvent_1 _gameNotificationEvent))))))
(define (TextNotificationUtil.jclassValue) TextNotificationUtil%)

(define TextNotificationUtil.jcell_instance 'jnone)
(define (TextNotificationUtil.jstatic_instance)
  (when (eq? TextNotificationUtil.jcell_instance 'jnone) (set! TextNotificationUtil.jcell_instance (TextNotificationUtil.jnew_0)))
  TextNotificationUtil.jcell_instance)
(define (TextNotificationUtil.jsetstatic_instance value) (set! TextNotificationUtil.jcell_instance value))

(define (TextNotificationUtil.jnew_0)
  (define this (new TextNotificationUtil% [jclass "TextNotificationUtil"]))
    (set-field! f_TWO this (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 2))
    (set-field! f_FALSE this (get-field f_FALSE (BooleanFactory.jm_getInstance_0)))
    (set-field! f_gameNotificationEventHandler this (GameNotificationEventHandler.jm_getInstance_0))
  this)

(define (TextNotificationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TextNotificationUtil.jstatic_instance)))))



