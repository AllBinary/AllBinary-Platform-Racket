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
;; package org.allbinary.game.ag.layer.pickup.life

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayerCircularPool.rkt")
(provide (all-defined-out))

(define LifeLayerCircularStaticPool%
  (class AllBinaryLayerCircularPool%
    (super-new)
    (define/public (jm_visit_1 _sourceLayerInterface)
    (let ([_lifeLayer JR.null][_lifeInterfaceCompositeInterface JR.null][_lifeInterface JR.null])
      (let/ec jreturn
        (set! _lifeLayer (send this jm_getNextInstance_0))
        (set! _lifeInterfaceCompositeInterface _sourceLayerInterface)
        (set! _lifeInterface (send _lifeInterfaceCompositeInterface jm_getLifeInterface_0))
        (send _lifeLayer jm_visit_1 _lifeInterface))))))
(define (LifeLayerCircularStaticPool.jclassValue) LifeLayerCircularStaticPool%)

(define (LifeLayerCircularStaticPool.jnew_2 _allbinaryLayerFactoryInterface _total)
  (define this (new LifeLayerCircularStaticPool% [jclass "LifeLayerCircularStaticPool"]))
    (let ()
      (let/ec jreturn
        (send this jm_initAllBinaryLayerCircularPool_2 _allbinaryLayerFactoryInterface _total)))
  this)



