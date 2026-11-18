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

(define DiagonalUpLeftTouchInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (DiagonalUpLeftTouchInputToGameKeyEventAction.jclassValue) DiagonalUpLeftTouchInputToGameKeyEventAction%)

(define DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance 'jnone)
(define (DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance)
  (when (eq? DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance 'jnone) (set! DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance)
(define (DiagonalUpLeftTouchInputToGameKeyEventAction.jsetstatic_instance value) (set! DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance value))

(define (DiagonalUpLeftTouchInputToGameKeyEventAction.jnew_0)
  (define this (new DiagonalUpLeftTouchInputToGameKeyEventAction% [jclass "DiagonalUpLeftTouchInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (DiagonalUpLeftTouchInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! DiagonalUpLeftTouchInputToGameKeyEventAction.jcell_instance (DiagonalUpLeftTouchInputToGameKeyEventAction.jnew_0))))
        (jreturn (DiagonalUpLeftTouchInputToGameKeyEventAction.jstatic_instance)))))



