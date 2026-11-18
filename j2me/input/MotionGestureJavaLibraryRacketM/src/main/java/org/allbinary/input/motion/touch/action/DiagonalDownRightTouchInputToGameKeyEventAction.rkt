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

(define DiagonalDownRightTouchInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (DiagonalDownRightTouchInputToGameKeyEventAction.jclassValue) DiagonalDownRightTouchInputToGameKeyEventAction%)

(define DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance 'jnone)
(define (DiagonalDownRightTouchInputToGameKeyEventAction.jstatic_instance)
  (when (eq? DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance 'jnone) (set! DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance)
(define (DiagonalDownRightTouchInputToGameKeyEventAction.jsetstatic_instance value) (set! DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance value))

(define (DiagonalDownRightTouchInputToGameKeyEventAction.jnew_0)
  (define this (new DiagonalDownRightTouchInputToGameKeyEventAction% [jclass "DiagonalDownRightTouchInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (DiagonalDownRightTouchInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (DiagonalDownRightTouchInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! DiagonalDownRightTouchInputToGameKeyEventAction.jcell_instance (DiagonalDownRightTouchInputToGameKeyEventAction.jnew_0))))
        (jreturn (DiagonalDownRightTouchInputToGameKeyEventAction.jstatic_instance)))))



