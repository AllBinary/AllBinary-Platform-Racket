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
;; package org.allbinary.input.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt"
  "../../../../java/lang/Thread.rkt")
(lazy-require ["../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["./VirtualKeyboardEvent.rkt" (VirtualKeyboardEvent.jnew_1)])
(provide (all-defined-out))

(define VirtualKeyboardEventHandler%
  (class BasicEventHandler%
    (super-new)
    (field [f_SHOW_EVENT JR.null])
    (field [f_HIDE_EVENT JR.null])
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_virtualKeyboardEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _virtualKeyboardEventListenerInterface _eventListenerInterface)
        (send _virtualKeyboardEventListenerInterface jm_onVirtualKeyboardEvent_1 _eventObject))))
    (define/public (jm_open_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (Thread.jm_sleep_1 120)
            (send this jm_fireEvent_1 (get-field f_SHOW_EVENT this))))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (Thread.jm_sleep_1 120)
            (send this jm_fireEvent_1 (get-field f_HIDE_EVENT this))))))))
(define (VirtualKeyboardEventHandler.jclassValue) VirtualKeyboardEventHandler%)

(define VirtualKeyboardEventHandler.jcell_gameKeyEventHandler 'jnone)
(define (VirtualKeyboardEventHandler.jstatic_gameKeyEventHandler)
  (when (eq? VirtualKeyboardEventHandler.jcell_gameKeyEventHandler 'jnone) (set! VirtualKeyboardEventHandler.jcell_gameKeyEventHandler (VirtualKeyboardEventHandler.jnew_0)))
  VirtualKeyboardEventHandler.jcell_gameKeyEventHandler)
(define (VirtualKeyboardEventHandler.jsetstatic_gameKeyEventHandler value) (set! VirtualKeyboardEventHandler.jcell_gameKeyEventHandler value))

(define (VirtualKeyboardEventHandler.jnew_0)
  (define this (new VirtualKeyboardEventHandler% [jclass "VirtualKeyboardEventHandler"]))
    (set-field! f_SHOW_EVENT this (VirtualKeyboardEvent.jnew_1 (get-field f_TRUE (BooleanFactory.jm_getInstance_0))))
    (set-field! f_HIDE_EVENT this (VirtualKeyboardEvent.jnew_1 (get-field f_FALSE (BooleanFactory.jm_getInstance_0))))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (VirtualKeyboardEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (VirtualKeyboardEventHandler.jstatic_gameKeyEventHandler)))))



