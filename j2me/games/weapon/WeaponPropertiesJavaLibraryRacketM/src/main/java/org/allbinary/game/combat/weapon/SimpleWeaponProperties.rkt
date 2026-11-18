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
;; package org.allbinary.game.combat.weapon

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define SimpleWeaponProperties%
  (class JObject%
    (super-new)
    (field [f_damage 0])
    (field [f_dissipation 0])
    (field [f_range 0])
    (define/public (jm_set_1 _simpleWeaponProperties)
    (let ()
      (let/ec jreturn
        (send this jm_setDamage_1 (send _simpleWeaponProperties jm_getDamage_0))
        (send this jm_setDissipation_1 (send _simpleWeaponProperties jm_getDissipation_0))
        (send this jm_setRange_1 (send _simpleWeaponProperties jm_getRange_0)))))
    (define/public (jm_setDamage_1 _damage)
    (let ()
      (let/ec jreturn
        (set-field! f_damage this _damage))))
    (define/public (jm_getDamage_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_damage this)))))
    (define/public (jm_setDissipation_1 _dissipation)
    (let ()
      (let/ec jreturn
        (set-field! f_dissipation this _dissipation))))
    (define/public (jm_getDissipation_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dissipation this)))))
    (define/public (jm_getRange_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_range this)))))
    (define/public (jm_setRange_1 _range)
    (let ()
      (let/ec jreturn
        (set-field! f_range this _range))))))
(define (SimpleWeaponProperties.jclassValue) SimpleWeaponProperties%)

(define (SimpleWeaponProperties.jnew_0)
  (define this (new SimpleWeaponProperties% [jclass "SimpleWeaponProperties"]))
    
    
    
  this)



