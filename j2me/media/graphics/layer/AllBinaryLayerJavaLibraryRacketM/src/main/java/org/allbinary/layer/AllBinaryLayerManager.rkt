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
  "./LayerManager.rkt")
(lazy-require ["../../../org/allbinary/layer/event/LayerManagerEvent.rkt" (LayerManagerEvent.jnew_2)])
(lazy-require ["../../../org/allbinary/layer/event/LayerManagerEventHandler.rkt" (LayerManagerEventHandler.jm_getInstance_0)])
(lazy-require ["./LayerManagerNoDebug.rkt" (LayerManagerNoDebug.jm_getInstance_0)])
(provide (all-defined-out))

(define AllBinaryLayerManager%
  (class LayerManager%
    (super-new)
    (field [f_layerManagerEventHandler JR.null])
    (field [f_createLayerManagerEvent JR.null])
    (field [f_deleteLayerManagerEvent JR.null])
    (field [f_basicLayerProcessorArray JR.null])
    (define/public (jm_getLayerProcessorArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicLayerProcessorArray this)))))
    (define/public (jm_setLayerProcessorArray_1 _layerProcessorArray)
    (let ()
      (let/ec jreturn
        (set-field! f_basicLayerProcessorArray this _layerProcessorArray))))
    (define/public (jm_log_0)
    (let ([_size JR.null][_layerProcessorInterface JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_basicLayerProcessorArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _layerProcessorInterface (vector-ref (get-field f_basicLayerProcessorArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_append_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (when (not (send this jm_contains_1 _layerInterface))
            (begin
            (send this jm_appendProcessors_1 _layerInterface)
            (super jm_append_1 _layerInterface))))))
    (define/override (jm_appendAt_2 _layerInterface _index)
    (let ()
      (let/ec jreturn
        (when (not (send this jm_contains_1 _layerInterface))
            (begin
            (send this jm_appendProcessors_1 _layerInterface)
            (super jm_appendAt_2 _layerInterface _index))))))
    (define/public (jm_appendProcessors_1 _layerInterface)
    (let ([_layerProcessorInterface JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_createLayerManagerEvent this) jm_setLayerInterface_1 _layerInterface)
        (send (get-field f_layerManagerEventHandler this) jm_fireEvent_1 (get-field f_createLayerManagerEvent this))
        (set! _layerProcessorInterface JR.null)
        (begin
            (set! _index (vector-length (get-field f_basicLayerProcessorArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _layerProcessorInterface (vector-ref (get-field f_basicLayerProcessorArray this) _index))
            (when (send _layerProcessorInterface jm_isProcessorLayer_1 _layerInterface)
                (begin
                (JR.className (send _layerProcessorInterface jm_getLayerManager_0))))) (jloop))))))))
    (define/override (jm_remove_1 _layerInterface)
    (let ([_layerProcessorInterface JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_deleteLayerManagerEvent this) jm_setLayerInterface_1 _layerInterface)
        (send (get-field f_layerManagerEventHandler this) jm_fireDeleteEvent_1 (get-field f_deleteLayerManagerEvent this))
        (set! _layerProcessorInterface JR.null)
        (begin
            (set! _index (vector-length (get-field f_basicLayerProcessorArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _layerProcessorInterface (vector-ref (get-field f_basicLayerProcessorArray this) _index))
            (JR.className (send _layerProcessorInterface jm_getLayerManager_0))) (jloop)))))
        (super jm_remove_1 _layerInterface))))
    (define/public (jm_process_0)
    (let ([_layerProcessorInterface JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _layerProcessorInterface JR.null)
        (set! _size (vector-length (get-field f_basicLayerProcessorArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _layerProcessorInterface (vector-ref (get-field f_basicLayerProcessorArray this) _index))
            (send _layerProcessorInterface jm_process_1 this))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_cleanup_0)
    (let ([_layerProcessorInterface JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _layerProcessorInterface JR.null)
        (set! _size (vector-length (get-field f_basicLayerProcessorArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _layerProcessorInterface (vector-ref (get-field f_basicLayerProcessorArray this) _index))
            (JR.className (send _layerProcessorInterface jm_getLayerManager_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (super jm_cleanup_0))))))
(define (AllBinaryLayerManager.jclassValue) AllBinaryLayerManager%)

(define (AllBinaryLayerManager.jnew_0)
  (define this (new AllBinaryLayerManager% [jclass "AllBinaryLayerManager"]))
    (set-field! f_layerManagerEventHandler this (LayerManagerEventHandler.jm_getInstance_0))
    (set-field! f_createLayerManagerEvent this (LayerManagerEvent.jnew_2 this (get-field f_CREATE (get-field f_layerManagerEventHandler this))))
    (set-field! f_deleteLayerManagerEvent this (LayerManagerEvent.jnew_2 this (get-field f_DELETE (get-field f_layerManagerEventHandler this))))
    (set-field! f_basicLayerProcessorArray this (JR.newArray JR.null 0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



