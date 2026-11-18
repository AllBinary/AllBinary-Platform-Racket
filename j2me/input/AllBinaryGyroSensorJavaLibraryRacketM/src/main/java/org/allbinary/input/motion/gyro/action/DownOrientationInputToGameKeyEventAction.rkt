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

(define DownOrientationInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (DownOrientationInputToGameKeyEventAction.jclassValue) DownOrientationInputToGameKeyEventAction%)

(define DownOrientationInputToGameKeyEventAction.jcell_instance 'jnone)
(define (DownOrientationInputToGameKeyEventAction.jstatic_instance)
  (when (eq? DownOrientationInputToGameKeyEventAction.jcell_instance 'jnone) (set! DownOrientationInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  DownOrientationInputToGameKeyEventAction.jcell_instance)
(define (DownOrientationInputToGameKeyEventAction.jsetstatic_instance value) (set! DownOrientationInputToGameKeyEventAction.jcell_instance value))

(define (DownOrientationInputToGameKeyEventAction.jnew_0)
  (define this (new DownOrientationInputToGameKeyEventAction% [jclass "DownOrientationInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (DownOrientationInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (DownOrientationInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! DownOrientationInputToGameKeyEventAction.jcell_instance (DownOrientationInputToGameKeyEventAction.jnew_0))))
        (jreturn (DownOrientationInputToGameKeyEventAction.jstatic_instance)))))



