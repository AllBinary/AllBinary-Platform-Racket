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
;; package org.allbinary.vector

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PointsUtil%
  (class JObject%
    (super-new)
    (define/public (jm_adjustXY_3 _points _x _y)
    (let ([_size JR.null][_newPoints JR.null][_size2 JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length _points))
        (set! _newPoints (JR.newArray 0 _size 0 0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _size2 (vector-length (vector-ref _points _index)))
            (vector-set! _newPoints _index (JR.newArray 0 _size2 2))
            (begin
                (set! _index2 0)
                (let/ec jbreak (let jloop () (when (< _index2 _size2)
                    (let/ec jcontinue
                (if (not (eq? (vector-ref (vector-ref (vector-ref _points _index) _index2) 0) 1000))
                    (begin
                    (vector-set! (vector-ref (vector-ref _newPoints _index) _index2) 0 (JR.i32 (+ (vector-ref (vector-ref (vector-ref _points _index) _index2) 0) _x)))
                    (vector-set! (vector-ref (vector-ref _newPoints _index) _index2) 1 (JR.i32 (+ (vector-ref (vector-ref (vector-ref _points _index) _index2) 1) _y))))
                    (begin
                    (vector-set! (vector-ref (vector-ref _newPoints _index) _index2) 0 1000)
                    (vector-set! (vector-ref (vector-ref _newPoints _index) _index2) 1 1000))))
                    (set! _index2 (JR.i32 (+ _index2 1))) (jloop))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _newPoints))))
    (define/public (jm_adjust_2 _points _both)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_adjust_3 _points _both _both)))))
    (define/public (jm_adjust_3 _points _x _y)
    (let ([_newPoints JR.null][_index2 JR.null])
      (let/ec jreturn
        (set! _newPoints (JR.newArray 0 (vector-length _points) 2))
        (begin
            (set! _index2 0)
            (let/ec jbreak (let jloop () (when (< _index2 (vector-length _points))
                (let/ec jcontinue
            (if (not (eq? (vector-ref (vector-ref _points _index2) 0) 1000))
                (begin
                (vector-set! (vector-ref _newPoints _index2) 0 (JR.i32 (+ (vector-ref (vector-ref _points _index2) 0) _x)))
                (vector-set! (vector-ref _newPoints _index2) 1 (JR.i32 (+ (vector-ref (vector-ref _points _index2) 1) _y))))
                (begin
                (vector-set! (vector-ref _newPoints _index2) 0 1000)
                (vector-set! (vector-ref _newPoints _index2) 1 1000))))
                (set! _index2 (JR.i32 (+ _index2 1))) (jloop)))))
        (jreturn _newPoints))))))
(define (PointsUtil.jclassValue) PointsUtil%)

(define PointsUtil.jcell_instance 'jnone)
(define (PointsUtil.jstatic_instance)
  (when (eq? PointsUtil.jcell_instance 'jnone) (set! PointsUtil.jcell_instance (PointsUtil.jnew_0)))
  PointsUtil.jcell_instance)
(define (PointsUtil.jsetstatic_instance value) (set! PointsUtil.jcell_instance value))

(define (PointsUtil.jnew_0)
  (define this (new PointsUtil% [jclass "PointsUtil"]))
  this)

(define (PointsUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PointsUtil.jstatic_instance)))))



