#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.logic.math

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define J2SEMath%
  (class JObject%
    (super-new)
    (define/public (jm_round_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn (round _value)))))
    (define/public (jm_abs_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn (if (< _value 0.0) (- _value) _value)))))
    (define/public (jm_absdouble_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn (if (< _value 0.0) (- _value) _value)))))))
(define (J2SEMath.jclassValue) J2SEMath%)

(define J2SEMath.jcell_instance 'jnone)
(define (J2SEMath.jstatic_instance)
  (when (eq? J2SEMath.jcell_instance 'jnone) (set! J2SEMath.jcell_instance (J2SEMath.jnew_0)))
  J2SEMath.jcell_instance)
(define (J2SEMath.jsetstatic_instance value) (set! J2SEMath.jcell_instance value))

(define (J2SEMath.jnew_0)
  (define this (new J2SEMath% [jclass "J2SEMath"]))
  this)

(define (J2SEMath.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (J2SEMath.jstatic_instance)))))



