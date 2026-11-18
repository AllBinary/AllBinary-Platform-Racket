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
;; package org.allbinary.game.configuration

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(provide (all-defined-out))

(define GameSpeed%
  (class JObject%
    (super-new)
    (define/public (jm_getSpeed_0)
    (let ([_speedGameConfiguration JR.null])
      (let/ec jreturn
        (set! _speedGameConfiguration (get-field f_SPEED (GameConfigurationCentral.jm_getInstance_0)))
        (jreturn (JR.i32 (+ (JR.i32 (- (JR.className (send _speedGameConfiguration jm_getMaxValue_0)) (JR.className (send _speedGameConfiguration jm_getValue_0)))) 1))))))
    (define/public (jm_getDelay_0)
    (let ([_speedGameConfiguration JR.null])
      (let/ec jreturn
        (set! _speedGameConfiguration (get-field f_SPEED (GameConfigurationCentral.jm_getInstance_0)))
        (jreturn (JR.i32 (* 19 (JR.i32 (- (JR.className (send _speedGameConfiguration jm_getMaxValue_0)) (JR.className (send _speedGameConfiguration jm_getValue_0))))))))))))
(define (GameSpeed.jclassValue) GameSpeed%)

(define GameSpeed.jcell_instance 'jnone)
(define (GameSpeed.jstatic_instance)
  (when (eq? GameSpeed.jcell_instance 'jnone) (set! GameSpeed.jcell_instance (GameSpeed.jnew_0)))
  GameSpeed.jcell_instance)
(define (GameSpeed.jsetstatic_instance value) (set! GameSpeed.jcell_instance value))

(define (GameSpeed.jnew_0)
  (define this (new GameSpeed% [jclass "GameSpeed"]))
  this)

(define (GameSpeed.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameSpeed.jstatic_instance)))))



