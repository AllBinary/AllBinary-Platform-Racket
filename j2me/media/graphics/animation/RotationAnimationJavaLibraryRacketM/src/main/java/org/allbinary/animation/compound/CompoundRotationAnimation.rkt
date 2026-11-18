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
  "../../../../org/allbinary/animation/RotationAnimation.rkt"
  "./CompoundAnimationInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(lazy-require ["../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define CompoundRotationAnimation%
  (class RotationAnimation%
    (super-new)
    (field [f_animationInterfaceArray JR.null])
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this))))))))
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this))))))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this))))))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_previousRotation_0)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_nextRotation_0)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_paintThreedXYZ_4 _graphics _x _y _z)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/public (jm_getCurrentAnimation_0)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/public (jm_nextAnimation_0)
    (let ([_frame JR.null])
      (let/ec jreturn
        (set! _frame (send this jm_getFrame_0))
        (JR.className (get-field f_circularIndexUtil this))
        (send this jm_setFrame_1 _frame))))
    (define/public (jm_previousAnimation_0)
    (let ([_frame JR.null])
      (let/ec jreturn
        (set! _frame (send this jm_getFrame_0))
        (JR.className (get-field f_circularIndexUtil this))
        (send this jm_setFrame_1 _frame))))
    (define/public (jm_setAnimation_1 _index)
    (let ([_frame JR.null])
      (let/ec jreturn
        (set! _frame (send this jm_getFrame_0))
        (JR.className (get-field f_circularIndexUtil this))
        (send this jm_setFrame_1 _frame))))
    (define/override (jm_setFrameByDirection_1 _direction)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_setFrameToAngle_1 _angle)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_adjustFrameToAngle_1 _newAngle)
    (let ()
      (let/ec jreturn
        (send this jm_adjustFrame_1 (send _newAngle jm_getValue_0)))))
    (define/override (jm_adjustFrame_1 _angle)
    (let ()
      (let/ec jreturn
        (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this)))))))
    (define/override (jm_getAngleInfoP_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (vector-ref (get-field f_animationInterfaceArray this) (JR.className (get-field f_circularIndexUtil this))))))))
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
(define (CompoundRotationAnimation.jclassValue) CompoundRotationAnimation%)

(define (CompoundRotationAnimation.jnew_2 _animationInterfaceArray _animationBehavior)
  (define this (new CompoundRotationAnimation% [jclass "CompoundRotationAnimation"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_animationInterfaceArray this _animationInterfaceArray)
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 (vector-length (get-field f_animationInterfaceArray this))))))
  this)



