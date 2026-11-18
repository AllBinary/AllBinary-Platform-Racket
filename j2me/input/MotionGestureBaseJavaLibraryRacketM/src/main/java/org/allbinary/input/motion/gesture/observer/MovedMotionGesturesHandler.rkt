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
;; package org.allbinary.input.motion.gesture.observer

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define MovedMotionGesturesHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_baseMotionGestureEventListener JR.null])
      (let/ec jreturn
        (set! _baseMotionGestureEventListener _eventListenerInterface)
        (send _baseMotionGestureEventListener jm_onMotionGestureEvent_1 _eventObject))))))
(define (MovedMotionGesturesHandler.jclassValue) MovedMotionGesturesHandler%)

(define MovedMotionGesturesHandler.jcell_SINGLETON 'jnone)
(define (MovedMotionGesturesHandler.jstatic_SINGLETON)
  (when (eq? MovedMotionGesturesHandler.jcell_SINGLETON 'jnone) (set! MovedMotionGesturesHandler.jcell_SINGLETON (MovedMotionGesturesHandler.jnew_0)))
  MovedMotionGesturesHandler.jcell_SINGLETON)
(define (MovedMotionGesturesHandler.jsetstatic_SINGLETON value) (set! MovedMotionGesturesHandler.jcell_SINGLETON value))

(define (MovedMotionGesturesHandler.jnew_0)
  (define this (new MovedMotionGesturesHandler% [jclass "MovedMotionGesturesHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (MovedMotionGesturesHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MovedMotionGesturesHandler.jstatic_SINGLETON)))))



