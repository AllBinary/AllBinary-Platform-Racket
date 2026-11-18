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
  "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define DownGameKeyEventHandlerBase%
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
    (define/override (jm_fireEvent_1 _eventObject)
    (let ([_playerGameInput JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_list this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _playerGameInput (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
                (send _playerGameInput jm_onDownGameKeyEvent_1 _eventObject))) (jloop)))))
        (super jm_fireEvent_1 _eventObject))))
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_downGameKeyEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _downGameKeyEventListenerInterface _eventListenerInterface)
        (send _downGameKeyEventListenerInterface jm_onDownGameKeyEvent_1 _eventObject))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_eventListenerInterface JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (super jm_toString_0))
        (send _stringBuffer jm_append_1 (DownGameKeyEventHandlerBase.jstatic_TOTAL_LISTENERS))
        (send _stringBuffer jm_appendint_1 (send (get-field f_list this) jm_size_0))
        (set! _eventListenerInterface JR.null)
        (set! _size (send (get-field f_list this) jm_size_0))
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _eventListenerInterface (send (get-field f_list this) jm_get_1 _index))
                (send _stringBuffer jm_append_1 (DownGameKeyEventHandlerBase.jstatic_LISTENER_LABEL))
                (send _stringBuffer jm_append_1 (send _eventListenerInterface jm_toString_0)))
            (set! _index (JR.i32 (+ _index 1)))) (jloop))))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (DownGameKeyEventHandlerBase.jclassValue) DownGameKeyEventHandlerBase%)

(define DownGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS 'jnone)
(define (DownGameKeyEventHandlerBase.jstatic_TOTAL_LISTENERS)
  (when (eq? DownGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS 'jnone) (set! DownGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS " Total PlayerGameInput Listeners: "))
  DownGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS)
(define (DownGameKeyEventHandlerBase.jsetstatic_TOTAL_LISTENERS value) (set! DownGameKeyEventHandlerBase.jcell_TOTAL_LISTENERS value))

(define DownGameKeyEventHandlerBase.jcell_LISTENER_LABEL 'jnone)
(define (DownGameKeyEventHandlerBase.jstatic_LISTENER_LABEL)
  (when (eq? DownGameKeyEventHandlerBase.jcell_LISTENER_LABEL 'jnone) (set! DownGameKeyEventHandlerBase.jcell_LISTENER_LABEL " PlayerGameInput Listener: "))
  DownGameKeyEventHandlerBase.jcell_LISTENER_LABEL)
(define (DownGameKeyEventHandlerBase.jsetstatic_LISTENER_LABEL value) (set! DownGameKeyEventHandlerBase.jcell_LISTENER_LABEL value))

(define (DownGameKeyEventHandlerBase.jnew_0)
  (define this (new DownGameKeyEventHandlerBase% [jclass "DownGameKeyEventHandlerBase"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)



