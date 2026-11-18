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
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define TerrainEventHandler%
  (class BasicEventHandler%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_addListener_1 _terrainEventListener)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_list this) jm_contains_1 _terrainEventListener))
            (begin
            (send (get-field f_list this) jm_add_1 _terrainEventListener))))))
    (define/override (jm_removeAllListeners_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_clear_0)
        (super jm_removeAllListeners_0))))
    (define/override (jm_removeListener_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_remove_1 _eventListenerInterface)
        (super jm_removeListener_1 _eventListenerInterface))))
    (define/override (jm_fireEvent_1 _eventObject)
    (let ([_terrainEventListener JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_list this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _terrainEventListener (send (get-field f_list this) jm_get_1 _index))
                (send _terrainEventListener jm_onTerrainEvent_1 _eventObject))) (jloop)))))
        (super jm_fireEvent_1 _eventObject))))
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_terrainEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _terrainEventListenerInterface _eventListenerInterface)
        (send _terrainEventListenerInterface jm_onTerrainEvent_1 _eventObject))))))
(define (TerrainEventHandler.jclassValue) TerrainEventHandler%)

(define TerrainEventHandler.jcell_hashtable 'jnone)
(define (TerrainEventHandler.jstatic_hashtable)
  (when (eq? TerrainEventHandler.jcell_hashtable 'jnone) (set! TerrainEventHandler.jcell_hashtable (get-field f_NULL_TABLE (StdUtil.jm_getInstance_0))))
  TerrainEventHandler.jcell_hashtable)
(define (TerrainEventHandler.jsetstatic_hashtable value) (set! TerrainEventHandler.jcell_hashtable value))

(define (TerrainEventHandler.jnew_0)
  (define this (new TerrainEventHandler% [jclass "TerrainEventHandler"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (TerrainEventHandler.jm_init_0)
    (let ()
      (let/ec jreturn
        (set! TerrainEventHandler.jcell_hashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0)))))

(define (TerrainEventHandler.jm_getInstance_1 _anyType)
    (let ([_eventHandlerCanBeNull JR.null])
      (let/ec jreturn
        (set! _eventHandlerCanBeNull (JR.className (TerrainEventHandler.jstatic_hashtable)))
        (when (JR.null? _eventHandlerCanBeNull)
            (begin
            (set! _eventHandlerCanBeNull (TerrainEventHandler.jnew_0))
            (JR.className (TerrainEventHandler.jstatic_hashtable))))
        (jreturn _eventHandlerCanBeNull))))



