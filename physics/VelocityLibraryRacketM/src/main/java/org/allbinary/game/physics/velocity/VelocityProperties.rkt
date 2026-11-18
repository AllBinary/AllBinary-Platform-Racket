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
;; package org.allbinary.game.physics.velocity

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BasicVelocityProperties.rkt"
  "./VelocityInterface.rkt")
(provide (all-defined-out))

(define VelocityProperties%
  (class BasicVelocityProperties%
    (super-new)
    (field [f_maxForwardVelocity 0])
    (field [f_maxReverseVelocity 0])
    (define/public (jm_getMaxForwardVelocity_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxForwardVelocity this)))))
    (define/public (jm_setMaxForwardVelocity_1 _maxForwardVelocity)
    (let ()
      (let/ec jreturn
        (set-field! f_maxForwardVelocity this _maxForwardVelocity))))
    (define/public (jm_getMaxReverseVelocity_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxReverseVelocity this)))))
    (define/public (jm_setMaxReverseVelocity_1 _maxReverseVelocity)
    (let ()
      (let/ec jreturn
        (set-field! f_maxReverseVelocity this _maxReverseVelocity))))
    (define/public (jm_limitMaxXYForwardVelocity_0)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxXYVelocity_1 (send this jm_getMaxForwardVelocity_0)))))
    (define/public (jm_limitMaxXYReverseVelocity_0)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxXYVelocity_1 (send this jm_getMaxReverseVelocity_0)))))
    (define/public (jm_limitMaxYForwardVelocity_0)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxYVelocity_1 (send this jm_getMaxForwardVelocity_0)))))
    (define/public (jm_limitMaxYReverseVelocity_0)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxYVelocity_1 (send this jm_getMaxReverseVelocity_0)))))
    (define/public (jm_limitMaxXForwardVelocity_0)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxXVelocity_1 (send this jm_getMaxForwardVelocity_0)))))
    (define/public (jm_limitMaxXReverseVelocity_0)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxXVelocity_1 (send this jm_getMaxReverseVelocity_0)))))
    (define/public (jm_isOverXYMaxForwardVelocity_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_isOverXYMaxVelocity_1 (send this jm_getMaxForwardVelocity_0))))))
    (define/public (jm_isOverXYMaxReverseVelocity_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_isOverXYMaxVelocity_1 (send this jm_getMaxReverseVelocity_0))))))
    (define/public (jm_limitXYToForwardAndReverseMaxVelocity_0)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxXYForwardVelocity_0)
        (send this jm_limitMaxXYReverseVelocity_0))))
    (define/public (jm_limitMaxXYVelocity_1 _maxVelocity)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxXVelocity_1 _maxVelocity)
        (send this jm_limitMaxYVelocity_1 _maxVelocity))))
    (define/public (jm_limitMaxPositiveYVelocity_1 _maxVelocity)
    (let ()
      (let/ec jreturn
        (when (> (JR.className (get-field f_velocityYBasicDecimal this)) _maxVelocity)
            (begin
            (JR.className (get-field f_velocityYBasicDecimal this)))))))
    (define/public (jm_limitMaxNegativeYVelocity_1 _maxVelocity)
    (let ()
      (let/ec jreturn
        (when (< (JR.className (get-field f_velocityYBasicDecimal this)) (JR.i32 (- _maxVelocity)))
            (begin
            (JR.className (get-field f_velocityYBasicDecimal this)))))))
    (define/public (jm_limitMaxYVelocity_1 _maxVelocity)
    (let ()
      (let/ec jreturn
        (send this jm_limitMaxPositiveYVelocity_1 _maxVelocity)
        (send this jm_limitMaxNegativeYVelocity_1 _maxVelocity))))
    (define/public (jm_limitMaxXVelocity_1 _maxVelocity)
    (let ()
      (let/ec jreturn
        (when (> (JR.className (get-field f_velocityXBasicDecimal this)) _maxVelocity)
            (begin
            (JR.className (get-field f_velocityXBasicDecimal this))))
        (when (< (JR.className (get-field f_velocityXBasicDecimal this)) (JR.i32 (- _maxVelocity)))
            (begin
            (JR.className (get-field f_velocityXBasicDecimal this)))))))
    (define/public (jm_isOverXYMaxVelocity_1 _maxVelocity)
    (let ()
      (let/ec jreturn
        (when (> (JR.className (get-field f_velocityXBasicDecimal this)) _maxVelocity)
            (begin
            (jreturn #t)))
        (when (< (JR.className (get-field f_velocityXBasicDecimal this)) (JR.i32 (- _maxVelocity)))
            (begin
            (jreturn #t)))
        (when (> (JR.className (get-field f_velocityYBasicDecimal this)) _maxVelocity)
            (begin
            (jreturn #t)))
        (when (< (JR.className (get-field f_velocityYBasicDecimal this)) (JR.i32 (- _maxVelocity)))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/override (jm_setVelocityi_3 _magnitude _angle _otherAngle)
    (let ()
      (let/ec jreturn
        (super jm_setVelocityi_3 _magnitude _angle _otherAngle)
        (send this jm_limitXYToForwardAndReverseMaxVelocity_0))))
    (define/override (jm_addVelocityi_3 _magnitude _angle _otherAngle)
    (let ()
      (let/ec jreturn
        (super jm_addVelocityi_3 _magnitude _angle _otherAngle)
        (send this jm_limitXYToForwardAndReverseMaxVelocity_0))))))
(define (VelocityProperties.jclassValue) VelocityProperties%)

(define VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES 'jnone)
(define (VelocityProperties.jstatic_NULL_VELOCITY_PROPERTIES)
  (when (eq? VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES 'jnone) (set! VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES (VelocityProperties.jnew_2 0 0)))
  VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES)
(define (VelocityProperties.jsetstatic_NULL_VELOCITY_PROPERTIES value) (set! VelocityProperties.jcell_NULL_VELOCITY_PROPERTIES value))

(define (VelocityProperties.jnew_2 _maxForwardVelocity _maxReverseVelocity)
  (define this (new VelocityProperties% [jclass "VelocityProperties"]))
    
    
    (let ()
      (let/ec jreturn
        (send this jm_setMaxForwardVelocity_1 _maxForwardVelocity)
        (send this jm_setMaxReverseVelocity_1 _maxReverseVelocity)))
  this)



