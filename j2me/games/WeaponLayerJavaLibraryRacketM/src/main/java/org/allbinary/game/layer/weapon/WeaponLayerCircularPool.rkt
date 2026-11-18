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
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/AllBinaryLayerCircularPool.rkt")
(provide (all-defined-out))

(define WeaponLayerCircularPool%
  (class AllBinaryLayerCircularPool%
    (super-new)
    (inherit/super jm_getNextInstance_0)
    (define/public (jm_getInstanceWeaponLayer_8 _sourceLayerInterface _x _y _z _angle _otherAngle _weaponProperties _scoreable)
    (let ([_weaponLayer JR.null])
      (let/ec jreturn
        (set! _weaponLayer (super jm_getNextInstance_0))
        (send _weaponLayer jm_initXYZ_3 _x _y _z)
        (send _weaponLayer jm_init_5 _sourceLayerInterface _angle _otherAngle _weaponProperties _scoreable)
        (jreturn _weaponLayer))))))
(define (WeaponLayerCircularPool.jclassValue) WeaponLayerCircularPool%)

(define (WeaponLayerCircularPool.jnew_0)
  (define this (new WeaponLayerCircularPool% [jclass "WeaponLayerCircularPool"]))
    (let ()
      (let/ec jreturn (void)))
  this)



