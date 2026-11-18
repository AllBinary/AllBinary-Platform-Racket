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
  "./RotationAnimationInterface.rkt")
(lazy-require ["../../../org/allbinary/direction/DirectionUtil.rkt" (DirectionUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/math/FrameUtil.rkt" (FrameUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define RotationAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_frameUtil JR.null])
    (field [f_directionUtil JR.null])
    (field [f_angleInfo JR.null])
    (field [f_circularIndexUtil JR.null])
    (define/public (jm_nextRotationX_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_previousRotationX_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_nextRotation_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_angleInfo this) jm_adjustAngle_1 (send (get-field f_circularIndexUtil this) jm_next_0)))))
    (define/public (jm_previousRotation_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_angleInfo this) jm_adjustAngle_1 (send (get-field f_circularIndexUtil this) jm_previous_0)))))
    (define/public (jm_nextRotationZ_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_previousRotationZ_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_setFrame_1 _index)
    (let ([_newFrame JR.null])
      (let/ec jreturn
        (send (get-field f_circularIndexUtil this) jm_setIndex_1 _index)
        (set! _newFrame (send (get-field f_circularIndexUtil this) jm_getIndex_0))
        (send (get-field f_angleInfo this) jm_adjustAngle_1 _newFrame))))
    (define/public (jm_setFrameByDirection_1 _direction)
    (let ([_angle JR.null])
      (let/ec jreturn
        (set! _angle (send (get-field f_directionUtil this) jm_getFrameAngle_1 _direction))
        (send this jm_adjustFrameToAngle_1 _angle))))
    (define/public (jm_setFrameToAngle_1 _angle)
    (let ()
      (let/ec jreturn
        (send this jm_adjustFrameToAngle_1 _angle))))
    (define/public (jm_adjustFrameToAngle_1 _angle)
    (let ()
      (let/ec jreturn
        (send this jm_adjustFrame_1 (send _angle jm_getValue_0)))))
    (define/public (jm_adjustFrame_1 _angle)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 (send (get-field f_frameUtil this) jm_getFrameForAngle_2 _angle (JR.className (send (get-field f_angleInfo this) jm_getAngleIncrementInfo_0)))))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_circularIndexUtil this) jm_getIndex_0)))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_circularIndexUtil this) jm_getSize_0)))))
    (define/public (jm_getAngleInfoP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_angleInfo this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (super jm_toString_0)) jm_append_1 "circularIndexUtil: ") jm_append_1 (send (get-field f_circularIndexUtil this) jm_toString_0)) jm_append_1 "angleInfo: ") jm_append_1 (send (get-field f_angleInfo this) jm_toString_0)) jm_toString_0)))))))
(define (RotationAnimation.jclassValue) RotationAnimation%)

(define (RotationAnimation.jnew_3 _angleInfo _circularIndexUtil _animationBehavior)
  (define this (new RotationAnimation% [jclass "RotationAnimation"]))
    (set-field! f_frameUtil this (FrameUtil.jm_getInstance_0))
    (set-field! f_directionUtil this (DirectionUtil.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_angleInfo this _angleInfo)
        (set-field! f_circularIndexUtil this _circularIndexUtil)))
  this)



