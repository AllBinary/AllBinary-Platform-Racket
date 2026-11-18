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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/input/PlayerGameInput.rkt"
  "../../../../../org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define BasicMenuInputProcessor%
  (class PlayerGameInput%
    (super-new)
    (field [f_motionGestureEventList JR.null])
    (field [f_canvas JR.null])
    (define/public (jm_onMotionGestureEvent_1 _motionGestureEvent)
    (let ()
      (let/ec jreturn
        (send (get-field f_motionGestureEventList this) jm_add_1 _motionGestureEvent))))
    (define/public (jm_onScrolledMotionGestureEvent_1 _motionGestureEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setCanvas_1 _canvas)
    (let ()
      (let/ec jreturn
        (set-field! f_canvas this _canvas))))
    (define/public (jm_getCanvas_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_canvas this)))))
    (define/public (jm_processInputList_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))))
(define (BasicMenuInputProcessor.jclassValue) BasicMenuInputProcessor%)

(define (BasicMenuInputProcessor.jnew_3 _gameKeyEventList _playerInputId _gameCanvas)
  (define this (new BasicMenuInputProcessor% [jclass "BasicMenuInputProcessor"]))
    (set-field! f_motionGestureEventList this (BasicArrayListD.jnew_0))
    (set-field! f_canvas this (NullCanvas.jstatic_NULL_CANVAS))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_canvas this _gameCanvas)))
  this)



