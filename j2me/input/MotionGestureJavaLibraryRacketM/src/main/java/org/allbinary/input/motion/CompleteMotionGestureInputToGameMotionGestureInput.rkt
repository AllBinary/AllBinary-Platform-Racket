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
;; package org.allbinary.input.motion

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.rkt" (MotionGestureConfigurationFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction.rkt" (DiagonalDownLeftTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction.rkt" (DiagonalDownRightTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction.rkt" (DiagonalUpLeftTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction.rkt" (DiagonalUpRightTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction.rkt" (DownTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction.rkt" (LeftTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction.rkt" (ReleaseTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction.rkt" (RightTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction.rkt" (UpTouchInputToGameKeyEventAction.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define CompleteMotionGestureInputToGameMotionGestureInput%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_init_0)
    (let ([_commonStrings JR.null][_motionGestureConfiguration JR.null][_touchMotionGestureFactory JR.null][_list JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_INIT _commonStrings) _e))])
            (PreLogUtil.jm_put_3 "Compound Motion Gestures" this (get-field f_INIT _commonStrings))
            (set! _motionGestureConfiguration (MotionGestureConfigurationFactory.jm_getInstance_0))
            (set! _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_DIAGONAL_DOWN_LEFT _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (DiagonalDownLeftTouchInputToGameKeyEventAction.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_DIAGONAL_DOWN_RIGHT _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (DiagonalDownRightTouchInputToGameKeyEventAction.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_DIAGONAL_UP_LEFT _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (DiagonalUpLeftTouchInputToGameKeyEventAction.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_DIAGONAL_UP_RIGHT _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (DiagonalUpRightTouchInputToGameKeyEventAction.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_LEFT _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (LeftTouchInputToGameKeyEventAction.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_RIGHT _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (RightTouchInputToGameKeyEventAction.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_DOWN _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (DownTouchInputToGameKeyEventAction.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_UP _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (UpTouchInputToGameKeyEventAction.jm_getInstance_0))
            (set! _list (BasicArrayListD.jnew_0))
            (send _list jm_add_1 (get-field f_RELEASED _touchMotionGestureFactory))
            (send _motionGestureConfiguration jm_addMotionGestureAction_2 _list (ReleaseTouchInputToGameKeyEventAction.jm_getInstance_0))))))))
(define (CompleteMotionGestureInputToGameMotionGestureInput.jclassValue) CompleteMotionGestureInputToGameMotionGestureInput%)

(define CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance 'jnone)
(define (CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance)
  (when (eq? CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance 'jnone) (set! CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance (CompleteMotionGestureInputToGameMotionGestureInput.jnew_0)))
  CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance)
(define (CompleteMotionGestureInputToGameMotionGestureInput.jsetstatic_instance value) (set! CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance value))

(define (CompleteMotionGestureInputToGameMotionGestureInput.jnew_0)
  (define this (new CompleteMotionGestureInputToGameMotionGestureInput% [jclass "CompleteMotionGestureInputToGameMotionGestureInput"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)

(define (CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance)))))



