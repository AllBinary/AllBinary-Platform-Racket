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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define DamageUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_COLLIDE JR.null])
    (define/public (jm_process_2 _damageableInterface _damageableInterface2)
    (let ()
      (let/ec jreturn
        (send _damageableInterface jm_damage_2 (send _damageableInterface2 jm_getDamage_1 0) 0))))
    (define/public (jm_debugDamage_2 _collidableInterfaceCompositeInterface1 _collidableInterfaceCompositeInterface)
    (let ([_collidableDestroyableDamageableLayer JR.null][_damage JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _collidableDestroyableDamageableLayer _collidableInterfaceCompositeInterface)
        (set! _damage (send _collidableDestroyableDamageableLayer jm_getDamage_1 0))
        (when (> _damage 20000)
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 "Collision ")
            (send _stringBuffer jm_append_1 (send _collidableInterfaceCompositeInterface1 jm_toString_0))
            (send _stringBuffer jm_append_1 " with: ")
            (send _stringBuffer jm_append_1 (send _collidableInterfaceCompositeInterface jm_toString_0))
            (send _stringBuffer jm_append_1 " damage: ")
            (send _stringBuffer jm_appendint_1 _damage)
            (send (get-field f_logUtil this) jm_putF_3 (send _stringBuffer jm_toString_0) _collidableInterfaceCompositeInterface1 (get-field f_COLLIDE this)))))))))
(define (DamageUtil.jclassValue) DamageUtil%)

(define DamageUtil.jcell_instance 'jnone)
(define (DamageUtil.jstatic_instance)
  (when (eq? DamageUtil.jcell_instance 'jnone) (set! DamageUtil.jcell_instance (DamageUtil.jnew_0)))
  DamageUtil.jcell_instance)
(define (DamageUtil.jsetstatic_instance value) (set! DamageUtil.jcell_instance value))

(define (DamageUtil.jnew_0)
  (define this (new DamageUtil% [jclass "DamageUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_COLLIDE this "collide")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DamageUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DamageUtil.jstatic_instance)))))



