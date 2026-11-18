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

(define LeftOrientationInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (LeftOrientationInputToGameKeyEventAction.jclassValue) LeftOrientationInputToGameKeyEventAction%)

(define LeftOrientationInputToGameKeyEventAction.jcell_instance 'jnone)
(define (LeftOrientationInputToGameKeyEventAction.jstatic_instance)
  (when (eq? LeftOrientationInputToGameKeyEventAction.jcell_instance 'jnone) (set! LeftOrientationInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  LeftOrientationInputToGameKeyEventAction.jcell_instance)
(define (LeftOrientationInputToGameKeyEventAction.jsetstatic_instance value) (set! LeftOrientationInputToGameKeyEventAction.jcell_instance value))

(define (LeftOrientationInputToGameKeyEventAction.jnew_0)
  (define this (new LeftOrientationInputToGameKeyEventAction% [jclass "LeftOrientationInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (LeftOrientationInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (LeftOrientationInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! LeftOrientationInputToGameKeyEventAction.jcell_instance (LeftOrientationInputToGameKeyEventAction.jnew_0))))
        (jreturn (LeftOrientationInputToGameKeyEventAction.jstatic_instance)))))



