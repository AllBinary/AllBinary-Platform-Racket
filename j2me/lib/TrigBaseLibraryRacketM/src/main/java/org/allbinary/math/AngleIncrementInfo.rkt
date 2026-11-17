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
  "../../../allbinary_java.rkt"
  "../../../java/lang/Integer.rkt")
(lazy-require ["../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["./AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["./FrameUtil.rkt" (FrameUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AngleIncrementInfo%
  (class JObject%
    (super-new)
    (field [f_angleIncrement 0])
    (field [f_DOWN_FRAME JR.null])
    (field [f_UP_FRAME JR.null])
    (field [f_LEFT_FRAME JR.null])
    (field [f_RIGHT_FRAME JR.null])
    (field [f_frameUtil JR.null])
    (define/public (jm_getFrameAngle_1 _frame)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_frameUtil this) jm_getFrameAngle_2 _frame (get-field f_angleIncrement this))))))
    (define/public (jm_getAngleIncrement_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_angleIncrement this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (StringMaker.jnew_0) jm_append_1 (AngleIncrementInfo.jstatic_INCREMENT)) jm_appendshort_1 (get-field f_angleIncrement this)) jm_toString_0)))))
    (define/public (jm_getClosestGeneralDirection_1 _angle)
    (let ([_closestDirection JR.null])
      (let/ec jreturn
        (set! _closestDirection (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 360))
        (when (< (JR.i32 (- (send (get-field f_UP_FRAME this) jm_intValue_0) _angle)) (JR.i32 (- (send _closestDirection jm_intValue_0) _angle)))
            (begin
            (set! _closestDirection (get-field f_UP_FRAME this))))
        (when (< (JR.i32 (- (send (get-field f_DOWN_FRAME this) jm_intValue_0) _angle)) (JR.i32 (- (send _closestDirection jm_intValue_0) _angle)))
            (begin
            (set! _closestDirection (get-field f_DOWN_FRAME this))))
        (when (< (JR.i32 (- (send (get-field f_LEFT_FRAME this) jm_intValue_0) _angle)) (JR.i32 (- (send _closestDirection jm_intValue_0) _angle)))
            (begin
            (set! _closestDirection (get-field f_LEFT_FRAME this))))
        (when (< (JR.i32 (- (send (get-field f_RIGHT_FRAME this) jm_intValue_0) _angle)) (JR.i32 (- (send _closestDirection jm_intValue_0) _angle)))
            (begin
            (set! _closestDirection (get-field f_RIGHT_FRAME this))))
        (jreturn (send _closestDirection jm_intValue_0)))))))

(define AngleIncrementInfo.jcell_INCREMENT 'jnone)
(define (AngleIncrementInfo.jstatic_INCREMENT)
  (when (eq? AngleIncrementInfo.jcell_INCREMENT 'jnone) (set! AngleIncrementInfo.jcell_INCREMENT "Inc: "))
  AngleIncrementInfo.jcell_INCREMENT)

(define (AngleIncrementInfo.jnew_1 _angleIncrement)
  (define this (new AngleIncrementInfo% [jclass "AngleIncrementInfo"]))
    
    
    
    
    
    (set-field! f_frameUtil this (FrameUtil.jm_getInstance_0))
    (let ([_angleFactory JR.null][_smallIntegerSingletonFactory JR.null])
      (let/ec jreturn
        (set-field! f_angleIncrement this _angleIncrement)
        (set! _angleFactory (AngleFactory.jm_getInstance_0))
        (set! _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (set-field! f_DOWN_FRAME this (send _smallIntegerSingletonFactory jm_getAt_1 (JR.idiv (JR.className (get-field f_DOWN _angleFactory)) (get-field f_angleIncrement this))))
        (set-field! f_UP_FRAME this (send _smallIntegerSingletonFactory jm_getAt_1 (JR.className (get-field f_UP _angleFactory))))
        (set-field! f_LEFT_FRAME this (send _smallIntegerSingletonFactory jm_getAt_1 (JR.idiv (JR.className (get-field f_LEFT _angleFactory)) (get-field f_angleIncrement this))))
        (set-field! f_RIGHT_FRAME this (send _smallIntegerSingletonFactory jm_getAt_1 (JR.idiv (JR.className (get-field f_RIGHT _angleFactory)) (get-field f_angleIncrement this))))))
  this)



