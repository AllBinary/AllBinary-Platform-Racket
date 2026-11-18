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
;; package org.allbinary.layer.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/EventListenerInterface.rkt")
(provide (all-defined-out))

(define LayerManagerEventListenerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_onCreateLayerManagerEvent_1 _layerManagerEvent)
      (raise (JR.newException "AbstractMethodError" "onCreateLayerManagerEvent")))
    (define/public (jm_onDeleteLayerManagerEvent_1 _layerManagerEvent)
      (raise (JR.newException "AbstractMethodError" "onDeleteLayerManagerEvent")))))
(define (LayerManagerEventListenerInterface.jclassValue) LayerManagerEventListenerInterface%)

(define (LayerManagerEventListenerInterface.jnew_0)
  (define this (new LayerManagerEventListenerInterface% [jclass "LayerManagerEventListenerInterface"]))
  this)



