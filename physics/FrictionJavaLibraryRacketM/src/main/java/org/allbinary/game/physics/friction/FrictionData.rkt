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
;; package org.allbinary.game.physics.friction

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define FrictionData%
  (class JObject%
    (super-new)))
(define (FrictionData.jclassValue) FrictionData%)

(define FrictionData.jcell_FRICTION_DENOMINATOR 'jnone)
(define (FrictionData.jstatic_FRICTION_DENOMINATOR)
  (when (eq? FrictionData.jcell_FRICTION_DENOMINATOR 'jnone) (set! FrictionData.jcell_FRICTION_DENOMINATOR 100))
  FrictionData.jcell_FRICTION_DENOMINATOR)
(define (FrictionData.jsetstatic_FRICTION_DENOMINATOR value) (set! FrictionData.jcell_FRICTION_DENOMINATOR value))

(define (FrictionData.jnew_0)
  (define this (new FrictionData% [jclass "FrictionData"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (FrictionData.jm_getFrictionDenominator_0)
    (let ()
      (let/ec jreturn
        (jreturn (FrictionData.jstatic_FRICTION_DENOMINATOR)))))



