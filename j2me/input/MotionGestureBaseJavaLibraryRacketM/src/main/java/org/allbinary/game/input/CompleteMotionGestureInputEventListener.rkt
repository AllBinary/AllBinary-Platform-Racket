#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CompleteMotionGestureInputEventListenerInterface.rkt")
(provide (all-defined-out))

(define CompleteMotionGestureInputEventListener%
  (class JObject%
    (super-new)
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onCompleteMotionGestureInputEvent_1 _completeMotionGestureInputEvent)
    (let ()
      (let/ec jreturn (void))))))
(define (CompleteMotionGestureInputEventListener.jclassValue) CompleteMotionGestureInputEventListener%)

(define (CompleteMotionGestureInputEventListener.jnew_0)
  (define this (new CompleteMotionGestureInputEventListener% [jclass "CompleteMotionGestureInputEventListener"]))
  this)



