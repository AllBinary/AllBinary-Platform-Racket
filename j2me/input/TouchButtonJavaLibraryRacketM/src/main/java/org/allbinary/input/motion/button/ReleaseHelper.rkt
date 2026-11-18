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
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ReleaseHelper%
  (class JObject%
    (super-new)
    (field [f_touchButtonRecognizer JR.null])
    (define/public (jm_release_2 _touchButtonInput _deviceId)
    (let ([_nextTouchButtonInput JR.null][_gameKeyEvent JR.null][_index JR.null])
      (let/ec jreturn
        (set! _nextTouchButtonInput JR.null)
        (set! _gameKeyEvent JR.null)
        (begin
            (set! _index (JR.i32 (- (JR.className (get-field f_currentlyPressedTouchButtonSingleton (get-field f_touchButtonRecognizer this))) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _nextTouchButtonInput (JR.className (get-field f_currentlyPressedTouchButtonSingleton (get-field f_touchButtonRecognizer this))))
            (set! _gameKeyEvent (send _nextTouchButtonInput jm_getGameKeyEvent_0))
            (JR.className (get-field f_upGameKeyEventHandler (get-field f_touchButtonRecognizer this)))
            (JR.className (JR.className (get-field f_upGameKeyEventHandler (get-field f_touchButtonRecognizer this))))
            (JR.className (get-field f_currentlyPressedTouchButtonSingleton (get-field f_touchButtonRecognizer this))))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (ReleaseHelper.jclassValue) ReleaseHelper%)

(define (ReleaseHelper.jnew_1 _touchButtonRecognizer)
  (define this (new ReleaseHelper% [jclass "ReleaseHelper"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_touchButtonRecognizer this _touchButtonRecognizer)))
  this)



