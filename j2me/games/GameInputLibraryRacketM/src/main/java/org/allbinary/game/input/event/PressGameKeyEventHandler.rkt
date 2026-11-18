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
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define PressGameKeyEventHandler%
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
                (send _playerGameInput jm_onPressGameKeyEvent_1 _eventObject))) (jloop)))))
        (super jm_fireEvent_1 _eventObject))))
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_pressGameKeyEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _pressGameKeyEventListenerInterface _eventListenerInterface)
        (send _pressGameKeyEventListenerInterface jm_onPressGameKeyEvent_1 _eventObject))))))
(define (PressGameKeyEventHandler.jclassValue) PressGameKeyEventHandler%)

(define PressGameKeyEventHandler.jcell_instance 'jnone)
(define (PressGameKeyEventHandler.jstatic_instance)
  (when (eq? PressGameKeyEventHandler.jcell_instance 'jnone) (set! PressGameKeyEventHandler.jcell_instance (PressGameKeyEventHandler.jnew_0)))
  PressGameKeyEventHandler.jcell_instance)
(define (PressGameKeyEventHandler.jsetstatic_instance value) (set! PressGameKeyEventHandler.jcell_instance value))

(define (PressGameKeyEventHandler.jnew_0)
  (define this (new PressGameKeyEventHandler% [jclass "PressGameKeyEventHandler"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PressGameKeyEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PressGameKeyEventHandler.jstatic_instance)))))



