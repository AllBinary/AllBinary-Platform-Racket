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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CancelTouchButtonInputFactory%
  (class JObject%
    (super-new)
    (field [f_cancelInputArray JR.null])
    (define/public (jm_getCancel_1 _touchButtonInput)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_cancelInputArray this) (send _touchButtonInput jm_getSourceId_0))))))))
(define (CancelTouchButtonInputFactory.jclassValue) CancelTouchButtonInputFactory%)

(define CancelTouchButtonInputFactory.jcell_instance 'jnone)
(define (CancelTouchButtonInputFactory.jstatic_instance)
  (when (eq? CancelTouchButtonInputFactory.jcell_instance 'jnone) (set! CancelTouchButtonInputFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  CancelTouchButtonInputFactory.jcell_instance)
(define (CancelTouchButtonInputFactory.jsetstatic_instance value) (set! CancelTouchButtonInputFactory.jcell_instance value))

(define (CancelTouchButtonInputFactory.jnew_0)
  (define this (new CancelTouchButtonInputFactory% [jclass "CancelTouchButtonInputFactory"]))
    (set-field! f_cancelInputArray this (JR.newArray JR.null (get-field f_MAX (InputFactory.jm_getInstance_0))))
    (let ([_basicTouchInputFactory JR.null][_index JR.null])
      (let/ec jreturn
        (set! _basicTouchInputFactory (BasicTouchInputFactory.jm_getInstance_0))
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_cancelInputArray this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (vector-set! (get-field f_cancelInputArray this) _index (get-field f_NONE _basicTouchInputFactory)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (vector-set! (get-field f_cancelInputArray this) (JR.className (get-field f_UP _basicTouchInputFactory)) (get-field f_DOWN _basicTouchInputFactory))
        (vector-set! (get-field f_cancelInputArray this) (JR.className (get-field f_DOWN _basicTouchInputFactory)) (get-field f_UP _basicTouchInputFactory))
        (vector-set! (get-field f_cancelInputArray this) (JR.className (get-field f_LEFT _basicTouchInputFactory)) (get-field f_RIGHT _basicTouchInputFactory))
        (vector-set! (get-field f_cancelInputArray this) (JR.className (get-field f_RIGHT _basicTouchInputFactory)) (get-field f_LEFT _basicTouchInputFactory))))
  this)

(define (CancelTouchButtonInputFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (CancelTouchButtonInputFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! CancelTouchButtonInputFactory.jcell_instance (CancelTouchButtonInputFactory.jnew_0))))
        (jreturn (CancelTouchButtonInputFactory.jstatic_instance)))))



