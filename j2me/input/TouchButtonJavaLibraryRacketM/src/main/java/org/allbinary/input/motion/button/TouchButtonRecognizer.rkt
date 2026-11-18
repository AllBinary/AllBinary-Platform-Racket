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
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler.rkt" (DownGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler.rkt" (UpGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/math/RectangleCollisionUtil.rkt" (RectangleCollisionUtil.jm_getInstance_0)])
(lazy-require ["./BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(lazy-require ["./CurrentlyPressedTouchButtonSingleton.rkt" (CurrentlyPressedTouchButtonSingleton.jm_getInstance_0)])
(lazy-require ["./ReleaseHelper.rkt" (ReleaseHelper.jnew_1)])
(lazy-require ["./TouchScreenFactory.rkt" (TouchScreenFactory.jm_getInstance_0)])
(lazy-require ["./MultitouchReleaseHelper.rkt" (MultitouchReleaseHelper.jnew_1)])
(lazy-require ["./TouchButtonFactory.rkt" (TouchButtonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonRecognizer%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_rectangleCollisionUtil JR.null])
    (field [f_upGameKeyEventHandler JR.null])
    (field [f_downGameKeyEventHandler JR.null])
    (field [f_lastPressedTouchButtonInput JR.null])
    (field [f_currentlyPressedTouchButtonSingleton JR.null])
    (field [f_releaseHelper JR.null])
    (define/public (jm_processRelease_2 _touchButtonInput _deviceId)
    (let ([_gameKeyEvent JR.null])
      (let/ec jreturn
        (send (get-field f_releaseHelper this) jm_release_2 _touchButtonInput _deviceId)
        (set! _gameKeyEvent (send _touchButtonInput jm_getGameKeyEvent_0))
        (send (get-field f_upGameKeyEventHandler this) jm_fireEvent_1 _gameKeyEvent)
        (JR.className (send (get-field f_upGameKeyEventHandler this) jm_getInstanceForDevice_1 _deviceId))
        (send (get-field f_currentlyPressedTouchButtonSingleton this) jm_remove_1 _touchButtonInput))))
    (define/public (jm_releaseTouchButtonInput_3 _x _y _deviceId)
    (let ([_touchButtonInput JR.null][_list JR.null][_rectangle JR.null][_point JR.null][_touchButton JR.null][_index JR.null])
      (let/ec jreturn
        (set! _touchButtonInput (get-field f_lastPressedTouchButtonInput this))
        (if (send (get-field f_currentlyPressedTouchButtonSingleton this) jm_contains_1 _touchButtonInput)
            (begin
            (set-field! f_lastPressedTouchButtonInput this (get-field f_NONE (BasicTouchInputFactory.jm_getInstance_0)))
            (send this jm_processRelease_2 _touchButtonInput _deviceId)
            (jreturn #t))
            (begin
            (set! _list (send (TouchButtonFactory.jm_getInstance_0) jm_getList_0))
            (set! _rectangle JR.null)
            (set! _point JR.null)
            (set! _touchButton JR.null)
            (begin
                (set! _index (JR.i32 (- (send _list jm_size_0) 1)))
                (let/ec jbreak (let jloop () (when (>= _index 0)
                    (let/ec jcontinue
                (set! _touchButton (vector-ref (get-field f_objectArray _list) _index))
                (set! _rectangle (send _touchButton jm_getRectangle_0))
                (set! _point (send _rectangle jm_getPoint_0))
                (when (send (get-field f_rectangleCollisionUtil this) jm_isInside_6 (send _point jm_getX_0) (send _point jm_getY_0) (send _rectangle jm_getMaxX_0) (send _rectangle jm_getMaxY_0) _x _y)
                    (begin
                    (set! _touchButtonInput (send _touchButton jm_getTouchButtonInput_0))
                    (send this jm_processRelease_2 _touchButtonInput _deviceId)
                    (jreturn #t))))
                    (set! _index (JR.i32 (- _index 1))) (jloop)))))))
        (jreturn #f))))
    (define/public (jm_pressTouchButtonInput_3 _x _y _deviceId)
    (let ([_list JR.null][_rectangle JR.null][_point JR.null][_touchButton JR.null][_touchButtonInput JR.null][_gameKeyEvent JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (send (TouchButtonFactory.jm_getInstance_0) jm_getList_0))
        (set! _rectangle JR.null)
        (set! _point JR.null)
        (set! _touchButton JR.null)
        (set! _touchButtonInput JR.null)
        (set! _gameKeyEvent JR.null)
        (begin
            (set! _index (JR.i32 (- (send _list jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _touchButton (vector-ref (get-field f_objectArray _list) _index))
            (set! _rectangle (send _touchButton jm_getRectangle_0))
            (set! _point (send _rectangle jm_getPoint_0))
            (when (send (get-field f_rectangleCollisionUtil this) jm_isInside_6 (send _point jm_getX_0) (send _point jm_getY_0) (send _rectangle jm_getMaxX_0) (send _rectangle jm_getMaxY_0) _x _y)
                (begin
                (set! _touchButtonInput (send _touchButton jm_getTouchButtonInput_0))
                (when (not (send (get-field f_currentlyPressedTouchButtonSingleton this) jm_contains_1 _touchButtonInput))
                    (begin
                    (send (get-field f_releaseHelper this) jm_release_2 _touchButtonInput _deviceId)
                    (set-field! f_lastPressedTouchButtonInput this _touchButtonInput)
                    (send (get-field f_currentlyPressedTouchButtonSingleton this) jm_add_1 _touchButtonInput)
                    (set! _gameKeyEvent (send _touchButtonInput jm_getGameKeyEvent_0))
                    (send (get-field f_downGameKeyEventHandler this) jm_fireEvent_1 _gameKeyEvent)
                    (JR.className (send (get-field f_downGameKeyEventHandler this) jm_getInstanceForDevice_1 _deviceId))))
                (jreturn #t))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (jreturn #f))))))
(define (TouchButtonRecognizer.jclassValue) TouchButtonRecognizer%)

(define (TouchButtonRecognizer.jnew_0)
  (define this (new TouchButtonRecognizer% [jclass "TouchButtonRecognizer"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_rectangleCollisionUtil this (RectangleCollisionUtil.jm_getInstance_0))
    (set-field! f_upGameKeyEventHandler this (UpGameKeyEventHandler.jm_getInstance_0))
    (set-field! f_downGameKeyEventHandler this (DownGameKeyEventHandler.jm_getInstance_0))
    (set-field! f_lastPressedTouchButtonInput this (get-field f_NONE (BasicTouchInputFactory.jm_getInstance_0)))
    (set-field! f_currentlyPressedTouchButtonSingleton this (CurrentlyPressedTouchButtonSingleton.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (if (send (TouchScreenFactory.jm_getInstance_0) jm_isMultiTouch_0)
            (begin
            (set-field! f_releaseHelper this (MultitouchReleaseHelper.jnew_1 this)))
            (begin
            (set-field! f_releaseHelper this (ReleaseHelper.jnew_1 this))))))
  this)



