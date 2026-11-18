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
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_KEY_STAR)])
(lazy-require ["../../../../../org/allbinary/game/input/GameInputStrings.rkt" (GameInputStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/math/RectangleCollisionUtil.rkt" (RectangleCollisionUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define PopupMenuInputProcessor%
  (class BasicMenuInputProcessor%
    (super-new)
    (field [f_rectangleCollisionUtil JR.null])
    (field [f_CLICK_DELAY 0])
    (field [f_clickTimeHelper JR.null])
    (field [f_rectangle JR.null])
    (define/public (jm_init_1 _rectangle)
    (let ()
      (let/ec jreturn
        (set-field! f_rectangle this _rectangle))))
    (define/public (jm_processInput_1 _key)
    (let ([_gameCanvas JR.null])
      (let/ec jreturn
        (when (= _key (Canvas.jstatic_KEY_STAR))
            (begin
            (set! _gameCanvas (send this jm_getCanvas_0))
            (send _gameCanvas jm_toggleMenu_0)
            (jreturn 1)))
        (jreturn 0))))
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
                (when (not (JR.null? _gameKeyEvent))
                    (begin
                    (set! _key (send _gameKeyEvent jm_getKey_0))
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
    (let ([_touchMotionGestureFactory JR.null][_motionGestureInput JR.null][_point JR.null][_rectPoint JR.null][_gameCanvas JR.null])
      (let/ec jreturn
        (when (JR.null? _motionGestureEvent)
            (begin
            (JR.className (get-field f_logUtil this))
            (jreturn (void))))
        (set! _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (set! _motionGestureInput (send _motionGestureEvent jm_getMotionGesture_0))
        (when (eq? _motionGestureInput (get-field f_RELEASED _touchMotionGestureFactory))
            (begin
            (set! _point (send _motionGestureEvent jm_getCurrentPoint_0))
            (set! _rectPoint (send (get-field f_rectangle this) jm_getPoint_0))
            (when (send (get-field f_rectangleCollisionUtil this) jm_isInside_6 (send _rectPoint jm_getX_0) (send _rectPoint jm_getY_0) (JR.i32 (+ (send (get-field f_rectangle this) jm_getMaxX_0) 20)) (send (get-field f_rectangle this) jm_getMaxY_0) (send _point jm_getX_0) (send _point jm_getY_0))
                (begin
                (when (send (get-field f_clickTimeHelper this) jm_isTimeTNT_0)
                    (begin
                    (set! _gameCanvas (send this jm_getCanvas_0))
                    (send _gameCanvas jm_toggleMenu_0))))))))))))
(define (PopupMenuInputProcessor.jclassValue) PopupMenuInputProcessor%)

(define (PopupMenuInputProcessor.jnew_4 _gameKeyEventList _playerInputId _gameCanvas _rectangle)
  (define this (new PopupMenuInputProcessor% [jclass "PopupMenuInputProcessor"]))
    (set-field! f_rectangleCollisionUtil this (RectangleCollisionUtil.jm_getInstance_0))
    (set-field! f_CLICK_DELAY this 120)
    (set-field! f_clickTimeHelper this (TimeDelayHelper.jnew_1 (get-field f_CLICK_DELAY this)))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_rectangle this _rectangle)))
  this)



