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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["./GameKeyEvent.rkt" (GameKeyEvent.jm_createEvent_3)])
(provide (all-defined-out))

(define GameKeyEventFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_TOUCH_BUTTON_SOURCE_ID 0])
    (field [f_MOTION_GESTURE_SOURCE_ID 0])
    (field [f_MAX_SOURCES 0])
    (field [f_ARRAY JR.null])
    (define/public (jm_init_0)
    (let ([_nullUtil JR.null][_size JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _nullUtil (NullUtil.jm_getInstance_0))
        (set! _size (get-field f_MAX (InputFactory.jm_getInstance_0)))
        (begin
            (set! _index (get-field f_MAX_SOURCES this))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (begin
                (set! _index2 _size)
                (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index2 1))]) (set! _index2 jvalue) jvalue) 0)
                    (let/ec jcontinue
                (vector-set! (vector-ref (get-field f_ARRAY this) _index) _index2 (GameKeyEvent.jm_createEvent_3 (get-field f_NULL_OBJECT _nullUtil) _index _index2))) (jloop)))))) (jloop))))))))
    (define/public (jm_getInstanceForKey_2 _anyType _key)
    (let ([_gameKeyEvent JR.null])
      (let/ec jreturn
        (set! _gameKeyEvent (vector-ref (vector-ref (get-field f_ARRAY this) (send _anyType jm_getSourceId_0)) _key))
        (jreturn _gameKeyEvent))))
    (define/public (jm_getInstanceForInput_2 _anyType _input)
    (let ([_gameKeyEvent JR.null])
      (let/ec jreturn
        (set! _gameKeyEvent (vector-ref (vector-ref (get-field f_ARRAY this) (send _anyType jm_getSourceId_0)) (send _input jm_getId_0)))
        (jreturn _gameKeyEvent))))))
(define (GameKeyEventFactory.jclassValue) GameKeyEventFactory%)

(define GameKeyEventFactory.jcell_instance 'jnone)
(define (GameKeyEventFactory.jstatic_instance)
  (when (eq? GameKeyEventFactory.jcell_instance 'jnone) (set! GameKeyEventFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  GameKeyEventFactory.jcell_instance)
(define (GameKeyEventFactory.jsetstatic_instance value) (set! GameKeyEventFactory.jcell_instance value))

(define (GameKeyEventFactory.jnew_0)
  (define this (new GameKeyEventFactory% [jclass "GameKeyEventFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_TOUCH_BUTTON_SOURCE_ID this 2)
    (set-field! f_MOTION_GESTURE_SOURCE_ID this 3)
    (set-field! f_MAX_SOURCES this 4)
    (set-field! f_ARRAY this (JR.newArray JR.null (get-field f_MAX_SOURCES this) (get-field f_MAX (InputFactory.jm_getInstance_0))))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameKeyEventFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (GameKeyEventFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! GameKeyEventFactory.jcell_instance (GameKeyEventFactory.jnew_0))))
        (jreturn (GameKeyEventFactory.jstatic_instance)))))



