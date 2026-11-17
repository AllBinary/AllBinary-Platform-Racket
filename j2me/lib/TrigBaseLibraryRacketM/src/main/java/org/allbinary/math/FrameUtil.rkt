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
(lazy-require ["./AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define FrameUtil%
  (class JObject%
    (super-new)
    (define/public (jm_getFrameForAngle_2 _angle _angleIncrement)
    (let ()
      (let/ec jreturn
        (jreturn (JR.idiv (send this jm_adjustAngleToFrameAngle_1 _angle) _angleIncrement)))))
    (define/public (jm_getFrameAngle_2 _frame _angleIncrement)
    (let ([_frameAngle JR.null])
      (let/ec jreturn
        (set! _frameAngle (JR.i32 (- (JR.i32 (* _angleIncrement _frame)) 90)))
        (jreturn (send this jm_adjustAngleToFrameAngle_1 _frameAngle)))))
    (define/public (jm_adjustAngleToFrameAngle_1 _currentAngle)
    (let ([_angleFactory JR.null])
      (let/ec jreturn
        (set! _angleFactory (AngleFactory.jm_getInstance_0))
        (when (> _currentAngle 359)
            (begin
            (set! _currentAngle (JR.i32 (- _currentAngle (get-field f_TOTAL_ANGLE _angleFactory))))
            (let/ec jbreak (let jloop () (when (> _currentAngle 359)
                    (let/ec jcontinue
                (set! _currentAngle (JR.i32 (- _currentAngle (get-field f_TOTAL_ANGLE _angleFactory))))) (jloop))))))
        (when (< _currentAngle 0)
            (begin
            (set! _currentAngle (JR.i32 (+ _currentAngle (get-field f_TOTAL_ANGLE _angleFactory))))
            (let/ec jbreak (let jloop () (when (< _currentAngle 0)
                    (let/ec jcontinue
                (set! _currentAngle (JR.i32 (+ _currentAngle (get-field f_TOTAL_ANGLE _angleFactory))))) (jloop))))))
        (jreturn _currentAngle))))))

(define FrameUtil.jcell_instance 'jnone)
(define (FrameUtil.jstatic_instance)
  (when (eq? FrameUtil.jcell_instance 'jnone) (set! FrameUtil.jcell_instance (FrameUtil.jnew_0)))
  FrameUtil.jcell_instance)

(define (FrameUtil.jnew_0)
  (define this (new FrameUtil% [jclass "FrameUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (FrameUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FrameUtil.jstatic_instance)))))



