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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.rkt"
  "../../../../../org/allbinary/graphics/paint/ProcessPaintable.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventHandler.rkt" (CompleteMotionGestureInputEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["./TouchButtonsMappingPaintable.rkt" (TouchButtonsMappingPaintable.jnew_1)])
(provide (all-defined-out))

(define TouchButtonsPaintableComposite%
  (class ProcessPaintable%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_inputMappingInterface JR.null])
    (field [f_touchButtonsPaintable JR.null])
    (field [f_timeHelper JR.null])
    (field [f_released #f])
    (field [f_METHOD_NAME JR.null])
    (field [f_RELEASE JR.null])
    (field [f_FAST_REPEAT JR.null])
    (field [f_IGNORE JR.null])
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onCompleteMotionGestureInputEvent_1 _completeMotionGestureInputEvent)
    (let ([_touchMotionGestureFactory JR.null][_gameKeyCompleteMotionGestureInputEvent JR.null][_gameKey JR.null][_motionGestureInput JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_METHOD_NAME this) _e))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this "onCompleteMotionGestureInputEvent")
            (set! _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
            (set! _gameKeyCompleteMotionGestureInputEvent _completeMotionGestureInputEvent)
            (set! _gameKey (send _gameKeyCompleteMotionGestureInputEvent jm_getGameKey_0))
            (set! _motionGestureInput (send _completeMotionGestureInputEvent jm_getMotionGestureInput_0))
            (when (eq? _motionGestureInput (get-field f_RELEASED _touchMotionGestureFactory))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 (get-field f_RELEASE this) this (get-field f_METHOD_NAME this))
                (set-field! f_released this #t)
                (jreturn (void))))
            (when (and (eq? _motionGestureInput (get-field f_NO_MOTION (TouchMotionGestureFactory.jm_getInstance_0))) (not (send (get-field f_timeHelper this) jm_isTimeTNT_0)))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 (get-field f_FAST_REPEAT this) this (get-field f_METHOD_NAME this))
                (jreturn (void))))
            (when (not (get-field f_released this))
                (begin
                (send (get-field f_logUtil this) jm_putF_3 (get-field f_IGNORE this) this (get-field f_METHOD_NAME this))
                (jreturn (void))))
            (set-field! f_released this #f)
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 "GameKey: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _gameKey)) jm_append_1 " MotionGestureInput: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _motionGestureInput)) jm_toString_0) this (get-field f_METHOD_NAME this))
            (send (get-field f_inputMappingInterface this) jm_processInputMapping_2 _gameKey _motionGestureInput)))))
    (define/override (jm_process_0)
    (let ()
      (let/ec jreturn
        (send (CompleteMotionGestureInputEventHandler.jm_getInstance_0) jm_removeListener_1 this))))))
(define (TouchButtonsPaintableComposite.jclassValue) TouchButtonsPaintableComposite%)

(define (TouchButtonsPaintableComposite.jnew_2 _inputMappingInterface _basicColor)
  (define this (new TouchButtonsPaintableComposite% [jclass "TouchButtonsPaintableComposite"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    (set-field! f_timeHelper this (TimeDelayHelper.jnew_1 250))
    (set-field! f_released this #t)
    (set-field! f_METHOD_NAME this "onCompleteMotionGestureInputEvent")
    (set-field! f_RELEASE this "Ignoring: MotionGestureInput Release")
    (set-field! f_FAST_REPEAT this "Ignoring: MotionGestureInput Repeated To Quickly")
    (set-field! f_IGNORE this "Ignoring: Until Released")
    (let ()
      (let/ec jreturn
        (set-field! f_inputMappingInterface this _inputMappingInterface)
        (send (CompleteMotionGestureInputEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this)
        (set-field! f_touchButtonsPaintable this (TouchButtonsMappingPaintable.jnew_1 _basicColor))))
  this)



