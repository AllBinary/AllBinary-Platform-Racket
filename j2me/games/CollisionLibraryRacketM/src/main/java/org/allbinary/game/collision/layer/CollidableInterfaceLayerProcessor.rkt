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
;; package org.allbinary.game.collision.layer

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/LayerProcessor.rkt")
(lazy-require ["./CollidableInterfaceLayerManager.rkt" (CollidableInterfaceLayerManager.jnew_0)])
(lazy-require ["./AllBinaryCollisionManager.rkt" (AllBinaryCollisionManager.jm_getInstance_0)])
(provide (all-defined-out))

(define CollidableInterfaceLayerProcessor%
  (class LayerProcessor%
    (super-new)
    (define/override (jm_processAt_3 _allBinaryLayerManager _layerInterface _index)
    (let ([_collidableInterfaceCompositeInterface JR.null])
      (let/ec jreturn
        (set! _collidableInterfaceCompositeInterface _layerInterface)
        (when (JR.className (send _collidableInterfaceCompositeInterface jm_getCollidableInferface_0))
            (begin
            (send (AllBinaryCollisionManager.jm_getInstance_0) jm_process_3 (send this jm_getLayerManager_0) _collidableInterfaceCompositeInterface _index))))))
    (define/override (jm_isProcessorLayer_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (if (send _layerInterface jm_implmentsCollidableInterface_0)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (CollidableInterfaceLayerProcessor.jclassValue) CollidableInterfaceLayerProcessor%)

(define (CollidableInterfaceLayerProcessor.jnew_0)
  (define this (new CollidableInterfaceLayerProcessor% [jclass "CollidableInterfaceLayerProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



