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
;; package org.allbinary.input.motion.trackball.action

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/TrackballMotionGestureFactory.rkt" (TrackballMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define UpTrackballInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (UpTrackballInputToGameKeyEventAction.jclassValue) UpTrackballInputToGameKeyEventAction%)

(define UpTrackballInputToGameKeyEventAction.jcell_instance 'jnone)
(define (UpTrackballInputToGameKeyEventAction.jstatic_instance)
  (when (eq? UpTrackballInputToGameKeyEventAction.jcell_instance 'jnone) (set! UpTrackballInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  UpTrackballInputToGameKeyEventAction.jcell_instance)
(define (UpTrackballInputToGameKeyEventAction.jsetstatic_instance value) (set! UpTrackballInputToGameKeyEventAction.jcell_instance value))

(define (UpTrackballInputToGameKeyEventAction.jnew_0)
  (define this (new UpTrackballInputToGameKeyEventAction% [jclass "UpTrackballInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (UpTrackballInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (UpTrackballInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! UpTrackballInputToGameKeyEventAction.jcell_instance (UpTrackballInputToGameKeyEventAction.jnew_0))))
        (jreturn (UpTrackballInputToGameKeyEventAction.jstatic_instance)))))



