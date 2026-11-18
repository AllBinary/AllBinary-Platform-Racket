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
;; package org.allbinary.input.motion.touch.action

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define LeftTouchInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (LeftTouchInputToGameKeyEventAction.jclassValue) LeftTouchInputToGameKeyEventAction%)

(define LeftTouchInputToGameKeyEventAction.jcell_instance 'jnone)
(define (LeftTouchInputToGameKeyEventAction.jstatic_instance)
  (when (eq? LeftTouchInputToGameKeyEventAction.jcell_instance 'jnone) (set! LeftTouchInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  LeftTouchInputToGameKeyEventAction.jcell_instance)
(define (LeftTouchInputToGameKeyEventAction.jsetstatic_instance value) (set! LeftTouchInputToGameKeyEventAction.jcell_instance value))

(define (LeftTouchInputToGameKeyEventAction.jnew_0)
  (define this (new LeftTouchInputToGameKeyEventAction% [jclass "LeftTouchInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (LeftTouchInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (LeftTouchInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! LeftTouchInputToGameKeyEventAction.jcell_instance (LeftTouchInputToGameKeyEventAction.jnew_0))))
        (jreturn (LeftTouchInputToGameKeyEventAction.jstatic_instance)))))



