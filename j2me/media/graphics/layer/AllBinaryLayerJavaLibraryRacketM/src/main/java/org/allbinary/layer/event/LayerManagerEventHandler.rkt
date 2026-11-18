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
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define LayerManagerEventHandler%
  (class BasicEventHandler%
    (super-new)
    (field [f_list JR.null])
    (field [f_CREATE JR.null])
    (field [f_DELETE JR.null])
    (define/public (jm_addListener_1 _layerManagerEventListener)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_list this) jm_contains_1 _layerManagerEventListener))
            (begin
            (send (get-field f_list this) jm_add_1 _layerManagerEventListener))))))
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
    (let ([_layerManagerEventListener JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_list this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _layerManagerEventListener (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
                (send _layerManagerEventListener jm_onCreateLayerManagerEvent_1 _eventObject))) (jloop)))))
        (super jm_fireEvent_1 _eventObject))))
    (define/public (jm_fireDeleteEvent_1 _eventObject)
    (let ([_layerManagerEventListener JR.null][_index JR.null][_eventListenerInterfaceList JR.null][_eventListenerInterface JR.null][_layerManagerEventListenerInterface JR.null][_listenerIndex JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_list this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _layerManagerEventListener (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
                (send _layerManagerEventListener jm_onDeleteLayerManagerEvent_1 _eventObject))) (jloop)))))
        (set! _eventListenerInterfaceList (get-field f_eventListenerInterfaceList this))
        (set! _eventListenerInterface JR.null)
        (set! _layerManagerEventListenerInterface JR.null)
        (set! _listenerIndex 0)
        (let/ec jbreak (let jloop () (when (< _listenerIndex (send _eventListenerInterfaceList jm_size_0))
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _eventListenerInterface (vector-ref (get-field f_objectArray _eventListenerInterfaceList) _listenerIndex))
                (set! _layerManagerEventListenerInterface _eventListenerInterface)
                (send _layerManagerEventListenerInterface jm_onDeleteLayerManagerEvent_1 _eventObject))
            (set! _listenerIndex (JR.i32 (+ _listenerIndex 1)))) (jloop)))))))
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_layerManagerEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _layerManagerEventListenerInterface _eventListenerInterface)
        (send _layerManagerEventListenerInterface jm_onCreateLayerManagerEvent_1 _eventObject))))))
(define (LayerManagerEventHandler.jclassValue) LayerManagerEventHandler%)

(define LayerManagerEventHandler.jcell_instance 'jnone)
(define (LayerManagerEventHandler.jstatic_instance)
  (when (eq? LayerManagerEventHandler.jcell_instance 'jnone) (set! LayerManagerEventHandler.jcell_instance (LayerManagerEventHandler.jnew_0)))
  LayerManagerEventHandler.jcell_instance)
(define (LayerManagerEventHandler.jsetstatic_instance value) (set! LayerManagerEventHandler.jcell_instance value))

(define (LayerManagerEventHandler.jnew_0)
  (define this (new LayerManagerEventHandler% [jclass "LayerManagerEventHandler"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (set-field! f_CREATE this "Create")
    (set-field! f_DELETE this "Delete")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (LayerManagerEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LayerManagerEventHandler.jstatic_instance)))))



