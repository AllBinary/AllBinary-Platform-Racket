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

(define DownTouchInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (DownTouchInputToGameKeyEventAction.jclassValue) DownTouchInputToGameKeyEventAction%)

(define DownTouchInputToGameKeyEventAction.jcell_instance 'jnone)
(define (DownTouchInputToGameKeyEventAction.jstatic_instance)
  (when (eq? DownTouchInputToGameKeyEventAction.jcell_instance 'jnone) (set! DownTouchInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  DownTouchInputToGameKeyEventAction.jcell_instance)
(define (DownTouchInputToGameKeyEventAction.jsetstatic_instance value) (set! DownTouchInputToGameKeyEventAction.jcell_instance value))

(define (DownTouchInputToGameKeyEventAction.jnew_0)
  (define this (new DownTouchInputToGameKeyEventAction% [jclass "DownTouchInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (DownTouchInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (DownTouchInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! DownTouchInputToGameKeyEventAction.jcell_instance (DownTouchInputToGameKeyEventAction.jnew_0))))
        (jreturn (DownTouchInputToGameKeyEventAction.jstatic_instance)))))



