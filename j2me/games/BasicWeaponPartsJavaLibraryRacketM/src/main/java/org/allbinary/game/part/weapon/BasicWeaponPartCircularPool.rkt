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
;; package org.allbinary.game.part.weapon

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./BasicWeaponPart.rkt" (BasicWeaponPart.jstatic_NULL_BASIC_WEAPON_PART)])
(provide (all-defined-out))

(define BasicWeaponPartCircularPool%
  (class JObject%
    (super-new)
    (field [f_basicWeaponPart JR.null])
    (define/public (jm_init_1 _basicWeaponPartFactoryInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_basicWeaponPart this (send _basicWeaponPartFactoryInterface jm_getInstance_0)))))
    (define/public (jm_getInstance_4 _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
    (let ()
      (let/ec jreturn
        (send (get-field f_basicWeaponPart this) jm_init_4 _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
        (jreturn (get-field f_basicWeaponPart this)))))))
(define (BasicWeaponPartCircularPool.jclassValue) BasicWeaponPartCircularPool%)

(define BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL 'jnone)
(define (BasicWeaponPartCircularPool.jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL)
  (when (eq? BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL 'jnone) (set! BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL (BasicWeaponPartCircularPool.jnew_0)))
  BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL)
(define (BasicWeaponPartCircularPool.jsetstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL value) (set! BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL value))

(define (BasicWeaponPartCircularPool.jnew_0)
  (define this (new BasicWeaponPartCircularPool% [jclass "BasicWeaponPartCircularPool"]))
    (set-field! f_basicWeaponPart this (BasicWeaponPart.jstatic_NULL_BASIC_WEAPON_PART))
  this)



