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
;; package org.allbinary.math

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./RectangleCollisionUtil.rkt" (RectangleCollisionUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define RectangleCollisionPointUtil%
  (class JObject%
    (super-new)))
(define (RectangleCollisionPointUtil.jclassValue) RectangleCollisionPointUtil%)

(define (RectangleCollisionPointUtil.jnew_0)
  (define this (new RectangleCollisionPointUtil% [jclass "RectangleCollisionPointUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (RectangleCollisionPointUtil.jm_allPointsInside_5 _rectX1 _rectY1 _rectX2 _rectY2 _list)
    (let ([_rectangleCollisionUtil JR.null][_point JR.null][_index JR.null])
      (let/ec jreturn
        (set! _rectangleCollisionUtil (RectangleCollisionUtil.jm_getInstance_0))
        (set! _point JR.null)
        (begin
            (set! _index (send _list jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _point (vector-ref (get-field f_objectArray _list) _index))
            (when (not (send _rectangleCollisionUtil jm_isInside_6 _rectX1 _rectY1 _rectX2 _rectY2 (send _point jm_getX_0) (send _point jm_getY_0)))
                (begin
                (jreturn #f)))) (jloop)))))
        (jreturn #t))))

(define (RectangleCollisionPointUtil.jm_allPointsInsideCell_7 _rectX1 _rectY1 _rectX2 _rectY2 _list _xCellSize _yCellSize)
    (let ([_rectangleCollisionUtil JR.null][_point JR.null][_index JR.null])
      (let/ec jreturn
        (set! _rectangleCollisionUtil (RectangleCollisionUtil.jm_getInstance_0))
        (set! _point JR.null)
        (begin
            (set! _index (send _list jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _point (vector-ref (get-field f_objectArray _list) _index))
            (when (not (send _rectangleCollisionUtil jm_isInside_6 _rectX1 _rectY1 _rectX2 _rectY2 (JR.i32 (* (send _point jm_getX_0) _xCellSize)) (JR.i32 (* (send _point jm_getY_0) _yCellSize))))
                (begin
                (jreturn #f)))) (jloop)))))
        (jreturn #t))))



