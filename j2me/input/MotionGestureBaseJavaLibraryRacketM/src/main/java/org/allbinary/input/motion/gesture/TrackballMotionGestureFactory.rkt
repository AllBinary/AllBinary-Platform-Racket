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
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./MotionGestureInput.rkt" (MotionGestureInput.jnew_2)])
(provide (all-defined-out))

(define TrackballMotionGestureFactory%
  (class JObject%
    (super-new)
    (field [f_LEFT JR.null])
    (field [f_RIGHT JR.null])
    (field [f_UP JR.null])
    (field [f_DOWN JR.null])))
(define (TrackballMotionGestureFactory.jclassValue) TrackballMotionGestureFactory%)

(define TrackballMotionGestureFactory.jcell_instance 'jnone)
(define (TrackballMotionGestureFactory.jstatic_instance)
  (when (eq? TrackballMotionGestureFactory.jcell_instance 'jnone) (set! TrackballMotionGestureFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  TrackballMotionGestureFactory.jcell_instance)
(define (TrackballMotionGestureFactory.jsetstatic_instance value) (set! TrackballMotionGestureFactory.jcell_instance value))

(define (TrackballMotionGestureFactory.jnew_0)
  (define this (new TrackballMotionGestureFactory% [jclass "TrackballMotionGestureFactory"]))
    
    
    
    
    (let ([_MAX JR.null])
      (let/ec jreturn
        (set! _MAX (get-field f_MAX (InputFactory.jm_getInstance_0)))
        (set-field! f_LEFT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 26)) "L Trackball"))
        (set-field! f_RIGHT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 27)) "R Trackball"))
        (set-field! f_UP this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 28)) "Up Trackball"))
        (set-field! f_DOWN this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 29)) "D Trackball"))))
  this)

(define (TrackballMotionGestureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (TrackballMotionGestureFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! TrackballMotionGestureFactory.jcell_instance (TrackballMotionGestureFactory.jnew_0))))
        (jreturn (TrackballMotionGestureFactory.jstatic_instance)))))



