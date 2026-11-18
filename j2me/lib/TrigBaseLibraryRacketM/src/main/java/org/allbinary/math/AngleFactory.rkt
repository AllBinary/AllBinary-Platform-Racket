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
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonPhoneStrings.rkt" (CommonPhoneStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./Angle.rkt" (Angle.jnew_1)])
(lazy-require ["./NamedAngle.rkt" (NamedAngle.jnew_2)])
(lazy-require ["./FrameUtil.rkt" (FrameUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AngleFactory%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_TOTAL_ANGLE 0])
    (field [f_QUARTER_TOTAL_ANGLE 0])
    (field [f_angleArray JR.null])
    (field [f_NEGATIVE_ONE 0])
    (field [f_NOT_ANGLE JR.null])
    (field [f_DOWN JR.null])
    (field [f_UP JR.null])
    (field [f_LEFT JR.null])
    (field [f_RIGHT JR.null])
    (field [f_frameUtil JR.null])
    (define/public (jm_getAt_1 _index)
    (let ([_adjustedIndex JR.null])
      (let/ec jreturn
        (set! _adjustedIndex (send (get-field f_frameUtil this) jm_adjustAngleToFrameAngle_1 _index))
        (jreturn (vector-ref (get-field f_angleArray this) _adjustedIndex)))))
    (define/public (jm_getClosestDirection_1 _angle)
    (let ()
      (let/ec jreturn
        (if (or (and (>= _angle 315) (< _angle 360)) (and (>= _angle 0) (< _angle 45)))
            (begin
            (jreturn (get-field f_UP this)))
            (if (and (>= _angle 45) (< _angle 135))
            (begin
            (jreturn (get-field f_RIGHT this)))
            (if (and (>= _angle 135) (< _angle 225))
            (begin
            (jreturn (get-field f_DOWN this)))
            (when (and (>= _angle 225) (< _angle 315))
            (begin
            (jreturn (get-field f_LEFT this)))))))
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getGeneralDirection_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NOT_ANGLE this)))))))
(define (AngleFactory.jclassValue) AngleFactory%)

(define AngleFactory.jcell_instance 'jnone)
(define (AngleFactory.jstatic_instance)
  (when (eq? AngleFactory.jcell_instance 'jnone) (set! AngleFactory.jcell_instance (AngleFactory.jnew_0)))
  AngleFactory.jcell_instance)
(define (AngleFactory.jsetstatic_instance value) (set! AngleFactory.jcell_instance value))

(define (AngleFactory.jnew_0)
  (define this (new AngleFactory% [jclass "AngleFactory"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_TOTAL_ANGLE this 360)
    (set-field! f_QUARTER_TOTAL_ANGLE this 90)
    (set-field! f_angleArray this (JR.newArray JR.null (get-field f_TOTAL_ANGLE this)))
    (set-field! f_NEGATIVE_ONE this (JR.i16 (JR.i32 (- 1))))
    (set-field! f_NOT_ANGLE this (NamedAngle.jnew_2 (get-field f_NEGATIVE_ONE this) (get-field f_EMPTY (CommonStrings.jm_getInstance_0))))
    
    
    
    
    (set-field! f_frameUtil this (FrameUtil.jm_getInstance_0))
    (let ([_commonPhoneStrings JR.null][_total JR.null][_index JR.null])
      (let/ec jreturn
        (set! _commonPhoneStrings (CommonPhoneStrings.jm_getInstance_0))
        (set! _total (JR.i16 (vector-length (get-field f_angleArray this))))
        (set-field! f_UP this (NamedAngle.jnew_2 (JR.i16 0) (get-field f_UP _commonPhoneStrings)))
        (vector-set! (get-field f_angleArray this) 0 (get-field f_UP this))
        (begin
            (set! _index 1)
            (let/ec jbreak (let jloop () (when (< _index 90)
                (let/ec jcontinue
            (vector-set! (get-field f_angleArray this) _index (Angle.jnew_1 (JR.i16 _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_RIGHT this (NamedAngle.jnew_2 (JR.i16 90) (get-field f_RIGHT _commonPhoneStrings)))
        (vector-set! (get-field f_angleArray this) 90 (get-field f_RIGHT this))
        (begin
            (set! _index 91)
            (let/ec jbreak (let jloop () (when (< _index 180)
                (let/ec jcontinue
            (vector-set! (get-field f_angleArray this) _index (Angle.jnew_1 (JR.i16 _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_DOWN this (NamedAngle.jnew_2 (JR.i16 180) (get-field f_DOWN _commonPhoneStrings)))
        (vector-set! (get-field f_angleArray this) 180 (get-field f_DOWN this))
        (begin
            (set! _index 181)
            (let/ec jbreak (let jloop () (when (< _index 270)
                (let/ec jcontinue
            (vector-set! (get-field f_angleArray this) _index (Angle.jnew_1 (JR.i16 _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_LEFT this (NamedAngle.jnew_2 (JR.i16 270) (get-field f_LEFT _commonPhoneStrings)))
        (vector-set! (get-field f_angleArray this) 270 (get-field f_LEFT this))
        (begin
            (set! _index 271)
            (let/ec jbreak (let jloop () (when (< _index _total)
                (let/ec jcontinue
            (vector-set! (get-field f_angleArray this) _index (Angle.jnew_1 (JR.i16 _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))))
  this)

(define (AngleFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AngleFactory.jstatic_instance)))))

(define (AngleFactory.jm_main_1 _args)
    (let ([_stringMaker JR.null][_angleFactory JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _angleFactory (AngleFactory.jm_getInstance_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index 360)
                (let/ec jcontinue
            (send (send (send (send _stringMaker jm_appendint_1 _index) jm_append_1 (get-field f_FORWARD_SLASH (CommonSeps.jm_getInstance_0))) jm_appendshort_1 (send (send _angleFactory jm_getClosestDirection_1 _index) jm_getValue_0)) jm_append_1 (get-field f_NEW_LINE (CommonSeps.jm_getInstance_0))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send (LogUtil.jm_getInstance_0) jm_putF_3 (send _stringMaker jm_toString_0) "main" "main"))))



