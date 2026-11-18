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
;; package org.allbinary.game.tracking

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(lazy-require ["../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["./TrackingEventHandler.rkt" (TrackingEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define TrackingEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_layerInterface JR.null])
    (define/public (jm_init_1 _anyType)
    (let ()
      (let/ec jreturn
        (send this jm_setSource_1 _anyType))))
    (define/public (jm_getLayerInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_layerInterface this)))))
    (define/public (jm_setLayerInterface_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_layerInterface this _layerInterface))))
    (define/public (jm_setLayerInterfaceForCircularStaticPool_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_layerInterface this _layerInterface))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "TrackingEvent: \n")
        (send _stringBuffer jm_append_1 "LayerInterface: ")
        (send _stringBuffer jm_append_1 (send (get-field f_layerInterface this) jm_toString_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (TrackingEvent.jclassValue) TrackingEvent%)

(define (TrackingEvent.jnew_1 _allBinaryLayerInterface)
  (define this (new TrackingEvent% [jclass "TrackingEvent"]))
    (set-field! f_layerInterface this (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    (let ()
      (let/ec jreturn
        (void)
        (when (not (eq? _allBinaryLayerInterface (TrackingEventHandler.jm_getInstance_0)))
            (begin
            (send this jm_setLayerInterface_1 _allBinaryLayerInterface)))))
  this)



