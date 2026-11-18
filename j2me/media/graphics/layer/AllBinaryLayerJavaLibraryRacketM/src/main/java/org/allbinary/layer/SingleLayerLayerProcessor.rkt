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
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./LayerProcessor.rkt")
(lazy-require ["./SingleLayerLayerManager.rkt" (SingleLayerLayerManager.jnew_0)])
(provide (all-defined-out))

(define SingleLayerLayerProcessor%
  (class LayerProcessor%
    (super-new)
    (define/override (jm_process_1 _allBinaryLayerManager)
    (let ([_layerManager JR.null])
      (let/ec jreturn
        (set! _layerManager (send this jm_getLayerManager_0))
        (send this jm_processAt_3 _allBinaryLayerManager (send _layerManager jm_getLayerAt_1 0) 0))))))
(define (SingleLayerLayerProcessor.jclassValue) SingleLayerLayerProcessor%)

(define (SingleLayerLayerProcessor.jnew_0)
  (define this (new SingleLayerLayerProcessor% [jclass "SingleLayerLayerProcessor"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



