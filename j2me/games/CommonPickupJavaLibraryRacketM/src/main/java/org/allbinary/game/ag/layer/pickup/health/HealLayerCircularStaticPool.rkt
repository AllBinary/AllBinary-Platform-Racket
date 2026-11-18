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
;; package org.allbinary.game.ag.layer.pickup.health

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayerCircularPool.rkt")
(provide (all-defined-out))

(define HealLayerCircularStaticPool%
  (class AllBinaryLayerCircularPool%
    (super-new)
    (define/public (jm_visit_1 _sourceLayerInterface)
    (let ([_healLayer JR.null][_healthInterfaceCompositeInterface JR.null][_healthInterface JR.null])
      (let/ec jreturn
        (set! _healLayer (send this jm_getNextInstance_0))
        (set! _healthInterfaceCompositeInterface _sourceLayerInterface)
        (set! _healthInterface (send _healthInterfaceCompositeInterface jm_getHealthInterface_0))
        (send _healLayer jm_visit_1 _healthInterface))))))
(define (HealLayerCircularStaticPool.jclassValue) HealLayerCircularStaticPool%)

(define (HealLayerCircularStaticPool.jnew_2 _allbinaryLayerFactoryInterface _total)
  (define this (new HealLayerCircularStaticPool% [jclass "HealLayerCircularStaticPool"]))
    (let ()
      (let/ec jreturn
        (send this jm_initAllBinaryLayerCircularPool_2 _allbinaryLayerFactoryInterface _total)))
  this)



