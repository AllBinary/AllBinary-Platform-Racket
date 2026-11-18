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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define WeaponLayerArrayLayerCircularStaticPool%
  (class JObject%
    (super-new)
    (field [f_MAX 0])
    (field [f_circularIndexUtil JR.null])
    (field [f_WEAPONLAYER_ARRAY JR.null])
    (field [f_TWO_WEAPONLAYER_ARRAY JR.null])
    (field [f_THREE_WEAPONLAYER_ARRAY JR.null])
    (define/public (jm_init_0)
    (let ([_WEAPONLAYER_ARRAY JR.null][_TWO_WEAPONLAYER_ARRAY JR.null][_THREE_WEAPONLAYER_ARRAY JR.null][_index JR.null])
      (let/ec jreturn
        (set! _WEAPONLAYER_ARRAY (JR.newArray JR.null (JR.i32 (* (get-field f_MAX this) 2))))
        (set! _TWO_WEAPONLAYER_ARRAY (JR.newArray JR.null (get-field f_MAX this)))
        (set! _THREE_WEAPONLAYER_ARRAY (JR.newArray JR.null (get-field f_MAX this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_MAX this))
                (let/ec jcontinue
            (vector-set! _WEAPONLAYER_ARRAY _index (JR.newArray JR.null 1))
            (vector-set! _TWO_WEAPONLAYER_ARRAY _index (JR.newArray JR.null 2))
            (vector-set! _THREE_WEAPONLAYER_ARRAY _index (JR.newArray JR.null 3)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_WEAPONLAYER_ARRAY this _WEAPONLAYER_ARRAY)
        (set-field! f_TWO_WEAPONLAYER_ARRAY this _TWO_WEAPONLAYER_ARRAY)
        (set-field! f_THREE_WEAPONLAYER_ARRAY this _THREE_WEAPONLAYER_ARRAY))))
    (define/public (jm_getWeaponLayerArrays_1 _size)
    (let ()
      (let/ec jreturn
        (if (= _size 1)
            (begin
            (jreturn (get-field f_WEAPONLAYER_ARRAY this)))
            (if (= _size 2)
            (begin
            (jreturn (get-field f_TWO_WEAPONLAYER_ARRAY this)))
            (when (= _size 3)
            (begin
            (jreturn (get-field f_THREE_WEAPONLAYER_ARRAY this))))))
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getInstanceArray_1 _size)
    (let ([_weaponLayerArray JR.null])
      (let/ec jreturn
        (set! _weaponLayerArray (vector-ref (send this jm_getWeaponLayerArrays_1 _size) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
        (send (get-field f_circularIndexUtil this) jm_next_0)
        (jreturn _weaponLayerArray))))))
(define (WeaponLayerArrayLayerCircularStaticPool.jclassValue) WeaponLayerArrayLayerCircularStaticPool%)

(define WeaponLayerArrayLayerCircularStaticPool.jcell_instance 'jnone)
(define (WeaponLayerArrayLayerCircularStaticPool.jstatic_instance)
  (when (eq? WeaponLayerArrayLayerCircularStaticPool.jcell_instance 'jnone) (set! WeaponLayerArrayLayerCircularStaticPool.jcell_instance (WeaponLayerArrayLayerCircularStaticPool.jnew_0)))
  WeaponLayerArrayLayerCircularStaticPool.jcell_instance)
(define (WeaponLayerArrayLayerCircularStaticPool.jsetstatic_instance value) (set! WeaponLayerArrayLayerCircularStaticPool.jcell_instance value))

(define (WeaponLayerArrayLayerCircularStaticPool.jnew_0)
  (define this (new WeaponLayerArrayLayerCircularStaticPool% [jclass "WeaponLayerArrayLayerCircularStaticPool"]))
    (set-field! f_MAX this 5)
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (get-field f_MAX this)))
    
    
    
  this)

(define (WeaponLayerArrayLayerCircularStaticPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (WeaponLayerArrayLayerCircularStaticPool.jstatic_instance)))))



