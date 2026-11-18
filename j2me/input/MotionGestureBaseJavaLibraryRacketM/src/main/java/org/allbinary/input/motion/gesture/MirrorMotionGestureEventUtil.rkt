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
;; package org.allbinary.input.motion.gesture

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.rkt" (MotionEventCircularPool.jm_createPool_1)])
(provide (all-defined-out))

(define MirrorMotionGestureEventUtil%
  (class JObject%
    (super-new)
    (field [f_motionEventCircularPool JR.null])
    (define/public (jm_mirrorVerticle_2 _motionGestureEvent _halfWidth)
    (let ([_event JR.null][_previousNewX JR.null][_currentNewX JR.null][_pointFactory JR.null][_mirroredPreviousPoint JR.null][_mirroredCurrentPoint JR.null])
      (let/ec jreturn
        (set! _event (send (get-field f_motionEventCircularPool this) jm_getInstance_1 (send _motionGestureEvent jm_getMotionGesture_0)))
        (set! _previousNewX (send this jm_getNewX_2 (JR.className (send _motionGestureEvent jm_getPreviousPoint_0)) _halfWidth))
        (set! _currentNewX (send this jm_getNewX_2 (JR.className (send _motionGestureEvent jm_getCurrentPoint_0)) _halfWidth))
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _mirroredPreviousPoint (send _pointFactory jm_createXY_2 _previousNewX (JR.className (send _motionGestureEvent jm_getPreviousPoint_0))))
        (set! _mirroredCurrentPoint (send _pointFactory jm_createXY_2 _currentNewX (JR.className (send _motionGestureEvent jm_getCurrentPoint_0))))
        (send _event jm_setPreviousPoint_1 _mirroredPreviousPoint)
        (send _event jm_setCurrentPoint_1 _mirroredCurrentPoint)
        (jreturn _event))))
    (define/public (jm_getNewX_2 _x _halfWidth)
    (let ([_newX JR.null])
      (let/ec jreturn
        (set! _newX 0)
        (if (> _x _halfWidth)
            (begin
            (set! _newX (JR.i32 (- _halfWidth (JR.i32 (- _x _halfWidth))))))
            (begin
            (set! _newX (JR.i32 (+ _halfWidth (JR.i32 (- _halfWidth _x)))))))
        (jreturn _newX))))))
(define (MirrorMotionGestureEventUtil.jclassValue) MirrorMotionGestureEventUtil%)

(define MirrorMotionGestureEventUtil.jcell_instance 'jnone)
(define (MirrorMotionGestureEventUtil.jstatic_instance)
  (when (eq? MirrorMotionGestureEventUtil.jcell_instance 'jnone) (set! MirrorMotionGestureEventUtil.jcell_instance (MirrorMotionGestureEventUtil.jnew_0)))
  MirrorMotionGestureEventUtil.jcell_instance)
(define (MirrorMotionGestureEventUtil.jsetstatic_instance value) (set! MirrorMotionGestureEventUtil.jcell_instance value))

(define (MirrorMotionGestureEventUtil.jnew_0)
  (define this (new MirrorMotionGestureEventUtil% [jclass "MirrorMotionGestureEventUtil"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_motionEventCircularPool this (MotionEventCircularPool.jm_createPool_1 (Integer.jstatic_MAX_VALUE)))))
  this)

(define (MirrorMotionGestureEventUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MirrorMotionGestureEventUtil.jstatic_instance)))))



