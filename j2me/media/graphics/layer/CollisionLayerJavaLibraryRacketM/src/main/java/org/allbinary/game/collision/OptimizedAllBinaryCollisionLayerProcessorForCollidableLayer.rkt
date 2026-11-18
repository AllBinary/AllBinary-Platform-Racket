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
;; package org.allbinary.game.collision

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/layer/LayerProcessor.rkt")
(lazy-require ["./OptimizedAllBinaryCollisionLayerManager.rkt" (OptimizedAllBinaryCollisionLayerManager.jnew_0)])
(provide (all-defined-out))

(define OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer%
  (class LayerProcessor%
    (super-new)
    (define/override (jm_processAt_3 _allBinaryLayerManager _layerInterface _startIndex)
    (let ([_collidableInterfaceCompositeInterface JR.null][_collidableBase JR.null][_layerManager JR.null][_size JR.null][_collidableInterfaceCompositeInterface2 JR.null][_collidableBase2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _collidableInterfaceCompositeInterface _layerInterface)
        (set! _collidableBase (send _collidableInterfaceCompositeInterface jm_getCollidableInferface_0))
        (when (send _collidableBase jm_isCollidable_1 _collidableInterfaceCompositeInterface)
            (begin
            (set! _layerManager (send this jm_getLayerManager_0))
            (set! _size (send _layerManager jm_getSize_0))
            (set! _collidableInterfaceCompositeInterface2 JR.null)
            (set! _collidableBase2 JR.null)
            (begin
                (set! _index (JR.i32 (+ _startIndex 1)))
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _collidableInterfaceCompositeInterface2 (send _layerManager jm_getLayerAt_1 _index))
                (set! _collidableBase2 (send _collidableInterfaceCompositeInterface2 jm_getCollidableInferface_0))
                (when (and (send _collidableBase2 jm_isCollidable_1 _collidableInterfaceCompositeInterface) (send _collidableBase jm_isCollision_2 _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2))
                    (begin
                    (send _collidableBase jm_collide_2 _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                    (send _collidableBase2 jm_collide_2 _collidableInterfaceCompositeInterface2 _collidableInterfaceCompositeInterface))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
    (define/override (jm_isProcessorLayer_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (if (send _layerInterface jm_implmentsCollidableInterface_0)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer.jclassValue) OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer%)

(define (OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer.jnew_0)
  (define this (new OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer% [jclass "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



