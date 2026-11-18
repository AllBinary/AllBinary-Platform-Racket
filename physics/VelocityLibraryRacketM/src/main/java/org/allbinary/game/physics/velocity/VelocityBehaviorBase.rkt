#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.game.physics.velocity

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define VelocityBehaviorBase%
  (class JObject%
    (super-new)
    (define/public (jm_reduce_3 _velocityProperties _nominator _denominator)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_reduceX_3 _velocityProperties _nominator _denominator)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_reduceY_3 _velocityProperties _nominator _denominator)
    (let ()
      (let/ec jreturn (void))))))
(define (VelocityBehaviorBase.jclassValue) VelocityBehaviorBase%)

(define (VelocityBehaviorBase.jnew_0)
  (define this (new VelocityBehaviorBase% [jclass "VelocityBehaviorBase"]))
  this)



