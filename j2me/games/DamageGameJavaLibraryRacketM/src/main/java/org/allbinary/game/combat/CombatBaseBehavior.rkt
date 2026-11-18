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
;; package org.allbinary.game.combat

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/combat/damage/DamageableBaseBehavior.rkt" (DamageableBaseBehavior.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/combat/destroy/DestroyableBaseBehavior.rkt" (DestroyableBaseBehavior.jm_getInstance_0)])
(provide (all-defined-out))

(define CombatBaseBehavior%
  (class JObject%
    (super-new)
    (field [f_damageableBaseBehavior JR.null])
    (field [f_destroyableBaseBehavior JR.null])
    (field [f_readyForExplosion #f])
    (define/public (jm_getDamageableBaseBehavior_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_damageableBaseBehavior this)))))
    (define/public (jm_getDestroyableBaseBehavior_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_destroyableBaseBehavior this)))))
    (define/public (jm_isReadyForExplosion_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_readyForExplosion this)))))
    (define/public (jm_setReadyForExplosion_1 _readyForExplosion)
    (let ()
      (let/ec jreturn
        (set-field! f_readyForExplosion this _readyForExplosion))))))
(define (CombatBaseBehavior.jclassValue) CombatBaseBehavior%)

(define CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR 'jnone)
(define (CombatBaseBehavior.jstatic_NULL_COMBAT_BEHAVIOR)
  (when (eq? CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR 'jnone) (set! CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR (CombatBaseBehavior.jnew_2 (DamageableBaseBehavior.jm_getInstance_0) (DestroyableBaseBehavior.jm_getInstance_0))))
  CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR)
(define (CombatBaseBehavior.jsetstatic_NULL_COMBAT_BEHAVIOR value) (set! CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR value))

(define (CombatBaseBehavior.jnew_2 _damageableBaseBehavior _destroyableBaseBehavior)
  (define this (new CombatBaseBehavior% [jclass "CombatBaseBehavior"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_damageableBaseBehavior this _damageableBaseBehavior)
        (set-field! f_destroyableBaseBehavior this _destroyableBaseBehavior)))
  this)



