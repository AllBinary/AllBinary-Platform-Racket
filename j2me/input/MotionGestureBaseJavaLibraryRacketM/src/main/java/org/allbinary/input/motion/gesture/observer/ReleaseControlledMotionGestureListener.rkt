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
;; package org.allbinary.input.motion.gesture.observer

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "./MotionGestureEventListener.rkt")
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define ReleaseControlledMotionGestureListener%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_currentMotionGesture JR.null])
    (field [f_isMouseGestureOccurring #f])
    (field [f_motionGestureCollection JR.null])
    (field [f_signed JR.null])
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)) this))))
    (define/public (jm_onUpMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onDownMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onLeftMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onRightMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onDiagonalDownRightMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onDiagonalDownLeftMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onDiagonalUpRightMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onDiagonalUpLeftMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onPressedMotionGestureEvent_1 _ev)
    (let ()
      (let/ec jreturn
        (set-field! f_isMouseGestureOccurring this #t)
        (set-field! f_currentMotionGesture this (get-field f_NO_MOTION (TouchMotionGestureFactory.jm_getInstance_0)))
        (send this jm_onMotionGestureEvent_1 _ev))))
    (define/public (jm_onScrolledMotionGestureEvent_1 _motionGestureEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_released_1 _ev)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_EXCEPTION_LABEL (get-field f_commonStrings this))) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (send _ev jm_getMotionGesture_0))) jm_toString_0) this "release" _e))])
            (when (eq? (get-field f_isMouseGestureOccurring this) #f)
                (begin
                (jreturn (void))))
            (set-field! f_isMouseGestureOccurring this #f)
            (send (get-field f_signed this) jm_onMotionGestureCompleted_1 (get-field f_motionGestureCollection this))
            (send (get-field f_motionGestureCollection this) jm_clear_0)))))
    (define/public (jm_onMotionGestureEvent_1 _ev)
    (let ([_motionGestureInput JR.null])
      (let/ec jreturn
        (when (eq? (get-field f_isMouseGestureOccurring this) #f)
            (begin
            (jreturn (void))))
        (set! _motionGestureInput (send _ev jm_getMotionGesture_0))
        (if (eq? _motionGestureInput (get-field f_PRESSED (TouchMotionGestureFactory.jm_getInstance_0)))
            (begin
            (send this jm_onPressedMotionGestureEvent_1 _ev))
            (if (eq? _motionGestureInput (get-field f_RELEASED (TouchMotionGestureFactory.jm_getInstance_0)))
            (begin
            (send this jm_released_1 _ev))
            (begin
            (when (not (eq? (get-field f_currentMotionGesture this) _motionGestureInput))
                (begin
                (set-field! f_currentMotionGesture this _motionGestureInput)
                (send (get-field f_motionGestureCollection this) jm_add_1 (send _ev jm_getMotionGesture_0))))))))))))
(define (ReleaseControlledMotionGestureListener.jclassValue) ReleaseControlledMotionGestureListener%)

(define (ReleaseControlledMotionGestureListener.jnew_1 _signed)
  (define this (new ReleaseControlledMotionGestureListener% [jclass "ReleaseControlledMotionGestureListener"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_currentMotionGesture this (get-field f_NO_MOTION (TouchMotionGestureFactory.jm_getInstance_0)))
    (set-field! f_isMouseGestureOccurring this #f)
    (set-field! f_motionGestureCollection this (BasicArrayListD.jnew_0))
    
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)))
        (set-field! f_signed this _signed)))
  this)



