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
;; package org.allbinary.game.combat.damage

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/NamedInterface.rkt")
(provide (all-defined-out))

(define DamageableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_damage_2 _damage _damageType)
      (raise (JR.newException "AbstractMethodError" "damage")))
    (define/public (jm_getDamage_1 _damageType)
      (raise (JR.newException "AbstractMethodError" "getDamage")))))
(define (DamageableInterface.jclassValue) DamageableInterface%)

(define (DamageableInterface.jnew_0)
  (define this (new DamageableInterface% [jclass "DamageableInterface"]))
  this)



