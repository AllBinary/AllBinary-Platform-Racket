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
  "./DamageableInterface.rkt")
(provide (all-defined-out))

(define DamageableBaseBehavior%
  (class JObject%
    (super-new)
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className this)))))
    (define/public (jm_damage_2 _damage _damageType)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getDamage_1 _damageType)
    (let ()
      (let/ec jreturn
        (jreturn 6000))))))
(define (DamageableBaseBehavior.jclassValue) DamageableBaseBehavior%)

(define DamageableBaseBehavior.jcell_instance 'jnone)
(define (DamageableBaseBehavior.jstatic_instance)
  (when (eq? DamageableBaseBehavior.jcell_instance 'jnone) (set! DamageableBaseBehavior.jcell_instance (DamageableBaseBehavior.jnew_0)))
  DamageableBaseBehavior.jcell_instance)
(define (DamageableBaseBehavior.jsetstatic_instance value) (set! DamageableBaseBehavior.jcell_instance value))

(define (DamageableBaseBehavior.jnew_0)
  (define this (new DamageableBaseBehavior% [jclass "DamageableBaseBehavior"]))
  this)

(define (DamageableBaseBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DamageableBaseBehavior.jstatic_instance)))))



