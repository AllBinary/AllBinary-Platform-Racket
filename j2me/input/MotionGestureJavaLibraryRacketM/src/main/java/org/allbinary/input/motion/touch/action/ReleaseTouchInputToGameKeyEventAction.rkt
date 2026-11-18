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
(lazy-require ["../../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define ReleaseTouchInputToGameKeyEventAction%
  (class GameKeyCompleteMotionGestureInputEvent%
    (super-new)
    (field [f_NONE JR.null])
    (define/override (jm_update_0)
    (let ()
      (let/ec jreturn (void))))))
(define (ReleaseTouchInputToGameKeyEventAction.jclassValue) ReleaseTouchInputToGameKeyEventAction%)

(define ReleaseTouchInputToGameKeyEventAction.jcell_instance 'jnone)
(define (ReleaseTouchInputToGameKeyEventAction.jstatic_instance)
  (when (eq? ReleaseTouchInputToGameKeyEventAction.jcell_instance 'jnone) (set! ReleaseTouchInputToGameKeyEventAction.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  ReleaseTouchInputToGameKeyEventAction.jcell_instance)
(define (ReleaseTouchInputToGameKeyEventAction.jsetstatic_instance value) (set! ReleaseTouchInputToGameKeyEventAction.jcell_instance value))

(define (ReleaseTouchInputToGameKeyEventAction.jnew_0)
  (define this (new ReleaseTouchInputToGameKeyEventAction% [jclass "ReleaseTouchInputToGameKeyEventAction"]))
    (set-field! f_NONE this (get-field f_NONE (GameKeyFactory.jm_getInstance_0)))
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (void)
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (JR.className (get-field f_logUtil this)))])
            (send this jm_setGameKey_1 (get-field f_NONE this))
            (send this jm_setGameKeyEvent_1 (send (GameKeyEventFactory.jm_getInstance_0) jm_getInstanceForInput_2 this (get-field f_NONE this))))))
  this)

(define (ReleaseTouchInputToGameKeyEventAction.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (ReleaseTouchInputToGameKeyEventAction.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! ReleaseTouchInputToGameKeyEventAction.jcell_instance (ReleaseTouchInputToGameKeyEventAction.jnew_0))))
        (jreturn (ReleaseTouchInputToGameKeyEventAction.jstatic_instance)))))



