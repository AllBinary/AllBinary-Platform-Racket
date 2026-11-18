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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BasicMenuInputProcessor.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_LEFT Canvas.jstatic_RIGHT Canvas.jstatic_UP Canvas.jstatic_DOWN Canvas.jstatic_FIRE)])
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory.rkt" (InputFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/SWTUtil.rkt" (SWTUtil.jstatic_isSWT)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory.rkt" (PrimaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/SelectSound.rkt" (SelectSound.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/thread/PrimaryThreadPool.rkt" (PrimaryThreadPool.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["./CommandRunnable.rkt" (CommandRunnable.jnew_2)])
(provide (all-defined-out))

;In general allow scrolling of the menu and selection the center item
(define CommandFormInputProcessor%
  (class BasicMenuInputProcessor%
    (super-new)
    (field [f_MOTION_GESTURE_SOURCE_ID 0])
    (field [f_CLICK_DELAY 0])
    (field [f_clickTimeHelper JR.null])
    (field [f_DOUBLE_CLICK_DELAY 0])
    (field [f_doubleClickTimeHelper JR.null])
    (field [f_isSingleKeyProcessing #f])
    (field [f_form JR.null])
    (field [f_hasPressed #f])
    (field [f_PROCESS_COMMAND JR.null])
    (field [f_NAME_LABEL JR.null])
    (define/public (jm_processInput_1 _key)
    (let ()
      (let/ec jreturn
        (if (or (or (or (= _key (Canvas.jstatic_LEFT)) (= _key (Canvas.jstatic_RIGHT))) (= _key (Canvas.jstatic_UP))) (= _key (Canvas.jstatic_DOWN)))
            (begin
            (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (SelectSound.jm_getInstance_0))
            (send (get-field f_form this) jm_processInputKey_1 _key)
            (jreturn 1))
            (when (= _key (Canvas.jstatic_FIRE))
            (begin
            (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (SelectSound.jm_getInstance_0))
            (jreturn (send this jm_processCommand_0)))))
        (jreturn 0))))
    (define/public (jm_processCommand_0)
    (let ([_commandCurrentSelectionForm JR.null][_command JR.null][_features JR.null][_openGLFeatureFactory JR.null])
      (let/ec jreturn
        (set! _commandCurrentSelectionForm (get-field f_form this))
        (set! _command (send _commandCurrentSelectionForm jm_getSelectedCommand_0))
        (JR.className (get-field f_logUtil this))
        (set! _features (Features.jm_getInstance_0))
        (set! _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (if (and (and (SWTUtil.jstatic_isSWT) (send _features jm_isFeature_1 (get-field f_OPENGL _openGLFeatureFactory))) (not (eq? _command (get-field f_EXIT_COMMAND (GameCommandsFactory.jm_getInstance_0)))))
            (begin
            (send (CommandRunnable.jnew_2 this _command) jm_run_0))
            (begin
            (send (PrimaryThreadPool.jm_getInstance_0) jm_runTask_1 (CommandRunnable.jnew_2 this _command))))
        (if (eq? _command (get-field f_QUIT_COMMAND (GameCommandsFactory.jm_getInstance_0)))
            (begin
            (jreturn (JR.i32 (- 1))))
            (begin
            (jreturn 1))))))
    (define/override (jm_processInputList_0)
    (let ([_motionInputsIndex JR.null][_list JR.null][_size JR.null][_key JR.null][_gameKeyEvent JR.null][_index JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this))
            (jreturn (JR.i32 (- 1))))])
            (set! _motionInputsIndex (send this jm_processMotionInputs_0))
            (set! _list (send this jm_getGameKeyEventList_0))
            (set! _size (send _list jm_size_0))
            (set! _key 0)
            (set! _gameKeyEvent JR.null)
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _gameKeyEvent (vector-ref (get-field f_objectArray _list) _index))
                (set! _key (send _gameKeyEvent jm_getKey_0))
                (when (not (= (send _gameKeyEvent jm_getSourceId_0) (get-field f_MOTION_GESTURE_SOURCE_ID this)))
                    (begin
                    (when (= (send this jm_processInput_1 _key) 1)
                        (begin
                        (jbreak (void)))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (send this jm_clear_0)
            (if (or (> _size 0) (>= _motionInputsIndex 0))
                (begin
                (jreturn 1))
                (begin
                (jreturn (JR.i32 (- 1)))))))))
    (define/public (jm_processMotionInputs_0)
    (let ([_lastIndex JR.null][_motionGestureEvent JR.null])
      (let/ec jreturn
        (set! _lastIndex (JR.i32 (- (JR.className (get-field f_motionGestureEventList this)) 1)))
        (when (>= _lastIndex 0)
            (begin
            (set! _motionGestureEvent (vector-ref (get-field f_objectArray (get-field f_motionGestureEventList this)) _lastIndex))
            (send this jm_processMotionInput_1 _motionGestureEvent)))
        (JR.className (get-field f_motionGestureEventList this))
        (jreturn _lastIndex))))
    (define/public (jm_processMotionInput_1 _motionGestureEvent)
    (let ([_touchMotionGestureFactory JR.null][_motionGestureInput JR.null][_point JR.null][_index JR.null])
      (let/ec jreturn
        (set! _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (set! _motionGestureInput (send _motionGestureEvent jm_getMotionGesture_0))
        (if (eq? _motionGestureInput (get-field f_RELEASED _touchMotionGestureFactory))
            (begin
            (set! _point (send _motionGestureEvent jm_getCurrentPoint_0))
            (when (send (get-field f_form this) jm_isInForm_1 _point)
                (begin
                (set! _index (send (get-field f_form this) jm_getSelectedIndexForPoint_1 _point))
                (if (not (= _index (JR.i32 (- 1))))
                    (begin
                    (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (SelectSound.jm_getInstance_0))
                    (if (= _index (send (get-field f_form this) jm_getSelectedIndex_0))
                        (begin
                        (when (send (get-field f_clickTimeHelper this) jm_isTimeTNT_0)
                            (begin
                            (send this jm_processCommand_0))))
                        (begin
                        (send (get-field f_form this) jm_setSelectedIndex_1 _index))))
                    (begin
                    (void)))))
            (when (get-field f_hasPressed this)
                (begin
                (when (not (send (get-field f_doubleClickTimeHelper this) jm_isTimeTNT_0))
                    (begin
                    (JR.className (get-field f_logUtil this))
                    (send this jm_processCommand_0)))
                (set-field! f_delay (get-field f_doubleClickTimeHelper this) (get-field f_DOUBLE_CLICK_DELAY this))
                (send (get-field f_doubleClickTimeHelper this) jm_setStartTimeTNT_0)))
            (set-field! f_hasPressed this #f))
            (when (eq? _motionGestureInput (get-field f_PRESSED _touchMotionGestureFactory))
            (begin
            (set-field! f_delay (get-field f_doubleClickTimeHelper this) 0)
            (set-field! f_hasPressed this #t)))))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (send (StringMaker.jnew_0) jm_append_1 (super jm_toString_0)) jm_append_1 (get-field f_NAME_LABEL this)) jm_append_1 (send (get-field f_form this) jm_toString_0)) jm_toString_0)))))))
(define (CommandFormInputProcessor.jclassValue) CommandFormInputProcessor%)

(define (CommandFormInputProcessor.jnew_4 _gameKeyEventList _playerInputId _gameCanvas _form)
  (define this (new CommandFormInputProcessor% [jclass "CommandFormInputProcessor"]))
    (set-field! f_MOTION_GESTURE_SOURCE_ID this (get-field f_MOTION_GESTURE_SOURCE_ID (GameKeyEventFactory.jm_getInstance_0)))
    (set-field! f_CLICK_DELAY this 150)
    (set-field! f_clickTimeHelper this (TimeDelayHelper.jnew_1 (get-field f_CLICK_DELAY this)))
    (set-field! f_DOUBLE_CLICK_DELAY this 1200)
    (set-field! f_doubleClickTimeHelper this (TimeDelayHelper.jnew_1 (get-field f_DOUBLE_CLICK_DELAY this)))
    (set-field! f_isSingleKeyProcessing this (send (InputFeatureFactory.jm_getInstance_0) jm_isSingleKeyProcessing_0))
    
    (set-field! f_hasPressed this #f)
    (set-field! f_PROCESS_COMMAND this "processCommand")
    (set-field! f_NAME_LABEL this " ScrollSelectionForm: ")
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_form this _form)))
  this)



