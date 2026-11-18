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
;; package org.allbinary.input.motion.gyro.action

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/input/gyro/OrientationMotionGestureFactory.rkt" (OrientationMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define RollLeftOrientationInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (RollLeftOrientationInputToGameKeyEventAction.jclassValue) RollLeftOrientationInputToGameKeyEventAction%)

(define RollLeftOrientationInputToGameKeyEventAction.jcell_instance 'jnone)
(define (RollLeftOrientationInputToGameKeyEventAction.jstatic_instance)
  (when (eq? RollLeftOrientationInputToGameKeyEventAction.jcell_instance 'jnone) (set! RollLeftOrientationInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  RollLeftOrientationInputToGameKeyEventAction.jcell_instance)
(define (RollLeftOrientationInputToGameKeyEventAction.jsetstatic_instance value) (set! RollLeftOrientationInputToGameKeyEventAction.jcell_instance value))

(define (RollLeftOrientationInputToGameKeyEventAction.jnew_0)
  (define this (new RollLeftOrientationInputToGameKeyEventAction% [jclass "RollLeftOrientationInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (RollLeftOrientationInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (RollLeftOrientationInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! RollLeftOrientationInputToGameKeyEventAction.jcell_instance (RollLeftOrientationInputToGameKeyEventAction.jnew_0))))
        (jreturn (RollLeftOrientationInputToGameKeyEventAction.jstatic_instance)))))



