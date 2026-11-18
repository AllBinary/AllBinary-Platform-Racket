#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.layer.weapon

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./SimpleWeaponLayer.rkt")
(lazy-require ["../../../../../org/allbinary/game/combat/weapon/WeaponProperties.rkt" (WeaponProperties.jnew_5)])
(lazy-require ["../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo.rkt" (RemoteInfo.jstatic_REMOTE_INFO)])
(lazy-require ["../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define TempExplosionWeaponLayer%
  (class SimpleWeaponLayer%
    (super-new)
    (field [f_timeDelayHelper JR.null])
    (define/override (jm_processTick_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_timeDelayHelper this) jm_isTime_1 (get-field f_startTime (GameTickTimeDelayHelperFactory.jm_getInstance_0)))
            (begin
            (JR.className (send this jm_getCollidableInferface_0))
            (set-field! f_totalDamage this (JR.i32 (+ (send this jm_getInitDamage_0) 1)))))
        (super jm_processTick_1 _allBinaryLayerManager))))))
(define (TempExplosionWeaponLayer.jclassValue) TempExplosionWeaponLayer%)

(define (TempExplosionWeaponLayer.jnew_6 _name _movement _animationInterface _rectangle _viewPosition _timeDelay)
  (define this (new TempExplosionWeaponLayer% [jclass "TempExplosionWeaponLayer"]))
    (set-field! f_weaponProperties this (WeaponProperties.jnew_5 (JR.i64 (- 1)) (JR.i64 (- 1)) 0 1000 (JR.i16 0)))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_delay (get-field f_timeDelayHelper this) _timeDelay)))
  this)



