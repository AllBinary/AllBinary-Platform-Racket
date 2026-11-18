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
;; package org.allbinary.game.input.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt"
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define DownKeyEventHandlerBase%
  (class BasicEventHandler%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_addListener_1 _playerGameInput)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_list this) jm_contains_1 _playerGameInput))
            (begin
            (send (get-field f_list this) jm_add_1 _playerGameInput))))))
    (define/override (jm_removeAllListeners_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_clear_0)
        (super jm_removeAllListeners_0))))
    (define/override (jm_removeListenerSingleThreaded_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_remove_1 _eventListenerInterface)
        (super jm_removeListenerSingleThreaded_1 _eventListenerInterface))))
    (define/override (jm_removeListener_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_remove_1 _eventListenerInterface)
        (super jm_removeListener_1 _eventListenerInterface))))
    (define/public (jm_fireEventI_1 _eventObject)
    (let ([_playerGameInput JR.null][_index JR.null][_eventListenerInterface JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_list this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _playerGameInput (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
                (send _playerGameInput jm_onDownKey_1 _eventObject))) (jloop)))))
        (set! _index 0)
        (set! _eventListenerInterface JR.null)
        (let/ec jbreak (let jloop () (when (< _index (JR.className (get-field f_eventListenerInterfaceList this)))
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _eventListenerInterface (JR.className (get-field f_eventListenerInterfaceList this)))
                (send this jm_processI_2 _eventObject _eventListenerInterface))
            (set! _index (JR.i32 (+ _index 1)))) (jloop)))))))
    (define/public (jm_fireEventForGameKeyEvent_1 _eventObject)
    (let ([_size JR.null][_playerGameInput JR.null][_index JR.null][_eventListenerInterface JR.null])
      (let/ec jreturn
        (set! _size (send (get-field f_list this) jm_size_0))
        (begin
            (set! _index _size)
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _playerGameInput (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
                (send _playerGameInput jm_onDownKeyEvent_1 _eventObject))) (jloop)))))
        (set! _index 0)
        (set! _eventListenerInterface JR.null)
        (let/ec jbreak (let jloop () (when (< _index (JR.className (get-field f_eventListenerInterfaceList this)))
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _eventListenerInterface (JR.className (get-field f_eventListenerInterfaceList this)))
                (send this jm_processEvent_2 _eventObject _eventListenerInterface))
            (set! _index (JR.i32 (+ _index 1)))) (jloop)))))))
    (define/public (jm_processI_2 _eventObject _eventListenerInterface)
    (let ([_downKeyEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _downKeyEventListenerInterface _eventListenerInterface)
        (send _downKeyEventListenerInterface jm_onDownKey_1 _eventObject))))
    (define/public (jm_processEvent_2 _eventObject _eventListenerInterface)
    (let ([_downKeyEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _downKeyEventListenerInterface _eventListenerInterface)
        (send _downKeyEventListenerInterface jm_onDownKeyEvent_1 _eventObject))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_eventListenerInterface JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (super jm_toString_0))
        (send _stringBuffer jm_append_1 (DownKeyEventHandlerBase.jstatic_TOTAL_LISTENERS))
        (send _stringBuffer jm_appendint_1 (send (get-field f_list this) jm_size_0))
        (set! _eventListenerInterface JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (send (get-field f_list this) jm_size_0))
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _eventListenerInterface (send (get-field f_list this) jm_get_1 _index))
                (send _stringBuffer jm_append_1 (DownKeyEventHandlerBase.jstatic_LISTENER_LABEL))
                (send _stringBuffer jm_append_1 (send _eventListenerInterface jm_toString_0))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (DownKeyEventHandlerBase.jclassValue) DownKeyEventHandlerBase%)

(define DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS 'jnone)
(define (DownKeyEventHandlerBase.jstatic_TOTAL_LISTENERS)
  (when (eq? DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS 'jnone) (set! DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS " Total PlayerGameInput Listeners: "))
  DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS)
(define (DownKeyEventHandlerBase.jsetstatic_TOTAL_LISTENERS value) (set! DownKeyEventHandlerBase.jcell_TOTAL_LISTENERS value))

(define DownKeyEventHandlerBase.jcell_LISTENER_LABEL 'jnone)
(define (DownKeyEventHandlerBase.jstatic_LISTENER_LABEL)
  (when (eq? DownKeyEventHandlerBase.jcell_LISTENER_LABEL 'jnone) (set! DownKeyEventHandlerBase.jcell_LISTENER_LABEL " PlayerGameInput Listener: "))
  DownKeyEventHandlerBase.jcell_LISTENER_LABEL)
(define (DownKeyEventHandlerBase.jsetstatic_LISTENER_LABEL value) (set! DownKeyEventHandlerBase.jcell_LISTENER_LABEL value))

(define (DownKeyEventHandlerBase.jnew_0)
  (define this (new DownKeyEventHandlerBase% [jclass "DownKeyEventHandlerBase"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)



