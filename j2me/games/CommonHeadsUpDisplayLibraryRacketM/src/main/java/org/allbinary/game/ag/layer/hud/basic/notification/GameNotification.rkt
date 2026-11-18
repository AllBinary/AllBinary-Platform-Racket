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
  "../../../../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent.rkt" (GameNotificationEvent.jnew_5)])
(lazy-require ["../../../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define GameNotification%
  (class JObject%
    (super-new)
    (field [f_stringList JR.null])
    (field [f_timeList JR.null])
    (field [f_colorList JR.null])
    (define/public (jm_add_3 _string _seconds _basicColor)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_stringList this) jm_contains_1 _string))
            (begin
            (send (get-field f_stringList this) jm_add_1 _string)
            (send (get-field f_timeList this) jm_add_1 _seconds)
            (send (get-field f_colorList this) jm_add_1 _basicColor))))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_stringList this) jm_clear_0)
        (send (get-field f_timeList this) jm_clear_0)
        (send (get-field f_colorList this) jm_clear_0))))
    (define/public (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_stringList this) jm_size_0)))))))
(define (GameNotification.jclassValue) GameNotification%)

(define GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT 'jnone)
(define (GameNotification.jstatic_NULL_GAME_NOTIFICATION_EVENT)
  (when (eq? GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT 'jnone) (set! GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT (GameNotificationEvent.jnew_5 (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) 0 (get-field f_RED (BasicColorFactory.jm_getInstance_0)) (get-field f_FALSE (BooleanFactory.jm_getInstance_0)))))
  GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT)
(define (GameNotification.jsetstatic_NULL_GAME_NOTIFICATION_EVENT value) (set! GameNotification.jcell_NULL_GAME_NOTIFICATION_EVENT value))

(define (GameNotification.jnew_0)
  (define this (new GameNotification% [jclass "GameNotification"]))
    (set-field! f_stringList this (BasicArrayListD.jnew_0))
    (set-field! f_timeList this (BasicArrayListD.jnew_0))
    (set-field! f_colorList this (BasicArrayListD.jnew_0))
  this)



