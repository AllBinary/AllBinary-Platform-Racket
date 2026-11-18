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
;; package org.allbinary.game.layer.special

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_UP Canvas.jstatic_DOWN Canvas.jstatic_RIGHT Canvas.jstatic_LEFT Canvas.jstatic_KEY_NUM0 Canvas.jstatic_KEY_NUM5)])
(lazy-require ["./SpecialUpGameInputProcessor.rkt" (SpecialUpGameInputProcessor.jnew_1)])
(lazy-require ["./SpecialDownGameInputProcessor.rkt" (SpecialDownGameInputProcessor.jnew_1)])
(lazy-require ["./SpecialRightGameInputProcessor.rkt" (SpecialRightGameInputProcessor.jnew_1)])
(lazy-require ["./SpecialLeftGameInputProcessor.rkt" (SpecialLeftGameInputProcessor.jnew_1)])
(lazy-require ["./Special1GameInputProcessor.rkt" (Special1GameInputProcessor.jnew_1)])
(lazy-require ["./Special3GameInputProcessor.rkt" (Special3GameInputProcessor.jnew_1)])
(lazy-require ["./SpecialAnalogUpGameInputProcessor.rkt" (SpecialAnalogUpGameInputProcessor.jnew_1)])
(lazy-require ["./SpecialAnalogDownGameInputProcessor.rkt" (SpecialAnalogDownGameInputProcessor.jnew_1)])
(lazy-require ["./SpecialAnalogRightGameInputProcessor.rkt" (SpecialAnalogRightGameInputProcessor.jnew_1)])
(lazy-require ["./SpecialAnalogLeftGameInputProcessor.rkt" (SpecialAnalogLeftGameInputProcessor.jnew_1)])
(lazy-require ["./SpecialAnalogLeftTriggerGameInputProcessor.rkt" (SpecialAnalogLeftTriggerGameInputProcessor.jnew_1)])
(lazy-require ["./SpecialAnalogRightTriggerGameInputProcessor.rkt" (SpecialAnalogRightTriggerGameInputProcessor.jnew_1)])
(provide (all-defined-out))

(define AnalogInputBuilder%
  (class JObject%
    (super-new)
    (define/public (jm_disable_2 _inputProcessorArray _collidableDestroyableDamageableLayer)
    (let ()
      (let/ec jreturn
        (vector-set! _inputProcessorArray (Canvas.jstatic_UP) (SpecialUpGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_DOWN) (SpecialDownGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_RIGHT) (SpecialRightGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_LEFT) (SpecialLeftGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_KEY_NUM0) (Special1GameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_KEY_NUM5) (Special3GameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer)))))
    (define/public (jm_enable_2 _inputProcessorArray _collidableDestroyableDamageableLayer)
    (let ()
      (let/ec jreturn
        (vector-set! _inputProcessorArray (Canvas.jstatic_UP) (SpecialAnalogUpGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_DOWN) (SpecialAnalogDownGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_RIGHT) (SpecialAnalogRightGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_LEFT) (SpecialAnalogLeftGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_KEY_NUM0) (SpecialAnalogLeftTriggerGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (vector-set! _inputProcessorArray (Canvas.jstatic_KEY_NUM5) (SpecialAnalogRightTriggerGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer)))))))
(define (AnalogInputBuilder.jclassValue) AnalogInputBuilder%)

(define AnalogInputBuilder.jcell_instance 'jnone)
(define (AnalogInputBuilder.jstatic_instance)
  (when (eq? AnalogInputBuilder.jcell_instance 'jnone) (set! AnalogInputBuilder.jcell_instance (AnalogInputBuilder.jnew_0)))
  AnalogInputBuilder.jcell_instance)
(define (AnalogInputBuilder.jsetstatic_instance value) (set! AnalogInputBuilder.jcell_instance value))

(define (AnalogInputBuilder.jnew_0)
  (define this (new AnalogInputBuilder% [jclass "AnalogInputBuilder"]))
  this)

(define (AnalogInputBuilder.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnalogInputBuilder.jstatic_instance)))))



