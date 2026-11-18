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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define CompleteMotionGestureInputEventHandler%
  (class BasicEventHandler%
    (super-new)
    (field [f_list JR.null])
    (define/public (jm_addListener_1 _completeMotionGestureInputEventListener)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_list this) jm_contains_1 _completeMotionGestureInputEventListener))
            (begin
            (send (get-field f_list this) jm_add_1 _completeMotionGestureInputEventListener))))))
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
    (let ([_completeMotionGestureInputEventListener JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (send (get-field f_list this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (JR.className (get-field f_logUtil this)))])
                (set! _completeMotionGestureInputEventListener (vector-ref (get-field f_objectArray (get-field f_list this)) _index))
                (send _completeMotionGestureInputEventListener jm_onCompleteMotionGestureInputEvent_1 _eventObject))) (jloop)))))
        (super jm_fireEvent_1 _eventObject))))
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_completeMotionGestureInputEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _completeMotionGestureInputEventListenerInterface _eventListenerInterface)
        (send _completeMotionGestureInputEventListenerInterface jm_onCompleteMotionGestureInputEvent_1 _eventObject))))))
(define (CompleteMotionGestureInputEventHandler.jclassValue) CompleteMotionGestureInputEventHandler%)

(define CompleteMotionGestureInputEventHandler.jcell_SINGLETON 'jnone)
(define (CompleteMotionGestureInputEventHandler.jstatic_SINGLETON)
  (when (eq? CompleteMotionGestureInputEventHandler.jcell_SINGLETON 'jnone) (set! CompleteMotionGestureInputEventHandler.jcell_SINGLETON (CompleteMotionGestureInputEventHandler.jnew_0)))
  CompleteMotionGestureInputEventHandler.jcell_SINGLETON)
(define (CompleteMotionGestureInputEventHandler.jsetstatic_SINGLETON value) (set! CompleteMotionGestureInputEventHandler.jcell_SINGLETON value))

(define (CompleteMotionGestureInputEventHandler.jnew_0)
  (define this (new CompleteMotionGestureInputEventHandler% [jclass "CompleteMotionGestureInputEventHandler"]))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (CompleteMotionGestureInputEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CompleteMotionGestureInputEventHandler.jstatic_SINGLETON)))))



