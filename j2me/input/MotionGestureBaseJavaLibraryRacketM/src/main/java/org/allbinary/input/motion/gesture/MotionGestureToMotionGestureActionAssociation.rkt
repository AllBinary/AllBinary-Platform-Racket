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
;; package org.allbinary.input.motion.gesture

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MotionGestureToMotionGestureActionAssociation%
  (class JObject%
    (super-new)
    (field [f_list JR.null])
    (field [f_motionGestureAction JR.null])
    (define/public (jm_getMotionGesture_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))
    (define/public (jm_setMotionGestures_1 _list)
    (let ()
      (let/ec jreturn
        (set-field! f_list this _list))))
    (define/public (jm_getCommandAction_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_motionGestureAction this)))))
    (define/public (jm_setMotionGestureAction_1 _commandAction)
    (let ()
      (let/ec jreturn
        (set-field! f_motionGestureAction this _commandAction))))
    (define/public (jm_isMotionGestureArrayEquals_1 _aList)
    (let ([_size JR.null][_i JR.null])
      (let/ec jreturn
        (set! _size (send _aList jm_size_0))
        (when (not (= (send (get-field f_list this) jm_size_0) _size))
            (begin
            (jreturn #f)))
        (begin
            (set! _i (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _i 0)
                (let/ec jcontinue
            (when (not (eq? (vector-ref (get-field f_objectArray _aList) _i) (vector-ref (get-field f_objectArray (get-field f_list this)) _i)))
                (begin
                (jreturn #f))))
                (set! _i (JR.i32 (- _i 1))) (jloop)))))
        (jreturn #t))))))
(define (MotionGestureToMotionGestureActionAssociation.jclassValue) MotionGestureToMotionGestureActionAssociation%)

(define (MotionGestureToMotionGestureActionAssociation.jnew_2 _list _commandAction)
  (define this (new MotionGestureToMotionGestureActionAssociation% [jclass "MotionGestureToMotionGestureActionAssociation"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_list this _list)
        (set-field! f_motionGestureAction this _commandAction)))
  this)



