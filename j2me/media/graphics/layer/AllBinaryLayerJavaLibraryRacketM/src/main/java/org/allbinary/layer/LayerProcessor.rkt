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
  "./LayerProcessorInterface.rkt")
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define LayerProcessor%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_layerManager JR.null])
    (define/public (jm_processAt_3 _allBinaryLayerManager _layerInterface _index)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_isProcessorLayer_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_getLayerManager_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_layerManager this)))))
    (define/public (jm_process_1 _allBinaryLayerManager)
    (let ([_layerManager JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _layerManager (send this jm_getLayerManager_0))
        (set! _size (send _layerManager jm_getSize_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send this jm_processAt_3 _allBinaryLayerManager (send _layerManager jm_getLayerAt_1 _index) _index))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (LayerProcessor.jclassValue) LayerProcessor%)

(define (LayerProcessor.jnew_1 _layerManager)
  (define this (new LayerProcessor% [jclass "LayerProcessor"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_layerManager this _layerManager)))
  this)



