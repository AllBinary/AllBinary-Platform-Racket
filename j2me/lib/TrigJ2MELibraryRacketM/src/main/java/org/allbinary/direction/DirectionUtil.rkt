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
;; package org.allbinary.direction

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["./DirectionFactory.rkt" (DirectionFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define DirectionUtil%
  (class JObject%
    (super-new)
    (field [f_directionArray JR.null])
    (field [f_directionArray2 JR.null])
    (define/public (jm_getAngle_1 _direction)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_directionArray2 this) (send _direction jm_getValue_0))))))
    (define/public (jm_getFrameAngle_1 _direction)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_directionArray this) (send _direction jm_getValue_0))))))))
(define (DirectionUtil.jclassValue) DirectionUtil%)

(define DirectionUtil.jcell_instance 'jnone)
(define (DirectionUtil.jstatic_instance)
  (when (eq? DirectionUtil.jcell_instance 'jnone) (set! DirectionUtil.jcell_instance (DirectionUtil.jnew_0)))
  DirectionUtil.jcell_instance)
(define (DirectionUtil.jsetstatic_instance value) (set! DirectionUtil.jcell_instance value))

(define (DirectionUtil.jnew_0)
  (define this (new DirectionUtil% [jclass "DirectionUtil"]))
    (set-field! f_directionArray this (JR.newArray JR.null 10))
    (set-field! f_directionArray2 this (JR.newArray JR.null 10))
    (let ([_angleFactory JR.null][_directionFactory JR.null])
      (let/ec jreturn
        (set! _angleFactory (AngleFactory.jm_getInstance_0))
        (set! _directionFactory (DirectionFactory.jm_getInstance_0))
        (vector-set! (get-field f_directionArray this) (JR.className (get-field f_LEFT _directionFactory)) (get-field f_LEFT _angleFactory))
        (vector-set! (get-field f_directionArray this) (JR.className (get-field f_RIGHT _directionFactory)) (get-field f_RIGHT _angleFactory))
        (vector-set! (get-field f_directionArray this) (JR.className (get-field f_UP _directionFactory)) (get-field f_UP _angleFactory))
        (vector-set! (get-field f_directionArray this) (JR.className (get-field f_DOWN _directionFactory)) (get-field f_DOWN _angleFactory))
        (vector-set! (get-field f_directionArray2 this) (JR.className (get-field f_LEFT _directionFactory)) (get-field f_LEFT _angleFactory))
        (vector-set! (get-field f_directionArray2 this) (JR.className (get-field f_RIGHT _directionFactory)) (get-field f_RIGHT _angleFactory))
        (vector-set! (get-field f_directionArray2 this) (JR.className (get-field f_UP _directionFactory)) (get-field f_UP _angleFactory))
        (vector-set! (get-field f_directionArray2 this) (JR.className (get-field f_DOWN _directionFactory)) (get-field f_DOWN _angleFactory))))
  this)

(define (DirectionUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DirectionUtil.jstatic_instance)))))



