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
  "../../../../allbinary_java.rkt"
  "./HealthInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["./NullHealthListener.rkt" (NullHealthListener.jstatic_NULL_HEALTH_LISTENER)])
(provide (all-defined-out))

(define Health%
  (class JObject%
    (super-new)
    (field [f_health 0])
    (field [f_maxHealth 0])
    (field [f_healthListenerInterface JR.null])
    (define/public (jm_heal_1 _ahealth)
    (let ([_newHealth JR.null])
      (let/ec jreturn
        (set! _newHealth (JR.i32 (+ (send this jm_getHealth_0) _ahealth)))
        (if (> _newHealth (send this jm_getMaxHealth_0))
            (begin
            (send this jm_setHealth_1 (send this jm_getMaxHealth_0)))
            (begin
            (send this jm_setHealth_1 _newHealth))))))
    (define/public (jm_healMax_0)
    (let ()
      (let/ec jreturn
        (send this jm_setHealth_1 (send this jm_getMaxHealth_0)))))
    (define/public (jm_isDamaged_0)
    (let ()
      (let/ec jreturn
        (if (not (= (send this jm_getHealth_0) (send this jm_getMaxHealth_0)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_damage_1 _ahealth)
    (let ([_stringBuffer JR.null][_health JR.null])
      (let/ec jreturn
        (when (< _ahealth 0)
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 "******* Trying to heal when damaging. Damage: ")
            (send _stringBuffer jm_appendint_1 _ahealth)
            (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
            (send _stringBuffer jm_append_1 (send this jm_toString_0))
            (ForcedLogUtil.jm_log_2 (send _stringBuffer jm_toString_0) this)
            (jreturn (void))))
        (set! _health (JR.i32 (- (send this jm_getHealth_0) _ahealth)))
        (send this jm_setHealth_1 _health))))
    (define/public (jm_isAlive_0)
    (let ()
      (let/ec jreturn
        (if (<= (send this jm_getHealth_0) 0)
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))
    (define/public (jm_getMaxHealth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxHealth this)))))
    (define/public (jm_setMaxHealth_1 _maxHealth)
    (let ()
      (let/ec jreturn
        (set-field! f_maxHealth this _maxHealth))))
    (define/public (jm_setHealth_1 _health)
    (let ()
      (let/ec jreturn
        (if (> _health (send this jm_getMaxHealth_0))
            (begin
            (set-field! f_health this (send this jm_getMaxHealth_0)))
            (if (< _health 0)
            (begin
            (set-field! f_health this 0))
            (begin
            (set-field! f_health this _health))))
        (when (not (JR.null? (get-field f_healthListenerInterface this)))
            (begin
            (send (get-field f_healthListenerInterface this) jm_onHealthChange_0))))))
    (define/public (jm_getHealth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_health this)))))
    (define/public (jm_addListener_1 _healthGraphic)
    (let ()
      (let/ec jreturn
        (set-field! f_healthListenerInterface this _healthGraphic))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (Health.jstatic_HEALTH_LABEL))
        (send _stringBuffer jm_appendint_1 (get-field f_health this))
        (send _stringBuffer jm_append_1 (Health.jstatic_MAX_HEALTH_LABEL))
        (send _stringBuffer jm_appendint_1 (get-field f_maxHealth this))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (Health.jclassValue) Health%)

(define Health.jcell_NULL_HEALTH 'jnone)
(define (Health.jstatic_NULL_HEALTH)
  (when (eq? Health.jcell_NULL_HEALTH 'jnone) (set! Health.jcell_NULL_HEALTH (Health.jnew_1 0)))
  Health.jcell_NULL_HEALTH)
(define (Health.jsetstatic_NULL_HEALTH value) (set! Health.jcell_NULL_HEALTH value))

(define Health.jcell_NAME 'jnone)
(define (Health.jstatic_NAME)
  (when (eq? Health.jcell_NAME 'jnone) (set! Health.jcell_NAME "Health Resource"))
  Health.jcell_NAME)
(define (Health.jsetstatic_NAME value) (set! Health.jcell_NAME value))

(define Health.jcell_HEALTH_LABEL 'jnone)
(define (Health.jstatic_HEALTH_LABEL)
  (when (eq? Health.jcell_HEALTH_LABEL 'jnone) (set! Health.jcell_HEALTH_LABEL "Health: "))
  Health.jcell_HEALTH_LABEL)
(define (Health.jsetstatic_HEALTH_LABEL value) (set! Health.jcell_HEALTH_LABEL value))

(define Health.jcell_MAX_HEALTH_LABEL 'jnone)
(define (Health.jstatic_MAX_HEALTH_LABEL)
  (when (eq? Health.jcell_MAX_HEALTH_LABEL 'jnone) (set! Health.jcell_MAX_HEALTH_LABEL " Max: "))
  Health.jcell_MAX_HEALTH_LABEL)
(define (Health.jsetstatic_MAX_HEALTH_LABEL value) (set! Health.jcell_MAX_HEALTH_LABEL value))

(define (Health.jnew_1 _maxHealth)
  (define this (new Health% [jclass "Health"]))
    
    
    (set-field! f_healthListenerInterface this (NullHealthListener.jstatic_NULL_HEALTH_LISTENER))
    (let ()
      (let/ec jreturn
        (send this jm_setMaxHealth_1 _maxHealth)
        (send this jm_setHealth_1 _maxHealth)))
  this)



