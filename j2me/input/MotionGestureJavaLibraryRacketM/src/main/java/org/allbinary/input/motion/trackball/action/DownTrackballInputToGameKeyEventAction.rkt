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

(define DownTrackballInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)))
(define (DownTrackballInputToGameKeyEventAction.jclassValue) DownTrackballInputToGameKeyEventAction%)

(define DownTrackballInputToGameKeyEventAction.jcell_instance 'jnone)
(define (DownTrackballInputToGameKeyEventAction.jstatic_instance)
  (when (eq? DownTrackballInputToGameKeyEventAction.jcell_instance 'jnone) (set! DownTrackballInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  DownTrackballInputToGameKeyEventAction.jcell_instance)
(define (DownTrackballInputToGameKeyEventAction.jsetstatic_instance value) (set! DownTrackballInputToGameKeyEventAction.jcell_instance value))

(define (DownTrackballInputToGameKeyEventAction.jnew_0)
  (define this (new DownTrackballInputToGameKeyEventAction% [jclass "DownTrackballInputToGameKeyEventAction"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (DownTrackballInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (DownTrackballInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! DownTrackballInputToGameKeyEventAction.jcell_instance (DownTrackballInputToGameKeyEventAction.jnew_0))))
        (jreturn (DownTrackballInputToGameKeyEventAction.jstatic_instance)))))



