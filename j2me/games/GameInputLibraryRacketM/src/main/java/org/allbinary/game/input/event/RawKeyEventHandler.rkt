#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define RawKeyEventHandler%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_eventListenerInterfaceList JR.null])
    (define/public (jm_removeAllListeners_0)
    (let ()
      (let/ec jreturn
        (set-field! f_eventListenerInterfaceList this (BasicArrayListD.jnew_0)))))
    (define/public (jm_addListeners_1 _vector)
    (let ([_eventListenerInterface JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _eventListenerInterface JR.null)
        (set! _size (send _vector jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _eventListenerInterface (send _vector jm_get_1 _index))
            (send this jm_addListener_1 _eventListenerInterface))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_addListenerSingleThreaded_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_eventListenerInterfaceList this) jm_contains_1 _eventListenerInterface))
            (begin
            (send (get-field f_eventListenerInterfaceList this) jm_add_1 _eventListenerInterface))))))
    (define/public (jm_addListener_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_eventListenerInterfaceList this) jm_contains_1 _eventListenerInterface))
            (begin
            (send (get-field f_eventListenerInterfaceList this) jm_add_1 _eventListenerInterface))))))
    (define/public (jm_removeListenerSingleThreaded_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_eventListenerInterfaceList this) jm_remove_1 _eventListenerInterface))))
    (define/public (jm_removeListener_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_eventListenerInterfaceList this) jm_remove_1 _eventListenerInterface))))
    (define/public (jm_fireEvent_3 _keyCode _deviceId _repeated)
    (let ([_eventListenerInterface JR.null][_index JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _eventListenerInterface JR.null)
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (< _index (send (get-field f_eventListenerInterfaceList this) jm_size_0))
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (set! _commonStrings (CommonStrings.jm_getInstance_0))
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_FIRE_EVENT (EventStrings.jm_getInstance_0)) _e))])
                (set! _eventListenerInterface (send (get-field f_eventListenerInterfaceList this) jm_get_1 _index))
                (send this jm_process_4 _keyCode _deviceId _repeated _eventListenerInterface))
            (set! _index (JR.i32 (+ _index 1)))) (jloop)))))))
    (define/public (jm_process_4 _keyCode _deviceId _repeated _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send _eventListenerInterface jm_onEventRaw_3 _keyCode _deviceId _repeated))))
    (define/public (jm_getEventListenerInterfaceListP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_eventListenerInterfaceList this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_eventListenerInterface JR.null][_index JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (RawKeyEventHandler.jstatic_TOTAL_LISTENERS))
        (send _stringBuffer jm_appendint_1 (send (get-field f_eventListenerInterfaceList this) jm_size_0))
        (set! _eventListenerInterface JR.null)
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (< _index (send (get-field f_eventListenerInterfaceList this) jm_size_0))
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (set! _commonStrings (CommonStrings.jm_getInstance_0))
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_TOSTRING _commonStrings) _e))])
                (set! _eventListenerInterface (send (get-field f_eventListenerInterfaceList this) jm_get_1 _index))
                (send _stringBuffer jm_append_1 (RawKeyEventHandler.jstatic_LISTENER_LABEL))
                (send _stringBuffer jm_append_1 (send _eventListenerInterface jm_toString_0)))
            (set! _index (JR.i32 (+ _index 1)))) (jloop))))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (RawKeyEventHandler.jclassValue) RawKeyEventHandler%)

(define RawKeyEventHandler.jcell_instance 'jnone)
(define (RawKeyEventHandler.jstatic_instance)
  (when (eq? RawKeyEventHandler.jcell_instance 'jnone) (set! RawKeyEventHandler.jcell_instance (RawKeyEventHandler.jnew_0)))
  RawKeyEventHandler.jcell_instance)
(define (RawKeyEventHandler.jsetstatic_instance value) (set! RawKeyEventHandler.jcell_instance value))

(define RawKeyEventHandler.jcell_TOTAL_LISTENERS 'jnone)
(define (RawKeyEventHandler.jstatic_TOTAL_LISTENERS)
  (when (eq? RawKeyEventHandler.jcell_TOTAL_LISTENERS 'jnone) (set! RawKeyEventHandler.jcell_TOTAL_LISTENERS "Total Listeners: "))
  RawKeyEventHandler.jcell_TOTAL_LISTENERS)
(define (RawKeyEventHandler.jsetstatic_TOTAL_LISTENERS value) (set! RawKeyEventHandler.jcell_TOTAL_LISTENERS value))

(define RawKeyEventHandler.jcell_LISTENER_LABEL 'jnone)
(define (RawKeyEventHandler.jstatic_LISTENER_LABEL)
  (when (eq? RawKeyEventHandler.jcell_LISTENER_LABEL 'jnone) (set! RawKeyEventHandler.jcell_LISTENER_LABEL " Listener: "))
  RawKeyEventHandler.jcell_LISTENER_LABEL)
(define (RawKeyEventHandler.jsetstatic_LISTENER_LABEL value) (set! RawKeyEventHandler.jcell_LISTENER_LABEL value))

(define (RawKeyEventHandler.jnew_0)
  (define this (new RawKeyEventHandler% [jclass "RawKeyEventHandler"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_eventListenerInterfaceList this (BasicArrayListD.jnew_0))))
  this)

(define (RawKeyEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RawKeyEventHandler.jstatic_instance)))))



