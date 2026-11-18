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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/input/mapping/PersistentInputMapping.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings.rkt" (GamePersistanceStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/button/BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/gesture/TrackballMotionGestureFactory.rkt" (TrackballMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["./PCKeyFactory.rkt" (PCKeyFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PCGameInputMapping%
  (class PersistentInputMapping%
    (super-new)
    (define/override (jm_init_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (PCKeyFactory.jm_getInstance_0)
        (TouchMotionGestureFactory.jm_getInstance_0)
        (TrackballMotionGestureFactory.jm_getInstance_0)
        (BasicTouchInputFactory.jm_getInstance_0)
        (super jm_init_1 _abeClientInformation)
        (when (or (= (send this jm_getTotalMapped_0) 0) (send this jm_isDefaultNew_0))
            (begin
            (JR.className (send this jm_getInputMapping_0))
            (send this jm_save_1 _abeClientInformation))))))
    (define/override (jm_isDelete_1 _input)
    (let ()
      (let/ec jreturn
        (if (eq? _input (get-field f_DEL (PCKeyFactory.jm_getInstance_0)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/override (jm_isSystemInput_1 _input)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (PCGameInputMapping.jclassValue) PCGameInputMapping%)

(define (PCGameInputMapping.jnew_0)
  (define this (new PCGameInputMapping% [jclass "PCGameInputMapping"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



