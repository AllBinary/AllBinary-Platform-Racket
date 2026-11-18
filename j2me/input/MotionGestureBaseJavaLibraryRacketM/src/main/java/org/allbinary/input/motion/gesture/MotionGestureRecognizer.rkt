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
;; package org.allbinary.input.motion.gesture

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/Line.rkt" (Line.jnew_2)])
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.rkt" (MotionGestureConfigurationFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.rkt" (BasicMotionGesturesHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.rkt" (MotionEventCircularPool.jm_createPool_1)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler.rkt" (MovedMotionGesturesHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler.rkt" (ScrolledMotionGesturesHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/J2SEMath.rkt" (J2SEMath.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt" (BasicEventHandler.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define MotionGestureRecognizer%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_j2seMath JR.null])
    (field [f_origin JR.null])
    (field [f_previous JR.null])
    (field [f_intermediate JR.null])
    (field [f_line JR.null])
    (field [f_motionGesturesHandler JR.null])
    (field [f_movedMotionGesturesHandler JR.null])
    (field [f_scrolledMotionGesturesHandler JR.null])
    (field [f_motionEventCircularPool JR.null])
    (define/public (jm_processPressedMotionEvent_3 _current _deviceId _button)
    (let ([_event JR.null])
      (let/ec jreturn
        (set-field! f_intermediate this (get-field f_origin this))
        (set-field! f_previous this (get-field f_origin this))
        (set! _event (send (get-field f_motionEventCircularPool this) jm_getInstance_1 (get-field f_PRESSED (TouchMotionGestureFactory.jm_getInstance_0))))
        (send _event jm_setPreviousPoint_1 (get-field f_previous this))
        (send _event jm_setCurrentPoint_1 _current)
        (send (get-field f_motionGesturesHandler this) jm_fireEvent_1 _event)
        (jreturn #t))))
    (define/public (jm_processReleasedMotionEvent_3 _current _deviceId _button)
    (let ([_event JR.null])
      (let/ec jreturn
        (set! _event (send (get-field f_motionEventCircularPool this) jm_getInstance_1 (get-field f_RELEASED (TouchMotionGestureFactory.jm_getInstance_0))))
        (send _event jm_setPreviousPoint_1 (get-field f_previous this))
        (send _event jm_setCurrentPoint_1 _current)
        (send (get-field f_motionGesturesHandler this) jm_fireEvent_1 _event)
        (jreturn #t))))
    (define/public (jm_processDraggedMotionEvent_3 _current _deviceId _buttonMask)
    (let ([_minimumMotionGesture JR.null][_gradient JR.null][_absGradient JR.null][_conf JR.null][_touchMotionGestureFactory JR.null][_newMotionGesture JR.null][_diagonalToleranceHigher JR.null][_diagonalToleranceLower JR.null][_event JR.null])
      (let/ec jreturn
        (when (or (eq? (get-field f_previous this) (get-field f_origin this)) (eq? (get-field f_intermediate this) (get-field f_origin this)))
            (begin
            (set-field! f_previous this _current)
            (set-field! f_intermediate this _current)
            (jreturn (void))))
        (send (get-field f_line this) jm_setP1_1 (get-field f_previous this))
        (send (get-field f_line this) jm_setP2_1 _current)
        (set! _minimumMotionGesture (send (MotionGestureConfigurationFactory.jm_getInstance_0) jm_getMinimumMotionGesture_0))
        (when (and (< (send (get-field f_j2seMath this) jm_abs_1 (send (get-field f_line this) jm_getDeltaX_0)) (JR.toDouble _minimumMotionGesture)) (< (send (get-field f_j2seMath this) jm_abs_1 (send (get-field f_line this) jm_getDeltaY_0)) (JR.toDouble _minimumMotionGesture)))
            (begin
            (set-field! f_intermediate this _current)
            (jreturn (void))))
        (set! _gradient (send (get-field f_line this) jm_getGradient_0))
        (set! _absGradient (send (get-field f_j2seMath this) jm_abs_1 _gradient))
        (set! _conf (MotionGestureConfigurationFactory.jm_getInstance_0))
        (set! _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (set! _newMotionGesture (get-field f_NO_MOTION _touchMotionGestureFactory))
        (set! _diagonalToleranceHigher 12.0)
        (set! _diagonalToleranceLower 12.0)
        (when (send _conf jm_isDiagonalMotionGestureAllowed_0)
            (begin
            (set! _diagonalToleranceHigher (JR.toDouble (JR.i32 (- 90 (send _conf jm_getDiagonalTolerance_0)))))
            (set! _diagonalToleranceLower (JR.toDouble (send _conf jm_getDiagonalTolerance_0)))))
        (if (> _absGradient (tan (toRadians _diagonalToleranceHigher)))
            (begin
            (if (> (send (get-field f_line this) jm_getDeltaY_0) 0.0)
                (begin
                (set! _newMotionGesture (get-field f_UP _touchMotionGestureFactory)))
                (begin
                (set! _newMotionGesture (get-field f_DOWN _touchMotionGestureFactory)))))
            (begin
            (if (< _absGradient (tan (toRadians _diagonalToleranceLower)))
                (begin
                (if (> (send (get-field f_line this) jm_getDeltaX_0) 0.0)
                    (begin
                    (set! _newMotionGesture (get-field f_LEFT _touchMotionGestureFactory)))
                    (begin
                    (set! _newMotionGesture (get-field f_RIGHT _touchMotionGestureFactory)))))
                (begin
                (if (> _gradient 0.0)
                    (begin
                    (if (> (send (get-field f_line this) jm_getDeltaX_0) 0.0)
                        (begin
                        (set! _newMotionGesture (get-field f_DIAGONAL_UP_LEFT _touchMotionGestureFactory)))
                        (begin
                        (set! _newMotionGesture (get-field f_DIAGONAL_DOWN_RIGHT _touchMotionGestureFactory)))))
                    (begin
                    (if (> (send (get-field f_line this) jm_getDeltaX_0) 0.0)
                        (begin
                        (set! _newMotionGesture (get-field f_DIAGONAL_DOWN_LEFT _touchMotionGestureFactory)))
                        (begin
                        (set! _newMotionGesture (get-field f_DIAGONAL_UP_RIGHT _touchMotionGestureFactory))))))))))
        (set-field! f_previous this _current)
        (set-field! f_intermediate this _current)
        (set! _event (send (get-field f_motionEventCircularPool this) jm_getInstance_1 _newMotionGesture))
        (send _event jm_setPreviousPoint_1 (get-field f_previous this))
        (send _event jm_setCurrentPoint_1 _current)
        (send (get-field f_motionGesturesHandler this) jm_fireEvent_1 _event)
        (jreturn (void)))))
    (define/public (jm_processMovedMotionEvent_3 _current _deviceId _button)
    (let ([_event JR.null])
      (let/ec jreturn
        (set! _event (send (get-field f_motionEventCircularPool this) jm_getInstance_1 (get-field f_NO_MOTION (TouchMotionGestureFactory.jm_getInstance_0))))
        (send _event jm_setPreviousPoint_1 (get-field f_previous this))
        (send _event jm_setCurrentPoint_1 _current)
        (send (get-field f_movedMotionGesturesHandler this) jm_fireEvent_1 _event)
        (jreturn #t))))
    (define/public (jm_processScrolledMotionEvent_3 _current _deviceId _button)
    (let ([_touchMotionGestureFactory JR.null][_newMotionGesture JR.null][_event JR.null])
      (let/ec jreturn
        (set! _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (set! _newMotionGesture (get-field f_NO_MOTION _touchMotionGestureFactory))
        (if (> _button 0)
            (begin
            (set! _newMotionGesture (get-field f_SCROLL_UP _touchMotionGestureFactory)))
            (when (< _button 0)
            (begin
            (set! _newMotionGesture (get-field f_SCROLL_DOWN _touchMotionGestureFactory)))))
        (set! _event (send (get-field f_motionEventCircularPool this) jm_getInstance_1 _newMotionGesture))
        (send _event jm_setPreviousPoint_1 (get-field f_previous this))
        (send _event jm_setCurrentPoint_1 _current)
        (send (get-field f_scrolledMotionGesturesHandler this) jm_fireEvent_1 _event)
        (jreturn #t))))
    (define/public (jm_getMotionGesturesHandler_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_motionGesturesHandler this)))))))
(define (MotionGestureRecognizer.jclassValue) MotionGestureRecognizer%)

(define (MotionGestureRecognizer.jnew_1 _id)
  (define this (new MotionGestureRecognizer% [jclass "MotionGestureRecognizer"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_j2seMath this (J2SEMath.jm_getInstance_0))
    (set-field! f_origin this (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)))
    (set-field! f_previous this (get-field f_origin this))
    (set-field! f_intermediate this (get-field f_origin this))
    (set-field! f_line this (Line.jnew_2 (get-field f_origin this) (get-field f_origin this)))
    
    
    
    
    (let ([_motionGesturesHandler JR.null][_movedMotionGesturesHandler JR.null][_scrolledMotionGesturesHandler JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set-field! f_motionEventCircularPool this (MotionEventCircularPool.jm_createPool_1 _id))
        (set! _motionGesturesHandler (BasicEventHandler.jnew_0))
        (set! _movedMotionGesturesHandler _motionGesturesHandler)
        (set! _scrolledMotionGesturesHandler _motionGesturesHandler)
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_CONSTRUCTOR _commonStrings) _e))])
            (set! _motionGesturesHandler (BasicMotionGesturesHandler.jm_getInstance_0))
            (set! _movedMotionGesturesHandler (MovedMotionGesturesHandler.jm_getInstance_0))
            (set! _scrolledMotionGesturesHandler (ScrolledMotionGesturesHandler.jm_getInstance_0)))
        (set-field! f_motionGesturesHandler this _motionGesturesHandler)
        (set-field! f_movedMotionGesturesHandler this _movedMotionGesturesHandler)
        (set-field! f_scrolledMotionGesturesHandler this _scrolledMotionGesturesHandler)))
  this)



