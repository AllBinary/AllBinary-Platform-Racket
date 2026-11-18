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
;; package org.allbinary.input

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/android/input/motion/AnalogLocationInputProcessor.rkt"
  "../../../org/allbinary/game/input/GameKeyEventSourceInterface.rkt")
(lazy-require ["../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/game/input/event/GameKeyEvent.rkt" (GameKeyEvent.jstatic_NONE)])
(lazy-require ["../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define DirectionalAnalogLocationInputProcessor%
  (class AnalogLocationInputProcessor%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_inputProcessorArray JR.null])
    (field [f_gameKeyFactory JR.null])
    (field [f_leftGameKeyEvent JR.null])
    (field [f_rightGameKeyEvent JR.null])
    (field [f_upGameKeyEvent JR.null])
    (field [f_downGameKeyEvent JR.null])
    (field [f_leftTriggerGameKeyEvent JR.null])
    (field [f_rightTriggerGameKeyEvent JR.null])
    (define/override (jm_process_2 _allbinaryLayerManager _analogLocationInput)
    (let ([_customGPoint JR.null][_x JR.null][_y JR.null][_leftTrigger JR.null][_rightTrigger JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 "Unable to process analog input" this (get-field f_PROCESS _commonStrings) _e))])
            (set! _customGPoint JR.null)
            (set! _customGPoint (send _analogLocationInput jm_getCustomGPoint_0))
            (set! _x (send _customGPoint jm_getX_0))
            (set! _y (send _customGPoint jm_getY_0))
            (set! _leftTrigger (send _analogLocationInput jm_getLeftTrigger_0))
            (set! _rightTrigger (send _analogLocationInput jm_getRightTrigger_0))
            (if (< _x 0)
                (begin
                (JR.className (vector-ref (get-field f_inputProcessorArray this) (send (get-field f_leftGameKeyEvent this) jm_getKey_0))))
                (when (> _x 0)
                (begin
                (JR.className (vector-ref (get-field f_inputProcessorArray this) (send (get-field f_rightGameKeyEvent this) jm_getKey_0))))))
            (if (< _y 0)
                (begin
                (JR.className (vector-ref (get-field f_inputProcessorArray this) (send (get-field f_downGameKeyEvent this) jm_getKey_0))))
                (when (> _y 0)
                (begin
                (JR.className (vector-ref (get-field f_inputProcessorArray this) (send (get-field f_upGameKeyEvent this) jm_getKey_0))))))
            (when (> _leftTrigger 0)
                (begin
                (JR.className (vector-ref (get-field f_inputProcessorArray this) (send (get-field f_leftTriggerGameKeyEvent this) jm_getKey_0)))))
            (when (> _rightTrigger 0)
                (begin
                (JR.className (vector-ref (get-field f_inputProcessorArray this) (send (get-field f_rightTriggerGameKeyEvent this) jm_getKey_0)))))))))
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (DirectionalAnalogLocationInputProcessor.jclassValue) DirectionalAnalogLocationInputProcessor%)

(define (DirectionalAnalogLocationInputProcessor.jnew_1 _inputProcessorArray)
  (define this (new DirectionalAnalogLocationInputProcessor% [jclass "DirectionalAnalogLocationInputProcessor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (set-field! f_gameKeyFactory this (GameKeyFactory.jm_getInstance_0))
    (set-field! f_leftGameKeyEvent this (GameKeyEvent.jstatic_NONE))
    (set-field! f_rightGameKeyEvent this (GameKeyEvent.jstatic_NONE))
    (set-field! f_upGameKeyEvent this (GameKeyEvent.jstatic_NONE))
    (set-field! f_downGameKeyEvent this (GameKeyEvent.jstatic_NONE))
    (set-field! f_leftTriggerGameKeyEvent this (GameKeyEvent.jstatic_NONE))
    (set-field! f_rightTriggerGameKeyEvent this (GameKeyEvent.jstatic_NONE))
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (set-field! f_inputProcessorArray this _inputProcessorArray)
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_CONSTRUCTOR _commonStrings) _e))])
            (set-field! f_leftGameKeyEvent this (send (GameKeyEventFactory.jm_getInstance_0) jm_getInstanceForInput_2 this (get-field f_LEFT (get-field f_gameKeyFactory this))))
            (set-field! f_rightGameKeyEvent this (send (GameKeyEventFactory.jm_getInstance_0) jm_getInstanceForInput_2 this (get-field f_RIGHT (get-field f_gameKeyFactory this))))
            (set-field! f_upGameKeyEvent this (send (GameKeyEventFactory.jm_getInstance_0) jm_getInstanceForInput_2 this (get-field f_UP (get-field f_gameKeyFactory this))))
            (set-field! f_downGameKeyEvent this (send (GameKeyEventFactory.jm_getInstance_0) jm_getInstanceForInput_2 this (get-field f_DOWN (get-field f_gameKeyFactory this))))
            (set-field! f_leftTriggerGameKeyEvent this (send (GameKeyEventFactory.jm_getInstance_0) jm_getInstanceForInput_2 this (get-field f_KEY_NUM0 (get-field f_gameKeyFactory this))))
            (set-field! f_rightTriggerGameKeyEvent this (send (GameKeyEventFactory.jm_getInstance_0) jm_getInstanceForInput_2 this (get-field f_KEY_NUM5 (get-field f_gameKeyFactory this)))))))
  this)



