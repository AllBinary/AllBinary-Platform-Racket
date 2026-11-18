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
;; package org.allbinary.animation.compound

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/IndexedAnimation.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(provide (all-defined-out))

(define SimultaneousCompoundIndexedAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_animationInterfaceArray JR.null])
    (define/override (jm_setFrame_1 _frameIndex)
    (let ([_indexedAnimation JR.null][_index JR.null])
      (let/ec jreturn
        (set! _indexedAnimation JR.null)
        (begin
            (set! _index (vector-length (get-field f_animationInterfaceArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _indexedAnimation (vector-ref (get-field f_animationInterfaceArray this) _index))
            (send _indexedAnimation jm_setFrame_1 _frameIndex)) (jloop))))))))
    (define/override (jm_getFrame_0)
    (let ([_indexedAnimation JR.null])
      (let/ec jreturn
        (set! _indexedAnimation (vector-ref (get-field f_animationInterfaceArray this) 0))
        (jreturn (send _indexedAnimation jm_getFrame_0)))))
    (define/override (jm_getSize_0)
    (let ([_indexedAnimation JR.null])
      (let/ec jreturn
        (set! _indexedAnimation (vector-ref (get-field f_animationInterfaceArray this) 0))
        (jreturn (send _indexedAnimation jm_getSize_0)))))
    (define/override (jm_previousFrame_0)
    (let ([_indexedAnimation JR.null][_index JR.null])
      (let/ec jreturn
        (set! _indexedAnimation JR.null)
        (begin
            (set! _index (vector-length (get-field f_animationInterfaceArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _indexedAnimation (vector-ref (get-field f_animationInterfaceArray this) _index))
            (send _indexedAnimation jm_previousFrame_0)) (jloop))))))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/override (jm_nextFrame_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (vector-length (get-field f_animationInterfaceArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_animationInterfaceArray this) _index))) (jloop))))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_animationInterfaceArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_animationInterfaceArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/override (jm_paintThreedXYZ_4 _graphics _x _y _z)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_animationInterfaceArray this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_animationInterfaceArray this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_getAnimationInterfaceArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterfaceArray this)))))
    (define/public (jm_setAnimationInterfaceArray_1 _animationInterfaceArray)
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterfaceArray this _animationInterfaceArray))))))
(define (SimultaneousCompoundIndexedAnimation.jclassValue) SimultaneousCompoundIndexedAnimation%)

(define (SimultaneousCompoundIndexedAnimation.jnew_2 _animationInterfaceArray _animationBehavior)
  (define this (new SimultaneousCompoundIndexedAnimation% [jclass "SimultaneousCompoundIndexedAnimation"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_animationInterfaceArray this _animationInterfaceArray)))
  this)



