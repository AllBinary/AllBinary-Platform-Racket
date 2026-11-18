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
;; package org.allbinary.input.gyro

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/gesture/MotionGestureInput.rkt" (MotionGestureInput.jnew_2)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define OrientationMotionGestureFactory%
  (class JObject%
    (super-new)
    (field [f_LEFT JR.null])
    (field [f_RIGHT JR.null])
    (field [f_UP JR.null])
    (field [f_DOWN JR.null])
    (field [f_ROLL_LEFT JR.null])
    (field [f_ROLL_RIGHT JR.null])))
(define (OrientationMotionGestureFactory.jclassValue) OrientationMotionGestureFactory%)

(define OrientationMotionGestureFactory.jcell_instance 'jnone)
(define (OrientationMotionGestureFactory.jstatic_instance)
  (when (eq? OrientationMotionGestureFactory.jcell_instance 'jnone) (set! OrientationMotionGestureFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  OrientationMotionGestureFactory.jcell_instance)
(define (OrientationMotionGestureFactory.jsetstatic_instance value) (set! OrientationMotionGestureFactory.jcell_instance value))

(define (OrientationMotionGestureFactory.jnew_0)
  (define this (new OrientationMotionGestureFactory% [jclass "OrientationMotionGestureFactory"]))
    
    
    
    
    
    
    (let ([_MAX JR.null])
      (let/ec jreturn
        (set! _MAX (get-field f_MAX (InputFactory.jm_getInstance_0)))
        (set-field! f_LEFT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 20)) "Left Orient"))
        (set-field! f_RIGHT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 21)) "Right Orient"))
        (set-field! f_UP this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 22)) "Up Orient"))
        (set-field! f_DOWN this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 23)) "Down Orient"))
        (set-field! f_ROLL_LEFT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 24)) "Roll Left"))
        (set-field! f_ROLL_RIGHT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 25)) "Roll Right"))))
  this)

(define (OrientationMotionGestureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (OrientationMotionGestureFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! OrientationMotionGestureFactory.jcell_instance (OrientationMotionGestureFactory.jnew_0))))
        (jreturn (OrientationMotionGestureFactory.jstatic_instance)))))



