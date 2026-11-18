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
;; package org.allbinary.input.motion.gesture

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/input/Input.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define MotionGestureInput%
  (class Input%
    (super-new)))
(define (MotionGestureInput.jclassValue) MotionGestureInput%)

(define (MotionGestureInput.jnew_2 _id _name)
  (define this (new MotionGestureInput% [jclass "MotionGestureInput"]))
    (let ([_inputFactory JR.null])
      (let/ec jreturn
        (void)
        (set! _inputFactory (InputFactory.jm_getInstance_0))
        (send _inputFactory jm_add_2 (send this jm_getId_0) this)))
  this)



