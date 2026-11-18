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
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define VectorAnimationUtil%
  (class JObject%
    (super-new)
    (define/public (jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 _vector _pointsPerFrame)
    (let ([_size JR.null][_points JR.null][_nextBasicArrayList JR.null][_framePoints JR.null][_pointIndex JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send _vector jm_size_0))
        (set! _points (JR.newArray 0 _size _pointsPerFrame 2))
        (set! _nextBasicArrayList JR.null)
        (set! _framePoints JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _nextBasicArrayList (vector-ref (get-field f_objectArray _vector) _index))
            (set! _framePoints (send this jm_toFrameArrayFromPointBasicArrayList_1 _nextBasicArrayList))
            (begin
                (set! _pointIndex 0)
                (let/ec jbreak (let jloop () (when (< _pointIndex (vector-length _framePoints))
                    (let/ec jcontinue
                (vector-set! (vector-ref (vector-ref _points _index) _pointIndex) 0 (vector-ref (vector-ref _framePoints _pointIndex) 0))
                (vector-set! (vector-ref (vector-ref _points _index) _pointIndex) 1 (vector-ref (vector-ref _framePoints _pointIndex) 1)))
                    (set! _pointIndex (JR.i32 (+ _pointIndex 1))) (jloop))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _points))))
    (define/public (jm_toAnimationArrayFromListOfPointList_1 _vector)
    (let ([_size JR.null][_points JR.null][_nextBasicArrayList JR.null][_framePoints JR.null][_pointIndex JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send _vector jm_size_0))
        (set! _points (JR.newArray 0 _size 0 0))
        (set! _nextBasicArrayList JR.null)
        (set! _framePoints JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _nextBasicArrayList (vector-ref (get-field f_objectArray _vector) _index))
            (set! _framePoints (send this jm_toFrameArrayFromPointBasicArrayList_1 _nextBasicArrayList))
            (vector-set! _points _index (JR.newArray 0 (vector-length _framePoints) 2))
            (begin
                (set! _pointIndex 0)
                (let/ec jbreak (let jloop () (when (< _pointIndex (vector-length _framePoints))
                    (let/ec jcontinue
                (vector-set! (vector-ref (vector-ref _points _index) _pointIndex) 0 (vector-ref (vector-ref _framePoints _pointIndex) 0))
                (vector-set! (vector-ref (vector-ref _points _index) _pointIndex) 1 (vector-ref (vector-ref _framePoints _pointIndex) 1)))
                    (set! _pointIndex (JR.i32 (+ _pointIndex 1))) (jloop))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _points))))
    (define/public (jm_toFrameArrayFromPointBasicArrayList_1 _list)
    (let ([_points JR.null][_size JR.null][_nextPoint JR.null][_index JR.null])
      (let/ec jreturn
        (set! _points (JR.newArray 0 (send _list jm_size_0) 2))
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _nextPoint (vector-ref (get-field f_objectArray _list) _index))
            (vector-set! (vector-ref _points _index) 0 (send _nextPoint jm_getX_0))
            (vector-set! (vector-ref _points _index) 1 (send _nextPoint jm_getY_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _points))))))
(define (VectorAnimationUtil.jclassValue) VectorAnimationUtil%)

(define VectorAnimationUtil.jcell_instance 'jnone)
(define (VectorAnimationUtil.jstatic_instance)
  (when (eq? VectorAnimationUtil.jcell_instance 'jnone) (set! VectorAnimationUtil.jcell_instance (VectorAnimationUtil.jnew_0)))
  VectorAnimationUtil.jcell_instance)
(define (VectorAnimationUtil.jsetstatic_instance value) (set! VectorAnimationUtil.jcell_instance value))

(define (VectorAnimationUtil.jnew_0)
  (define this (new VectorAnimationUtil% [jclass "VectorAnimationUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (VectorAnimationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (VectorAnimationUtil.jstatic_instance)))))



