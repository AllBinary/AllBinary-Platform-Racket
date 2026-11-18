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
;; package org.allbinary.game.health

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define HealthInterface%
  (class JObject%
    (super-new)
    (define/public (jm_isAlive_0)
      (raise (JR.newException "AbstractMethodError" "isAlive")))
    (define/public (jm_damage_1 _ahealth)
      (raise (JR.newException "AbstractMethodError" "damage")))
    (define/public (jm_heal_1 _ahealth)
      (raise (JR.newException "AbstractMethodError" "heal")))
    (define/public (jm_healMax_0)
      (raise (JR.newException "AbstractMethodError" "healMax")))
    (define/public (jm_getMaxHealth_0)
      (raise (JR.newException "AbstractMethodError" "getMaxHealth")))
    (define/public (jm_setMaxHealth_1 _maxHealth)
      (raise (JR.newException "AbstractMethodError" "setMaxHealth")))
    (define/public (jm_getHealth_0)
      (raise (JR.newException "AbstractMethodError" "getHealth")))
    (define/public (jm_addListener_1 _healthListenerInterface)
      (raise (JR.newException "AbstractMethodError" "addListener")))))
(define (HealthInterface.jclassValue) HealthInterface%)

(define (HealthInterface.jnew_0)
  (define this (new HealthInterface% [jclass "HealthInterface"]))
  this)



