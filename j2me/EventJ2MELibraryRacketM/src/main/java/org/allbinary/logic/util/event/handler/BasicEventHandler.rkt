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
;; package org.allbinary.logic.util.event.handler

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "./BasicEventHandlerInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define BasicEventHandler%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_eventStrings JR.null])
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
            (send this jm_addListenerInterface_1 _eventListenerInterface))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_removeListeners_1 _vector)
    (let ([_eventListenerInterface JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _eventListenerInterface JR.null)
        (set! _size (send _vector jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _eventListenerInterface (send _vector jm_get_1 _index))
            (send this jm_removeListener_1 _eventListenerInterface))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_addListenerSingleThreaded_1 _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (when (not (send (get-field f_eventListenerInterfaceList this) jm_contains_1 _eventListenerInterface))
            (begin
            (send (get-field f_eventListenerInterfaceList this) jm_add_1 _eventListenerInterface))))))
    (define/public (jm_addListenerInterface_1 _eventListenerInterface)
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
    (define/public (jm_fireEvent_1 _eventObject)
    (let ([_eventListenerInterface JR.null][_index JR.null])
      (let/ec jreturn
        (set! _eventListenerInterface JR.null)
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (< _index (send (get-field f_eventListenerInterfaceList this) jm_size_0))
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_FIRE_EVENT (get-field f_eventStrings this)) _e))])
                (set! _eventListenerInterface (send (get-field f_eventListenerInterfaceList this) jm_get_1 _index))
                (send this jm_process_2 _eventObject _eventListenerInterface))
            (set! _index (JR.i32 (+ _index 1)))) (jloop)))))))
    (define/public (jm_process_2 _eventObject _eventListenerInterface)
    (let ()
      (let/ec jreturn
        (send _eventListenerInterface jm_onEvent_1 _eventObject))))
    (define/public (jm_getEventListenerInterfaceListP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_eventListenerInterfaceList this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_eventListenerInterface JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_TOTAL_LISTENERS (get-field f_eventStrings this)))
        (send _stringBuffer jm_appendint_1 (send (get-field f_eventListenerInterfaceList this) jm_size_0))
        (set! _eventListenerInterface JR.null)
        (set! _index 0)
        (let/ec jbreak (let jloop () (when (< _index (send (get-field f_eventListenerInterfaceList this) jm_size_0))
                (let/ec jcontinue
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_TOSTRING (get-field f_commonStrings this)) _e))])
                (set! _eventListenerInterface (send (get-field f_eventListenerInterfaceList this) jm_get_1 _index))
                (send _stringBuffer jm_append_1 (get-field f_LISTENER_LABEL (get-field f_eventStrings this)))
                (send _stringBuffer jm_append_1 (send _eventListenerInterface jm_toString_0)))
            (set! _index (JR.i32 (+ _index 1)))) (jloop))))
        (jreturn (send _stringBuffer jm_toString_0)))))))

(define (BasicEventHandler.jnew_0)
  (define this (new BasicEventHandler% [jclass "BasicEventHandler"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_eventStrings this (EventStrings.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_eventListenerInterfaceList this (BasicArrayListD.jnew_0))))
  this)



