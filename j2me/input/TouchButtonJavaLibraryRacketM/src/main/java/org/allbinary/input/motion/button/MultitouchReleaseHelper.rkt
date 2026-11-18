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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./ReleaseHelper.rkt")
(lazy-require ["./CancelTouchButtonInputFactory.rkt" (CancelTouchButtonInputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define MultitouchReleaseHelper%
  (class ReleaseHelper%
    (super-new)
    (define/override (jm_release_2 _touchButtonInput _deviceId)
    (let ([_cancelTouchButtonInput JR.null][_nextTouchButtonInput JR.null][_gameKeyEvent JR.null][_index JR.null])
      (let/ec jreturn
        (set! _cancelTouchButtonInput (send (CancelTouchButtonInputFactory.jm_getInstance_0) jm_getCancel_1 _touchButtonInput))
        (set! _nextTouchButtonInput JR.null)
        (set! _gameKeyEvent JR.null)
        (begin
            (set! _index (JR.i32 (- (JR.className (get-field f_currentlyPressedTouchButtonSingleton (get-field f_touchButtonRecognizer this))) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _nextTouchButtonInput (JR.className (get-field f_currentlyPressedTouchButtonSingleton (get-field f_touchButtonRecognizer this))))
            (when (eq? _cancelTouchButtonInput _nextTouchButtonInput)
                (begin
                (set! _gameKeyEvent (send _nextTouchButtonInput jm_getGameKeyEvent_0))
                (JR.className (get-field f_upGameKeyEventHandler (get-field f_touchButtonRecognizer this)))
                (JR.className (JR.className (get-field f_upGameKeyEventHandler (get-field f_touchButtonRecognizer this))))
                (JR.className (get-field f_currentlyPressedTouchButtonSingleton (get-field f_touchButtonRecognizer this))))))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (MultitouchReleaseHelper.jclassValue) MultitouchReleaseHelper%)

(define (MultitouchReleaseHelper.jnew_1 _touchButtonRecognizer)
  (define this (new MultitouchReleaseHelper% [jclass "MultitouchReleaseHelper"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



