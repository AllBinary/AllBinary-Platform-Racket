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

(define UpOrientationInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (UpOrientationInputToGameKeyEventAction.jclassValue) UpOrientationInputToGameKeyEventAction%)

(define UpOrientationInputToGameKeyEventAction.jcell_instance 'jnone)
(define (UpOrientationInputToGameKeyEventAction.jstatic_instance)
  (when (eq? UpOrientationInputToGameKeyEventAction.jcell_instance 'jnone) (set! UpOrientationInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  UpOrientationInputToGameKeyEventAction.jcell_instance)
(define (UpOrientationInputToGameKeyEventAction.jsetstatic_instance value) (set! UpOrientationInputToGameKeyEventAction.jcell_instance value))

(define (UpOrientationInputToGameKeyEventAction.jnew_0)
  (define this (new UpOrientationInputToGameKeyEventAction% [jclass "UpOrientationInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (UpOrientationInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (UpOrientationInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! UpOrientationInputToGameKeyEventAction.jcell_instance (UpOrientationInputToGameKeyEventAction.jnew_0))))
        (jreturn (UpOrientationInputToGameKeyEventAction.jstatic_instance)))))



