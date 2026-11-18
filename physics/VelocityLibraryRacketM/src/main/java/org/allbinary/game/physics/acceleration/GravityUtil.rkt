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
;; package org.allbinary.game.physics.acceleration

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GravityUtil%
  (class JObject%
    (super-new)
    (field [f_GAME_GRAVITY_VELOCITY 0])
    (field [f_MAX_GAME_VELOCITY 0])
    (define/public (jm_process_2 _velocityProperties _customGravity)
    (let ()
      (let/ec jreturn
        (JR.className (send _velocityProperties jm_getVelocityYBasicDecimalP_0)))))))
(define (GravityUtil.jclassValue) GravityUtil%)

(define GravityUtil.jcell_instance 'jnone)
(define (GravityUtil.jstatic_instance)
  (when (eq? GravityUtil.jcell_instance 'jnone) (set! GravityUtil.jcell_instance (GravityUtil.jnew_0)))
  GravityUtil.jcell_instance)
(define (GravityUtil.jsetstatic_instance value) (set! GravityUtil.jcell_instance value))

(define (GravityUtil.jnew_0)
  (define this (new GravityUtil% [jclass "GravityUtil"]))
    (set-field! f_GAME_GRAVITY_VELOCITY this 1800)
    (set-field! f_MAX_GAME_VELOCITY this 18000)
  this)

(define (GravityUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GravityUtil.jstatic_instance)))))



