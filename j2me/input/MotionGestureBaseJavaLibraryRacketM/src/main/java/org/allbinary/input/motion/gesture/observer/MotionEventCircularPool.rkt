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
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool.rkt" (AllBinaryEventCircularPool.jnew_1)])
(lazy-require ["./MotionEventFactory.rkt" (MotionEventFactory.jnew_2)])
(provide (all-defined-out))

(define MotionEventCircularPool%
  (class JObject%
    (super-new)
    (field [f_MIN 0])
    (field [f_eventPool JR.null])
    (define/public (jm_getInstance_1 _motionGestureInput)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_eventPool this) jm_getInstance_1 (JR.i32 (- (send _motionGestureInput jm_getId_0) (get-field f_MIN this))))))))))
(define (MotionEventCircularPool.jclassValue) MotionEventCircularPool%)

(define (MotionEventCircularPool.jnew_1 _id)
  (define this (new MotionEventCircularPool% [jclass "MotionEventCircularPool"]))
    (set-field! f_MIN this (JR.className (get-field f_LAST_MOTION (TouchMotionGestureFactory.jm_getInstance_0))))
    (set-field! f_eventPool this (AllBinaryEventCircularPool.jnew_1 (JR.i32 (- (JR.i32 (- (get-field f_MAX (InputFactory.jm_getInstance_0)) 1)) (get-field f_MIN this)))))
    (let ()
      (let/ec jreturn
        (send (get-field f_eventPool this) jm_initAllBinaryEventCircularPool_1 (MotionEventFactory.jnew_2 (get-field f_eventPool this) _id))))
  this)

(define (MotionEventCircularPool.jm_createPool_1 _id)
    (let ()
      (let/ec jreturn
        (jreturn (MotionEventCircularPool.jnew_1 _id)))))



