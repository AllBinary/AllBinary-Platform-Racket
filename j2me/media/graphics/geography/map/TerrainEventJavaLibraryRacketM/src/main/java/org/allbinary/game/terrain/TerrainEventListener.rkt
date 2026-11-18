#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.terrain

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./TerrainEventListenerInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define TerrainEventListener%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onTerrainEvent_1 _terrainEvent)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_clear_0)
        (send (get-field f_list this) jm_add_1 _terrainEvent))))
    (define/public (jm_getList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))))
(define (TerrainEventListener.jclassValue) TerrainEventListener%)

(define (TerrainEventListener.jnew_0)
  (define this (new TerrainEventListener% [jclass "TerrainEventListener"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
  this)



