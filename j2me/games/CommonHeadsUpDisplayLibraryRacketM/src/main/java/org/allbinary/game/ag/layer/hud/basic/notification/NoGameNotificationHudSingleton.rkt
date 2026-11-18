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
  "../../../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory.rkt" (BasicHudFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./GameNotificationHud.rkt" (GameNotificationHud.jstatic_NULL_GAME_NOTIFICATION)])
(lazy-require ["./NoGameGameNotificationHud.rkt" (NoGameGameNotificationHud.jnew_0)])
(provide (all-defined-out))

(define NoGameNotificationHudSingleton%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_gameNotificationHud JR.null])
    (define/public (jm_getGameNotificationHud_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameNotificationHud this)))))))
(define (NoGameNotificationHudSingleton.jclassValue) NoGameNotificationHudSingleton%)

(define NoGameNotificationHudSingleton.jcell_instance 'jnone)
(define (NoGameNotificationHudSingleton.jstatic_instance)
  (when (eq? NoGameNotificationHudSingleton.jcell_instance 'jnone) (set! NoGameNotificationHudSingleton.jcell_instance (NoGameNotificationHudSingleton.jnew_0)))
  NoGameNotificationHudSingleton.jcell_instance)
(define (NoGameNotificationHudSingleton.jsetstatic_instance value) (set! NoGameNotificationHudSingleton.jcell_instance value))

(define (NoGameNotificationHudSingleton.jnew_0)
  (define this (new NoGameNotificationHudSingleton% [jclass "NoGameNotificationHudSingleton"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_gameNotificationHud this (GameNotificationHud.jstatic_NULL_GAME_NOTIFICATION))
    (let ([_basicHudFactory JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_CONSTRUCTOR _commonStrings) _e))])
            (set! _basicHudFactory (BasicHudFactory.jm_getInstance_0))
            (set-field! f_gameNotificationHud this (NoGameGameNotificationHud.jnew_0)))))
  this)

(define (NoGameNotificationHudSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoGameNotificationHudSingleton.jstatic_instance)))))



