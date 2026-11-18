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
  "../../../../org/allbinary/animation/IndexedAnimation.rkt"
  "./CompoundAnimationInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define CompoundIndexedAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_circularIndexUtil JR.null])
    (field [f_animationInterfaceArray JR.null])
    (define/override (jm_setFrame_1 _index)
    (let ([_indexedAnimation JR.null])
      (let/ec jreturn
        (set! _indexedAnimation (vector-ref (get-field f_animationInterfaceArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
        (send _indexedAnimation jm_setFrame_1 _index))))
    (define/override (jm_getFrame_0)
    (let ([_indexedAnimation JR.null])
      (let/ec jreturn
        (set! _indexedAnimation (vector-ref (get-field f_animationInterfaceArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
        (jreturn (send _indexedAnimation jm_getFrame_0)))))
    (define/override (jm_getSize_0)
    (let ([_indexedAnimation JR.null])
      (let/ec jreturn
        (set! _indexedAnimation (vector-ref (get-field f_animationInterfaceArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
        (jreturn (send _indexedAnimation jm_getSize_0)))))
    (define/override (jm_previousFrame_0)
    (let ([_indexedAnimation JR.null])
      (let/ec jreturn
        (set! _indexedAnimation (vector-ref (get-field f_animationInterfaceArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0)))
        (send _indexedAnimation jm_previousFrame_0))))
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
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0))))))
    (define/override (jm_paintThreedXYZ_4 _graphics _x _y _z)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0))))))
    (define/public (jm_getCurrentAnimation_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_animationInterfaceArray this) (send (get-field f_circularIndexUtil this) jm_getIndex_0))))))
    (define/public (jm_nextAnimation_0)
    (let ([_frame JR.null])
      (let/ec jreturn
        (set! _frame (send this jm_getFrame_0))
        (send (get-field f_circularIndexUtil this) jm_next_0)
        (send this jm_setFrame_1 _frame))))
    (define/public (jm_previousAnimation_0)
    (let ([_frame JR.null])
      (let/ec jreturn
        (set! _frame (send this jm_getFrame_0))
        (send (get-field f_circularIndexUtil this) jm_previous_0)
        (send this jm_setFrame_1 _frame))))
    (define/public (jm_setAnimation_1 _index)
    (let ([_frame JR.null])
      (let/ec jreturn
        (set! _frame (send this jm_getFrame_0))
        (send (get-field f_circularIndexUtil this) jm_setIndex_1 _index)
        (send this jm_setFrame_1 _frame))))
    (define/public (jm_getAnimationInterfaceArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterfaceArray this)))))
    (define/public (jm_setAnimationInterfaceArray_1 _animationInterfaceArray)
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterfaceArray this _animationInterfaceArray))))
    (define/override (jm_set_1 _gl)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (vector-length (get-field f_animationInterfaceArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_animationInterfaceArray this) _index))) (jloop))))))))))
(define (CompoundIndexedAnimation.jclassValue) CompoundIndexedAnimation%)

(define (CompoundIndexedAnimation.jnew_2 _animationInterfaceArray _animationBehavior)
  (define this (new CompoundIndexedAnimation% [jclass "CompoundIndexedAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_animationInterfaceArray this _animationInterfaceArray)
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (vector-length (get-field f_animationInterfaceArray this))))))
  this)



