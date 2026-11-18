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
;; package org.allbinary.game.input.motion.action

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define GameKeyCompleteMotionGestureInputEventFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_eventList JR.null])
    (define/public (jm_add_1 _gameKeyCompleteMotionGestureInputEvent)
    (let ()
      (let/ec jreturn
        (send (get-field f_eventList this) jm_add_1 _gameKeyCompleteMotionGestureInputEvent))))
    (define/public (jm_updateAll_0)
    (let ([_gameKeyCompleteMotionGestureInputEvent JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_appendint_1 (send (get-field f_eventList this) jm_size_0)) jm_toString_0) this "updateAll")
        (begin
            (set! _index (JR.i32 (- (send (get-field f_eventList this) jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _gameKeyCompleteMotionGestureInputEvent (vector-ref (get-field f_objectArray (get-field f_eventList this)) _index))
            (send _gameKeyCompleteMotionGestureInputEvent jm_update_0))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (GameKeyCompleteMotionGestureInputEventFactory.jclassValue) GameKeyCompleteMotionGestureInputEventFactory%)

(define GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON 'jnone)
(define (GameKeyCompleteMotionGestureInputEventFactory.jstatic_SINGLETON)
  (when (eq? GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON 'jnone) (set! GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON (GameKeyCompleteMotionGestureInputEventFactory.jnew_0)))
  GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON)
(define (GameKeyCompleteMotionGestureInputEventFactory.jsetstatic_SINGLETON value) (set! GameKeyCompleteMotionGestureInputEventFactory.jcell_SINGLETON value))

(define (GameKeyCompleteMotionGestureInputEventFactory.jnew_0)
  (define this (new GameKeyCompleteMotionGestureInputEventFactory% [jclass "GameKeyCompleteMotionGestureInputEventFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_eventList this (BasicArrayListD.jnew_0))
  this)

(define (GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameKeyCompleteMotionGestureInputEventFactory.jstatic_SINGLETON)))))



