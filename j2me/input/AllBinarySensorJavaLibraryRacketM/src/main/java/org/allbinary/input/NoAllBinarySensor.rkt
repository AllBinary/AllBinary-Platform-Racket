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
;; package org.allbinary.input

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./AllBinarySensor.rkt")
(provide (all-defined-out))

(define NoAllBinarySensor%
  (class AllBinarySensor%
    (super-new)))
(define (NoAllBinarySensor.jclassValue) NoAllBinarySensor%)

(define NoAllBinarySensor.jcell_instance 'jnone)
(define (NoAllBinarySensor.jstatic_instance)
  (when (eq? NoAllBinarySensor.jcell_instance 'jnone) (set! NoAllBinarySensor.jcell_instance (NoAllBinarySensor.jnew_0)))
  NoAllBinarySensor.jcell_instance)
(define (NoAllBinarySensor.jsetstatic_instance value) (set! NoAllBinarySensor.jcell_instance value))

(define (NoAllBinarySensor.jnew_0)
  (define this (new NoAllBinarySensor% [jclass "NoAllBinarySensor"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NoAllBinarySensor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoAllBinarySensor.jstatic_instance)))))



