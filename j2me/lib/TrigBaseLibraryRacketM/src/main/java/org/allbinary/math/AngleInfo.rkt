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
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["./AngleIncrementInfoFactory.rkt" (AngleIncrementInfoFactory.jm_getInstance_0)])
(lazy-require ["./FrameUtil.rkt" (FrameUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AngleInfo%
  (class JObject%
    (super-new)
    (field [f_angleIncrementInfo JR.null])
    (field [f_angle 0])
    (field [f_frameUtil JR.null])
    (define/public (jm_adjustAngle_1 _frame)
    (let ([_newAngle JR.null])
      (let/ec jreturn
        (set! _newAngle (JR.i32 (- (JR.i32 (* (send (get-field f_angleIncrementInfo this) jm_getAngleIncrement_0) _frame)) 90)))
        (send this jm_setAngle_1 (JR.i16 (send (get-field f_frameUtil this) jm_adjustAngleToFrameAngle_1 _newAngle))))))
    (define/public (jm_getAngle_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_angle this)))))
    (define/public (jm_setAngle_1 _angle)
    (let ()
      (let/ec jreturn
        (set-field! f_angle this _angle))))
    (define/public (jm_getAngleIncrementInfo_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_angleIncrementInfo this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (AngleInfo.jstatic_ANGLE))
        (send _stringBuffer jm_appendshort_1 (get-field f_angle this))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (send this jm_getAngleIncrementInfo_0)))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (AngleInfo.jclassValue) AngleInfo%)

(define AngleInfo.jcell_ANGLE 'jnone)
(define (AngleInfo.jstatic_ANGLE)
  (when (eq? AngleInfo.jcell_ANGLE 'jnone) (set! AngleInfo.jcell_ANGLE "Angle: "))
  AngleInfo.jcell_ANGLE)
(define (AngleInfo.jsetstatic_ANGLE value) (set! AngleInfo.jcell_ANGLE value))

(define (AngleInfo.jnew_1 _angleIncrementInfo)
  (define this (new AngleInfo% [jclass "AngleInfo"]))
    
    (set-field! f_angle this 0)
    (set-field! f_frameUtil this (FrameUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_angleIncrementInfo this _angleIncrementInfo)))
  this)

(define (AngleInfo.jm_getInstance_1 _angleIncrement)
    (let ()
      (let/ec jreturn
        (jreturn (AngleInfo.jnew_1 (send (AngleIncrementInfoFactory.jm_getInstance_0) jm_getAt_1 _angleIncrement))))))



