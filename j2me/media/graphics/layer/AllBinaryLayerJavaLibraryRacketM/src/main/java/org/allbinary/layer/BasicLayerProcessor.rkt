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
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define BasicLayerProcessor%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_list JR.null])
    (define/public (jm_add_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_list this) jm_contains_1 _layerInterface))
            (begin
            (send (get-field f_list this) jm_add_1 _layerInterface))))))
    (define/public (jm_process_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (CommonStrings.jm_getInstance_0)))))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (BasicLayerProcessor.jclassValue) BasicLayerProcessor%)

(define BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR 'jnone)
(define (BasicLayerProcessor.jstatic_NULL_LAYER_PROCESSOR)
  (when (eq? BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR 'jnone) (set! BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR (BasicLayerProcessor.jnew_0)))
  BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR)
(define (BasicLayerProcessor.jsetstatic_NULL_LAYER_PROCESSOR value) (set! BasicLayerProcessor.jcell_NULL_LAYER_PROCESSOR value))

(define (BasicLayerProcessor.jnew_0)
  (define this (new BasicLayerProcessor% [jclass "BasicLayerProcessor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)



