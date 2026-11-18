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
  "./IndexedAnimation.rkt"
  "./VectorAnimationInterface.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define VectorAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_currentPoints JR.null])
    (field [f_circularIndexUtil JR.null])
    (define/override (jm_setBasicColorP_1 _basicColor)
    (let ([_changed JR.null])
      (let/ec jreturn
        (set! _changed #f)
        (when (or (JR.null? (send this jm_getBasicColorP_0)) (not (= (send (send this jm_getBasicColorP_0) jm_intValue_0) (send _basicColor jm_intValue_0))))
            (begin
            (set! _changed #t)))
        (super jm_setBasicColorP_1 _basicColor)
        (when _changed
            (begin
            (send this jm_updateModifiers_0))))))
    (define/override (jm_changeBasicColor_1 _basicColor)
    (let ([_changed JR.null])
      (let/ec jreturn
        (set! _changed #f)
        (when (or (JR.null? (send this jm_getChangeBasicColor_0)) (not (= (JR.className (send this jm_getChangeBasicColor_0)) (send _basicColor jm_intValue_0))))
            (begin
            (set! _changed #t)))
        (super jm_changeBasicColor_1 _basicColor)
        (when _changed
            (begin
            (send this jm_updateModifiers_0))))))
    (define/override (jm_setAlpha_1 _alpha)
    (let ([_changed JR.null])
      (let/ec jreturn
        (set! _changed #f)
        (when (not (eq? (get-field f_alphaP this) _alpha))
            (begin
            (set! _changed #t)))
        (super jm_setAlpha_1 _alpha)
        (when _changed
            (begin
            (send this jm_updateModifiers_0))))))
    (define/override (jm_setScale_2 _scaleX _scaleY)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_setMaxScale_2 _maxScaleX _maxScaleY)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_updateModifiers_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSize_0)))))
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
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_next_0))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_previous_0))))
    (define/public (jm_paintVectors_3 _graphics _x _y)
    (let ([_nextPointX JR.null][_nextPointY JR.null][_nextPoint JR.null][_point JR.null][_currentPointsFrame JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _nextPointX 0)
            (set! _nextPointY 0)
            (set! _nextPoint JR.null)
            (set! _point JR.null)
            (set! _currentPointsFrame (vector-ref (get-field f_currentPoints this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
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
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_basicSetColorUtil this))
        (send this jm_paintVectors_3 _graphics _x _y))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_circularIndexUtil this) jm_getIndex_0)))))
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_setIndex_1 _index))))
    (define/public (jm_getPoints_1 _frame)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_currentPoints this) _frame)))))
    (define/public (jm_setPoints_1 _currentPoints)
    (let ()
      (let/ec jreturn
        (set-field! f_currentPoints this _currentPoints)
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (vector-length _currentPoints))))))
    (define/override (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getBasicColorP_0)))))))
(define (VectorAnimation.jclassValue) VectorAnimation%)

(define (VectorAnimation.jnew_3 _currentPoints _basicColor _animationBehavior)
  (define this (new VectorAnimation% [jclass "VectorAnimation"]))
    (set-field! f_currentPoints this (get-field f_NULL_INT_ARRAY_ARRAY_ARRAY (NullUtil.jm_getInstance_0)))
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 0))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setPoints_1 _currentPoints)
        (send this jm_setBasicColorP_1 _basicColor)))
  this)

(define (VectorAnimation.jm_createVectorAnimation_3 _currentPoints2 _basicColor _animationBehavior)
    (let ([_currentPoints JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _currentPoints (JR.newArray 0 1 (vector-length _currentPoints2) 2))
        (set! _size (vector-length _currentPoints2))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! (vector-ref (vector-ref _currentPoints 0) _index) 0 (vector-ref (vector-ref _currentPoints2 _index) 0))
            (vector-set! (vector-ref (vector-ref _currentPoints 0) _index) 1 (vector-ref (vector-ref _currentPoints2 _index) 1)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (VectorAnimation.jnew_3 _currentPoints _basicColor _animationBehavior)))))



