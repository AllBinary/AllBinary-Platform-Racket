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

(define TouchMotionGestureFactory%
  (class JObject%
    (super-new)
    (field [f_LEFT JR.null])
    (field [f_RIGHT JR.null])
    (field [f_UP JR.null])
    (field [f_DOWN JR.null])
    (field [f_PRESSED JR.null])
    (field [f_RELEASED JR.null])
    (field [f_DIAGONAL_DOWN_RIGHT JR.null])
    (field [f_DIAGONAL_DOWN_LEFT JR.null])
    (field [f_DIAGONAL_UP_RIGHT JR.null])
    (field [f_DIAGONAL_UP_LEFT JR.null])
    (field [f_SCROLL_UP JR.null])
    (field [f_SCROLL_DOWN JR.null])
    (field [f_NO_MOTION JR.null])
    (field [f_LAST_MOTION JR.null])))
(define (TouchMotionGestureFactory.jclassValue) TouchMotionGestureFactory%)

(define TouchMotionGestureFactory.jcell_instance 'jnone)
(define (TouchMotionGestureFactory.jstatic_instance)
  (when (eq? TouchMotionGestureFactory.jcell_instance 'jnone) (set! TouchMotionGestureFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  TouchMotionGestureFactory.jcell_instance)
(define (TouchMotionGestureFactory.jsetstatic_instance value) (set! TouchMotionGestureFactory.jcell_instance value))

(define (TouchMotionGestureFactory.jnew_0)
  (define this (new TouchMotionGestureFactory% [jclass "TouchMotionGestureFactory"]))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    (let ([_MAX JR.null])
      (let/ec jreturn
        (set! _MAX (get-field f_MAX (InputFactory.jm_getInstance_0)))
        (set-field! f_LEFT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 3)) "Left Touch"))
        (set-field! f_RIGHT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 4)) "Right Touch"))
        (set-field! f_UP this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 5)) "Up Touch"))
        (set-field! f_DOWN this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 6)) "Down Touch"))
        (set-field! f_PRESSED this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 7)) "Screen Press"))
        (set-field! f_RELEASED this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 8)) "Released"))
        (set-field! f_DIAGONAL_DOWN_RIGHT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 9)) "Diagonal Dn R"))
        (set-field! f_DIAGONAL_DOWN_LEFT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 10)) "Diagonal Dn L"))
        (set-field! f_DIAGONAL_UP_RIGHT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 11)) "Diagonal Up R"))
        (set-field! f_DIAGONAL_UP_LEFT this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 12)) "Diagonal Up L"))
        (set-field! f_SCROLL_UP this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 13)) "Scroll Up"))
        (set-field! f_SCROLL_DOWN this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 14)) "Scroll Down"))
        (set-field! f_NO_MOTION this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 2)) "No Motion"))
        (set-field! f_LAST_MOTION this (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 19)) "Last Motion"))))
  this)

(define (TouchMotionGestureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (TouchMotionGestureFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! TouchMotionGestureFactory.jcell_instance (TouchMotionGestureFactory.jnew_0))))
        (jreturn (TouchMotionGestureFactory.jstatic_instance)))))



