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
  "./BasicLayerProcessorInterface.rkt")
(provide (all-defined-out))

(define LayerProcessorInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getLayerManager_0)
      (raise (JR.newException "AbstractMethodError" "getLayerManager")))
    (define/public (jm_processAt_3 _allBinaryLayerManager _layerInterface _index)
      (raise (JR.newException "AbstractMethodError" "processAt")))
    (define/public (jm_isProcessorLayer_1 _layerInterface)
      (raise (JR.newException "AbstractMethodError" "isProcessorLayer")))))
(define (LayerProcessorInterface.jclassValue) LayerProcessorInterface%)

(define (LayerProcessorInterface.jnew_0)
  (define this (new LayerProcessorInterface% [jclass "LayerProcessorInterface"]))
  this)



