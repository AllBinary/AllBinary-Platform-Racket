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
  "./LayerManagerEventListenerInterface.rkt")
(provide (all-defined-out))

(define LayerManagerEventListener%
  (class JObject%
    (super-new)
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onCreateLayerManagerEvent_1 _layerManagerEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onDeleteLayerManagerEvent_1 _layerManagerEvent)
    (let ()
      (let/ec jreturn (void))))))
(define (LayerManagerEventListener.jclassValue) LayerManagerEventListener%)

(define (LayerManagerEventListener.jnew_0)
  (define this (new LayerManagerEventListener% [jclass "LayerManagerEventListener"]))
  this)



