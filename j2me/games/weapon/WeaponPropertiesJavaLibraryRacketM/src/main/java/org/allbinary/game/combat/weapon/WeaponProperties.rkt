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
  "../../../../../allbinary_java.rkt"
  "./SimpleWeaponProperties.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../org/allbinary/logic/math/BasicDecimal.rkt" (BasicDecimal.jnew_1 BasicDecimal.jstatic_ZERO_BIGDECIMAL)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define WeaponProperties%
  (class SimpleWeaponProperties%
    (super-new)
    (field [f_reloadTime 0])
    (field [f_targetingTime 0])
    (field [f_speed JR.null])
    (field [f_MAX 0])
    (field [f_ZERO 0])
    (define/public (jm_setReloadTime_1 _reloadTime)
    (let ()
      (let/ec jreturn
        (set-field! f_reloadTime this _reloadTime))))
    (define/public (jm_getReloadTime_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_reloadTime this)))))
    (define/public (jm_setTargetingTime_1 _targetingTime)
    (let ()
      (let/ec jreturn
        (set-field! f_targetingTime this _targetingTime))))
    (define/public (jm_getTargetingTime_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_targetingTime this)))))
    (define/public (jm_getSpeed_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_speed this)))))
    (define/public (jm_setSpeed_1 _speed)
    (let ()
      (let/ec jreturn
        (set-field! f_speed this _speed))))
    (define/public (jm_getDamageI_1 _range)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- (send this jm_getDamage_0) (JR.idiv (JR.i32 (* (send this jm_getDissipation_0) _range)) (send (get-field f_speed this) jm_getScaled_0))))))))
    (define/public (jm_toStringArray_0)
    (let ([_index JR.null][_stringArray JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _index 0)
        (set! _stringArray (JR.newArray JR.null 3))
        (set! _stringBuffer (StringMaker.jnew_0))
        (vector-set! _stringArray (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue) (send (send (send _stringBuffer jm_append_1 (WeaponProperties.jstatic_DAMAGE)) jm_appendint_1 (send this jm_getDamage_0)) jm_toString_0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (vector-set! _stringArray (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue) (send (send (send _stringBuffer jm_append_1 (WeaponProperties.jstatic_RANGE)) jm_appendint_1 (send this jm_getRange_0)) jm_toString_0))
        (send _stringBuffer jm_delete_2 0 (send _stringBuffer jm_length_0))
        (vector-set! _stringArray (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue) (send (send (send _stringBuffer jm_append_1 (WeaponProperties.jstatic_RELOAD)) jm_appendlong_1 (send this jm_getReloadTime_0)) jm_toString_0))
        (jreturn _stringArray))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send (send _stringBuffer jm_append_1 (WeaponProperties.jstatic_DAMAGE)) jm_appendint_1 (send this jm_getDamage_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send (send _stringBuffer jm_append_1 (WeaponProperties.jstatic_RANGE)) jm_appendint_1 (send this jm_getRange_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send (send _stringBuffer jm_append_1 (WeaponProperties.jstatic_RELOAD)) jm_appendlong_1 (send this jm_getReloadTime_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (WeaponProperties.jclassValue) WeaponProperties%)

(define WeaponProperties.jcell_NULL_WEAPON_PROPERTIES 'jnone)
(define (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES)
  (when (eq? WeaponProperties.jcell_NULL_WEAPON_PROPERTIES 'jnone) (set! WeaponProperties.jcell_NULL_WEAPON_PROPERTIES (WeaponProperties.jnew_5 0 0 0 0 (JR.i16 0))))
  WeaponProperties.jcell_NULL_WEAPON_PROPERTIES)
(define (WeaponProperties.jsetstatic_NULL_WEAPON_PROPERTIES value) (set! WeaponProperties.jcell_NULL_WEAPON_PROPERTIES value))

(define WeaponProperties.jcell_messageSent 'jnone)
(define (WeaponProperties.jstatic_messageSent)
  (when (eq? WeaponProperties.jcell_messageSent 'jnone) (set! WeaponProperties.jcell_messageSent #f))
  WeaponProperties.jcell_messageSent)
(define (WeaponProperties.jsetstatic_messageSent value) (set! WeaponProperties.jcell_messageSent value))

(define WeaponProperties.jcell_DAMAGE 'jnone)
(define (WeaponProperties.jstatic_DAMAGE)
  (when (eq? WeaponProperties.jcell_DAMAGE 'jnone) (set! WeaponProperties.jcell_DAMAGE "Damage: "))
  WeaponProperties.jcell_DAMAGE)
(define (WeaponProperties.jsetstatic_DAMAGE value) (set! WeaponProperties.jcell_DAMAGE value))

(define WeaponProperties.jcell_RANGE 'jnone)
(define (WeaponProperties.jstatic_RANGE)
  (when (eq? WeaponProperties.jcell_RANGE 'jnone) (set! WeaponProperties.jcell_RANGE "Range: "))
  WeaponProperties.jcell_RANGE)
(define (WeaponProperties.jsetstatic_RANGE value) (set! WeaponProperties.jcell_RANGE value))

(define WeaponProperties.jcell_RELOAD 'jnone)
(define (WeaponProperties.jstatic_RELOAD)
  (when (eq? WeaponProperties.jcell_RELOAD 'jnone) (set! WeaponProperties.jcell_RELOAD "Reload: "))
  WeaponProperties.jcell_RELOAD)
(define (WeaponProperties.jsetstatic_RELOAD value) (set! WeaponProperties.jcell_RELOAD value))

(define (WeaponProperties.jnew_5 _reloadTime _targetingTime _speed _damage _dissipation)
  (define this (new WeaponProperties% [jclass "WeaponProperties"]))
    
    
    (set-field! f_speed this (BasicDecimal.jstatic_ZERO_BIGDECIMAL))
    (set-field! f_MAX this 10240)
    (set-field! f_ZERO this 0)
    (let ([_MESSAGE JR.null][_commonStrings JR.null][_unscaledDamage JR.null][_scaledDissipation JR.null][_value JR.null])
      (let/ec jreturn
        (when (and (and (< _speed (get-field f_MAX this)) (not (= _speed 0))) (not (WeaponProperties.jstatic_messageSent)))
            (begin
            (set! _MESSAGE "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ")
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 _MESSAGE) jm_appendlong_1 _speed) jm_toString_0) this (get-field f_CONSTRUCTOR _commonStrings))
            (set! WeaponProperties.jcell_messageSent #t)))
        (send this jm_setReloadTime_1 _reloadTime)
        (send this jm_setTargetingTime_1 _targetingTime)
        (send this jm_setDamage_1 _damage)
        (send this jm_setDissipation_1 _dissipation)
        (send this jm_setSpeed_1 (BasicDecimal.jnew_1 _speed))
        (when (not (= _dissipation (get-field f_ZERO this)))
            (begin
            (set! _unscaledDamage (JR.i64 (* (send (get-field f_speed this) jm_getUnscaled_0) _damage)))
            (set! _scaledDissipation (JR.i32 (* _dissipation (send (get-field f_speed this) jm_getScaledFactorValue_0))))
            (set! _value (JR.ldiv _unscaledDamage _scaledDissipation))
            (send this jm_setRange_1 (JR.idiv (JR.i32 (JR.i64 (* _value 9))) 10))))))
  this)



