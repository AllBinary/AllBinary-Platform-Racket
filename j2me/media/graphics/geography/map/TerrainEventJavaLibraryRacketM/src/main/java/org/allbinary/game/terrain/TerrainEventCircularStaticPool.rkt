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
;; package org.allbinary.game.terrain

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool.rkt" (AllBinaryEventCircularPool.jnew_1)])
(lazy-require ["./TerrainEventFactory.rkt" (TerrainEventFactory.jnew_0)])
(provide (all-defined-out))

(define TerrainEventCircularStaticPool%
  (class JObject%
    (super-new)
    (field [f_EVENT_POOL JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_EVENT_POOL this) jm_initAllBinaryEventCircularPool_1 (TerrainEventFactory.jnew_0)))))
    (define/public (jm_getNext_1 _basicTerrainInfo)
    (let ([_trackingEvent JR.null])
      (let/ec jreturn
        (set! _trackingEvent (send (get-field f_EVENT_POOL this) jm_getNextInstance_0))
        (send _trackingEvent jm_setBasicTerrainInfoForCircularStaticPool_1 _basicTerrainInfo)
        (jreturn _trackingEvent))))))
(define (TerrainEventCircularStaticPool.jclassValue) TerrainEventCircularStaticPool%)

(define TerrainEventCircularStaticPool.jcell_instance 'jnone)
(define (TerrainEventCircularStaticPool.jstatic_instance)
  (when (eq? TerrainEventCircularStaticPool.jcell_instance 'jnone) (set! TerrainEventCircularStaticPool.jcell_instance (TerrainEventCircularStaticPool.jnew_0)))
  TerrainEventCircularStaticPool.jcell_instance)
(define (TerrainEventCircularStaticPool.jsetstatic_instance value) (set! TerrainEventCircularStaticPool.jcell_instance value))

(define (TerrainEventCircularStaticPool.jnew_0)
  (define this (new TerrainEventCircularStaticPool% [jclass "TerrainEventCircularStaticPool"]))
    (set-field! f_EVENT_POOL this (AllBinaryEventCircularPool.jnew_1 20))
  this)

(define (TerrainEventCircularStaticPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TerrainEventCircularStaticPool.jstatic_instance)))))



