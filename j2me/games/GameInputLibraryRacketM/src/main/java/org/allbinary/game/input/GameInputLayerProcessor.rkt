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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/layer/LayerProcessor.rkt")
(lazy-require ["./GameInputLayerManager.rkt" (GameInputLayerManager.jnew_0)])
(provide (all-defined-out))

(define GameInputLayerProcessor%
  (class LayerProcessor%
    (super-new)
    (define/override (jm_processAt_3 _allBinaryLayerManager _layerInterface _index)
    (let ([_gameInputInterface JR.null])
      (let/ec jreturn
        (set! _gameInputInterface _layerInterface)
        (send _gameInputInterface jm_processInput_1 _allBinaryLayerManager))))
    (define/override (jm_isProcessorLayer_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (if (send _layerInterface jm_implmentsGameInputInterface_0)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (GameInputLayerProcessor.jclassValue) GameInputLayerProcessor%)

(define (GameInputLayerProcessor.jnew_0)
  (define this (new GameInputLayerProcessor% [jclass "GameInputLayerProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



