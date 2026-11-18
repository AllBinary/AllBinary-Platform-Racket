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
;; package org.allbinary.graphics.pipeline

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/NoDecimalTrigTable.rkt" (NoDecimalTrigTable.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define BasicGraphicsPipeline%
  (class JObject%
    (super-new)
    (field [f_pointBasicArrayList JR.null])
    (field [f_noDecimalTrigTable JR.null])
    (define/public (jm_setInitMatrix_1 _points)
    (let ()
      (let/ec jreturn
        (set-field! f_pointBasicArrayList this _points))))
    (define/public (jm_createMatrix_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_translate_2 _x _y)
    (let ([_newBasicArrayList JR.null][_size JR.null][_pointFactory JR.null][_secondPoint JR.null][_index JR.null])
      (let/ec jreturn
        (set! _newBasicArrayList (BasicArrayListD.jnew_0))
        (set! _size (send (get-field f_pointBasicArrayList this) jm_size_0))
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _secondPoint JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _secondPoint (vector-ref (get-field f_objectArray (get-field f_pointBasicArrayList this)) _index))
            (if (not (= (send _secondPoint jm_getX_0) 1000))
                (begin
                (send _newBasicArrayList jm_add_1 (send _pointFactory jm_createXY_2 (JR.i32 (+ (send _secondPoint jm_getX_0) _x)) (JR.i32 (+ (send _secondPoint jm_getY_0) _y)))))
                (begin
                (send _newBasicArrayList jm_add_1 _secondPoint))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_pointBasicArrayList this _newBasicArrayList))))
    (define/public (jm_rotateToAngle_1 _angle)
    (let ()
      (let/ec jreturn
        (send this jm_rotate_1 (send _angle jm_getValue_0)))))
    (define/public (jm_rotate_1 _angle)
    (let ([_newBasicArrayList JR.null][_secondPoint JR.null][_y JR.null][_secondX JR.null][_secondY JR.null][_point JR.null][_pointFactory JR.null][_size JR.null][_sin JR.null][_cos JR.null][_index JR.null])
      (let/ec jreturn
        (set! _newBasicArrayList (BasicArrayListD.jnew_0))
        (set! _secondPoint JR.null)
        (set! _y 0)
        (set! _secondX 0)
        (set! _secondY 0)
        (set! _point JR.null)
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _size (send (get-field f_pointBasicArrayList this) jm_size_0))
        (set! _sin 0)
        (set! _cos 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _secondPoint (vector-ref (get-field f_objectArray (get-field f_pointBasicArrayList this)) _index))
            (if (not (= (send _secondPoint jm_getX_0) 1000))
                (begin
                (set! _sin (send (get-field f_noDecimalTrigTable this) jm_sin_1 _angle))
                (set! _cos (send (get-field f_noDecimalTrigTable this) jm_cos_1 _angle))
                (set! _y (JR.i64 (* (send _secondPoint jm_getY_0) _sin)))
                (set! _secondX (JR.i64 (- (JR.i64 (* (send _secondPoint jm_getX_0) _cos)) _y)))
                (set! _secondY (JR.i64 (+ (JR.i64 (* (send _secondPoint jm_getX_0) _sin)) (JR.i64 (* (send _secondPoint jm_getY_0) _cos)))))
                (set! _point (send _pointFactory jm_createXY_2 (JR.idiv (JR.i32 _secondX) 10000) (JR.idiv (JR.i32 _secondY) 10000)))
                (send _newBasicArrayList jm_add_1 _point))
                (begin
                (send _newBasicArrayList jm_add_1 _secondPoint))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_pointBasicArrayList this _newBasicArrayList))))
    (define/public (jm_mirror_1 _width)
    (let ([_pointFactory JR.null][_halfWidth JR.null][_newBasicArrayList JR.null][_secondPoint JR.null][_newX JR.null][_point JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _halfWidth (arithmetic-shift _width (- (bitwise-and 1 31))))
        (set! _newBasicArrayList (BasicArrayListD.jnew_0))
        (set! _secondPoint JR.null)
        (set! _newX 0)
        (set! _point JR.null)
        (set! _size (send (get-field f_pointBasicArrayList this) jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _secondPoint (vector-ref (get-field f_objectArray (get-field f_pointBasicArrayList this)) _index))
            (if (not (= (send _secondPoint jm_getX_0) 1000))
                (begin
                (set! _newX 0)
                (if (> (send _secondPoint jm_getX_0) _halfWidth)
                    (begin
                    (set! _newX (JR.i32 (- _halfWidth (JR.i32 (- (send _secondPoint jm_getX_0) _halfWidth))))))
                    (begin
                    (set! _newX (JR.i32 (+ _halfWidth (JR.i32 (- _halfWidth (send _secondPoint jm_getX_0))))))))
                (set! _point (send _pointFactory jm_createXY_2 _newX (send _secondPoint jm_getY_0)))
                (send _newBasicArrayList jm_add_1 _point))
                (begin
                (send _newBasicArrayList jm_add_1 _secondPoint))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_pointBasicArrayList this _newBasicArrayList))))
    (define/public (jm_getMatrix_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_pointBasicArrayList this)))))))
(define (BasicGraphicsPipeline.jclassValue) BasicGraphicsPipeline%)

(define (BasicGraphicsPipeline.jnew_1 _points)
  (define this (new BasicGraphicsPipeline% [jclass "BasicGraphicsPipeline"]))
    
    (set-field! f_noDecimalTrigTable this (NoDecimalTrigTable.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_pointBasicArrayList this _points)))
  this)



