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
;; package org.allbinary.game.ag.layer.pickup.points

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayerCircularPool.rkt")
(provide (all-defined-out))

(define PointsLayerCircularStaticPool%
  (class AllBinaryLayerCircularPool%
    (super-new)
    (define/public (jm_visit_1 _sourceLayerInterface)
    (let ([_pointsLayer JR.null][_scoreableInterface JR.null])
      (let/ec jreturn
        (set! _pointsLayer (send this jm_getNextInstance_0))
        (set! _scoreableInterface _sourceLayerInterface)
        (send _pointsLayer jm_visit_1 _scoreableInterface))))))
(define (PointsLayerCircularStaticPool.jclassValue) PointsLayerCircularStaticPool%)

(define (PointsLayerCircularStaticPool.jnew_2 _allbinaryLayerFactoryInterface _total)
  (define this (new PointsLayerCircularStaticPool% [jclass "PointsLayerCircularStaticPool"]))
    (let ()
      (let/ec jreturn
        (send this jm_initAllBinaryLayerCircularPool_2 _allbinaryLayerFactoryInterface _total)))
  this)



