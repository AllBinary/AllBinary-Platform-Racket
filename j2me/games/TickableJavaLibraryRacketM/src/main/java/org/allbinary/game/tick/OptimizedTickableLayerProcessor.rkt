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
;; package org.allbinary.game.tick

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/layer/LayerProcessor.rkt")
(lazy-require ["./OptimizedTickableLayerManager.rkt" (OptimizedTickableLayerManager.jnew_0)])
(provide (all-defined-out))

(define OptimizedTickableLayerProcessor%
  (class LayerProcessor%
    (super-new)
    (define/override (jm_processAt_3 _allBinaryLayerManager _layerInterface _index)
    (let ([_tickableInterface JR.null])
      (let/ec jreturn
        (set! _tickableInterface _layerInterface)
        (send _tickableInterface jm_processTick_1 _allBinaryLayerManager))))
    (define/override (jm_isProcessorLayer_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (if (send _layerInterface jm_implmentsTickableInterface_0)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (OptimizedTickableLayerProcessor.jclassValue) OptimizedTickableLayerProcessor%)

(define (OptimizedTickableLayerProcessor.jnew_0)
  (define this (new OptimizedTickableLayerProcessor% [jclass "OptimizedTickableLayerProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



