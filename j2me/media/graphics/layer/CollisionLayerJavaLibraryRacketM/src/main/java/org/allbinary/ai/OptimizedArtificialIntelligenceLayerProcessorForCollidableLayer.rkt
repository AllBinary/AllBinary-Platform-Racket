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
;; package org.allbinary.ai

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/layer/LayerProcessor.rkt")
(lazy-require ["./OptimizedArtificialIntelligenceLayerManager.rkt" (OptimizedArtificialIntelligenceLayerManager.jnew_0)])
(provide (all-defined-out))

(define OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer%
  (class LayerProcessor%
    (super-new)
    (define/override (jm_processAt_3 _allBinaryLayerManager _layerInterface _index)
    (let ([_artificialIntelligenceCompositeInterface JR.null])
      (let/ec jreturn
        (set! _artificialIntelligenceCompositeInterface _layerInterface)
        (JR.className (send _artificialIntelligenceCompositeInterface jm_getArtificialIntelligenceInterface_0)))))
    (define/override (jm_isProcessorLayer_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (if (send _layerInterface jm_implmentsArtificialIntelligenceCompositeInterface_0)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer.jclassValue) OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer%)

(define (OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer.jnew_0)
  (define this (new OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer% [jclass "OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



