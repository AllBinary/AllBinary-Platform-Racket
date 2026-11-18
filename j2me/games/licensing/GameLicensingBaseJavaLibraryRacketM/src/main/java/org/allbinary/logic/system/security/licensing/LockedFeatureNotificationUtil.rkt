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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent.rkt" (GameNotificationEvent.jnew_5)])
(lazy-require ["../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler.rkt" (GameNotificationEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/media/audio/ErrorSound.rkt" (ErrorSound.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory.rkt" (PrimaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["./LicenseStrings.rkt" (LicenseStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define LockedFeatureNotificationUtil%
  (class JObject%
    (super-new)
    (field [f_gameNotificationEvent JR.null])
    (define/public (jm_fire_0)
    (let ()
      (let/ec jreturn
        (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (ErrorSound.jm_getInstance_0))
        (send (GameNotificationEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_gameNotificationEvent this)))))
    (define/public (jm_fireWithColor_1 _basicColor)
    (let ()
      (let/ec jreturn
        (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (ErrorSound.jm_getInstance_0))
        (send (get-field f_gameNotificationEvent this) jm_setBasicColorP_1 _basicColor)
        (send (GameNotificationEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_gameNotificationEvent this)))))))
(define (LockedFeatureNotificationUtil.jclassValue) LockedFeatureNotificationUtil%)

(define LockedFeatureNotificationUtil.jcell_instance 'jnone)
(define (LockedFeatureNotificationUtil.jstatic_instance)
  (when (eq? LockedFeatureNotificationUtil.jcell_instance 'jnone) (set! LockedFeatureNotificationUtil.jcell_instance (LockedFeatureNotificationUtil.jnew_0)))
  LockedFeatureNotificationUtil.jcell_instance)
(define (LockedFeatureNotificationUtil.jsetstatic_instance value) (set! LockedFeatureNotificationUtil.jcell_instance value))

(define (LockedFeatureNotificationUtil.jnew_0)
  (define this (new LockedFeatureNotificationUtil% [jclass "LockedFeatureNotificationUtil"]))
    (set-field! f_gameNotificationEvent this (GameNotificationEvent.jnew_5 this (get-field f_LOCKED (LicenseStrings.jm_getInstance_0)) (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 3) (get-field f_RED (BasicColorFactory.jm_getInstance_0)) (get-field f_FALSE (BooleanFactory.jm_getInstance_0))))
  this)

(define (LockedFeatureNotificationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LockedFeatureNotificationUtil.jstatic_instance)))))



