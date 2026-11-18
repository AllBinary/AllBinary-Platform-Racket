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
;; package org.allbinary.game.layer.weapon

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./WeaponLayer.rkt")
(lazy-require ["./CollidableDamageWeaponBehavior.rkt" (CollidableDamageWeaponBehavior.jnew_1)])
(provide (all-defined-out))

(define DamageWeaponLayer%
  (class WeaponLayer%
    (super-new)))
(define (DamageWeaponLayer.jclassValue) DamageWeaponLayer%)

(define (DamageWeaponLayer.jnew_11 _name _remoteInfo _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition _username _actorSessionId _id _multiPlayerType)
  (define this (new DamageWeaponLayer% [jclass "DamageWeaponLayer"]))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setCollidableInferface_1 (CollidableDamageWeaponBehavior.jnew_1 #t))))
  this)



