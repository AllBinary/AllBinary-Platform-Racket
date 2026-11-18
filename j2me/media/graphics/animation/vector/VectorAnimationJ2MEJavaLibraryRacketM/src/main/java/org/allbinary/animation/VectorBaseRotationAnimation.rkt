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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./RotationAnimation.rkt"
  "./VectorAnimationInterface.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define VectorBaseRotationAnimation%
  (class RotationAnimation%
    (super-new)
    (field [f_currentPoints JR.null])
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSize_0)))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (get-field f_circularIndexUtil this))))))
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_circularIndexUtil this)))))
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_circularIndexUtil this)))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_circularIndexUtil this)))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-length (get-field f_currentPoints this))))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ([_nextPointX JR.null][_nextPointY JR.null][_nextPoint JR.null][_point JR.null][_currentPointsFrame JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (JR.className (get-field f_basicSetColorUtil this))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _nextPointX 0)
            (set! _nextPointY 0)
            (set! _nextPoint JR.null)
            (set! _point JR.null)
            (set! _currentPointsFrame (vector-ref (get-field f_currentPoints this) (JR.className (get-field f_circularIndexUtil this))))
            (set! _size (vector-length _currentPointsFrame))
            (set! _index (JR.i32 (- _size 2)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                    (let/ec jcontinue
                (set! _nextPoint (vector-ref _currentPointsFrame _index))
                (set! _point (vector-ref _currentPointsFrame (JR.i32 (+ _index 1))))
                (set! _nextPointX (vector-ref _nextPoint 0))
                (set! _nextPointY (vector-ref _nextPoint 1))
                (if (not (= _nextPointX 1000))
                    (begin
                    (send _graphics jm_drawLine_4 (JR.i32 (+ (vector-ref _point 0) _x)) (JR.i32 (+ (vector-ref _point 1) _y)) (JR.i32 (+ _nextPointX _x)) (JR.i32 (+ _nextPointY _y))))
                    (begin
                    (set! _index (JR.i32 (- _index 1)))))) (jloop))))))))
    (define/public (jm_getPoints_1 _frame)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_currentPoints this) _frame)))))
    (define/public (jm_setPoints_1 _currentPoints)
    (let ()
      (let/ec jreturn
        (set-field! f_currentPoints this _currentPoints)
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (vector-length (get-field f_currentPoints this)))))))
    (define/override (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getBasicColorP_0)))))
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (super jm_setBasicColorP_1 _basicColor))))))
(define (VectorBaseRotationAnimation.jclassValue) VectorBaseRotationAnimation%)

(define (VectorBaseRotationAnimation.jnew_4 _angleInfo _currentPoints _basicColor _animationBehavior)
  (define this (new VectorBaseRotationAnimation% [jclass "VectorBaseRotationAnimation"]))
    (set-field! f_currentPoints this (get-field f_NULL_INT_ARRAY_ARRAY_ARRAY (NullUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setPoints_1 _currentPoints)
        (send this jm_setBasicColorP_1 _basicColor)))
  this)



