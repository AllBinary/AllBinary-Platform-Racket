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
;; package org.allbinary.game.layer.drop

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/BasicLayerProcessor.rkt")
(provide (all-defined-out))

(define DropLayerProcessor%
  (class BasicLayerProcessor%
    (super-new)
    (define/override (jm_process_1 _allBinaryLayerManager)
    (let ([_list JR.null][_size JR.null][_layerInterface JR.null][_dropLayerInterface JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (send this jm_getList_0))
        (set! _size (send _list jm_size_0))
        (set! _layerInterface JR.null)
        (set! _dropLayerInterface JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _layerInterface (vector-ref (get-field f_objectArray _list) _index))
            (set! _dropLayerInterface _layerInterface)
            (set! _layerInterface (send _dropLayerInterface jm_getDroppedLayer_0))
            (send _allBinaryLayerManager jm_append_1 _layerInterface))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send _list jm_clear_0))))))
(define (DropLayerProcessor.jclassValue) DropLayerProcessor%)

(define DropLayerProcessor.jcell_LAYER_PROCESSOR 'jnone)
(define (DropLayerProcessor.jstatic_LAYER_PROCESSOR)
  (when (eq? DropLayerProcessor.jcell_LAYER_PROCESSOR 'jnone) (set! DropLayerProcessor.jcell_LAYER_PROCESSOR (DropLayerProcessor.jnew_0)))
  DropLayerProcessor.jcell_LAYER_PROCESSOR)
(define (DropLayerProcessor.jsetstatic_LAYER_PROCESSOR value) (set! DropLayerProcessor.jcell_LAYER_PROCESSOR value))

(define (DropLayerProcessor.jnew_0)
  (define this (new DropLayerProcessor% [jclass "DropLayerProcessor"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DropLayerProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DropLayerProcessor.jstatic_LAYER_PROCESSOR)))))



