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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool.rkt" (AllBinaryEventCircularPool.jnew_1)])
(lazy-require ["./TrackingEventFactory.rkt" (TrackingEventFactory.jnew_0)])
(provide (all-defined-out))

(define TrackingEventCircularStaticPool%
  (class JObject%
    (super-new)
    (field [f_EVENT_POOL JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_EVENT_POOL this) jm_initAllBinaryEventCircularPool_1 (TrackingEventFactory.jnew_0)))))
    (define/public (jm_getNextInstance_1 _layerInterface)
    (let ([_trackingEvent JR.null])
      (let/ec jreturn
        (set! _trackingEvent (send (get-field f_EVENT_POOL this) jm_getNextInstance_0))
        (send _trackingEvent jm_setLayerInterfaceForCircularStaticPool_1 _layerInterface)
        (jreturn _trackingEvent))))))
(define (TrackingEventCircularStaticPool.jclassValue) TrackingEventCircularStaticPool%)

(define TrackingEventCircularStaticPool.jcell_instance 'jnone)
(define (TrackingEventCircularStaticPool.jstatic_instance)
  (when (eq? TrackingEventCircularStaticPool.jcell_instance 'jnone) (set! TrackingEventCircularStaticPool.jcell_instance (TrackingEventCircularStaticPool.jnew_0)))
  TrackingEventCircularStaticPool.jcell_instance)
(define (TrackingEventCircularStaticPool.jsetstatic_instance value) (set! TrackingEventCircularStaticPool.jcell_instance value))

(define (TrackingEventCircularStaticPool.jnew_0)
  (define this (new TrackingEventCircularStaticPool% [jclass "TrackingEventCircularStaticPool"]))
    (set-field! f_EVENT_POOL this (AllBinaryEventCircularPool.jnew_1 20))
  this)

(define (TrackingEventCircularStaticPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TrackingEventCircularStaticPool.jstatic_instance)))))



