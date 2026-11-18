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
  "../../../../allbinary_java.rkt"
  "./MotionRecognizer.rkt")
(lazy-require ["../../../../org/allbinary/graphics/GPointCircularPool.rkt" (GPointCircularPool.jnew_1)])
(lazy-require ["../../../../org/allbinary/input/motion/button/TouchButtonRecognizer.rkt" (TouchButtonRecognizer.jnew_0)])
(lazy-require ["../../../../org/allbinary/input/motion/gesture/MotionGestureRecognizer.rkt" (MotionGestureRecognizer.jnew_1)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AllMotionRecognizer%
  (class MotionRecognizer%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_motionGestureRecognizer JR.null])
    (field [f_touchButtonProcessing #f])
    (field [f_touchButtonRecognizer JR.null])
    (field [f_id 0])
    (field [f_lastX 0])
    (field [f_lastY 0])
    (define/override (jm_processStartMotionEvent_4 _x _y _deviceId _modifiers)
    (let ([_point JR.null])
      (let/ec jreturn
        (when (send (get-field f_touchButtonRecognizer this) jm_pressTouchButtonInput_3 _x _y _deviceId)
            (begin
            (set-field! f_touchButtonProcessing this #t)))
        (when (not (get-field f_touchButtonProcessing this))
            (begin
            (set! _point (JR.className (AllMotionRecognizer.jstatic_pointCircularPool)))
            (send _point jm_setX_1 _x)
            (send _point jm_setY_1 _y)
            (send (get-field f_motionGestureRecognizer this) jm_processPressedMotionEvent_3 _point _deviceId _modifiers))))))
    (define/override (jm_processEndMotionEvent_4 _x _y _deviceId _modifiers)
    (let ([_point JR.null])
      (let/ec jreturn
        (when (send (get-field f_touchButtonRecognizer this) jm_releaseTouchButtonInput_3 _x _y _deviceId)
            (begin
            (void)))
        (when (not (get-field f_touchButtonProcessing this))
            (begin
            (set! _point (JR.className (AllMotionRecognizer.jstatic_pointCircularPool)))
            (send _point jm_setX_1 _x)
            (send _point jm_setY_1 _y)
            (send (get-field f_motionGestureRecognizer this) jm_processReleasedMotionEvent_3 _point _deviceId _modifiers)))
        (when (get-field f_touchButtonProcessing this)
            (begin
            (set-field! f_touchButtonProcessing this #f))))))
    (define/override (jm_processDraggedMotionEvent_4 _x _y _deviceId _modifiers)
    (let ([_point JR.null])
      (let/ec jreturn
        (when (get-field f_touchButtonProcessing this)
            (begin
            (send (get-field f_touchButtonRecognizer this) jm_pressTouchButtonInput_3 _x _y _deviceId)))
        (when (not (get-field f_touchButtonProcessing this))
            (begin
            (set! _point (JR.className (AllMotionRecognizer.jstatic_pointCircularPool)))
            (send _point jm_setX_1 _x)
            (send _point jm_setY_1 _y)
            (send (get-field f_motionGestureRecognizer this) jm_processDraggedMotionEvent_3 _point _deviceId _modifiers))))))
    (define/public (jm_processMovedMotionEvent_4 _x _y _deviceId _modifiers)
    (let ([_point JR.null])
      (let/ec jreturn
        (when (or (not (= _x (get-field f_lastX this))) (not (= _y (get-field f_lastY this))))
            (begin
            (set-field! f_lastX this _x)
            (set-field! f_lastY this _y)
            (set! _point (JR.className (AllMotionRecognizer.jstatic_pointCircularPool)))
            (send _point jm_setX_1 _x)
            (send _point jm_setY_1 _y)
            (send (get-field f_motionGestureRecognizer this) jm_processMovedMotionEvent_3 _point _deviceId _modifiers))))))
    (define/public (jm_processScrolledMotionEvent_4 _x _y _deviceId _modifiers)
    (let ([_point JR.null])
      (let/ec jreturn
        (set! _point (JR.className (AllMotionRecognizer.jstatic_pointCircularPool)))
        (send _point jm_setX_1 _x)
        (send _point jm_setY_1 _y)
        (send (get-field f_motionGestureRecognizer this) jm_processScrolledMotionEvent_3 _point _deviceId _modifiers))))
    (define/public (jm_getMotionGestureRecognizer_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_motionGestureRecognizer this)))))))
(define (AllMotionRecognizer.jclassValue) AllMotionRecognizer%)

(define AllMotionRecognizer.jcell_index 'jnone)
(define (AllMotionRecognizer.jstatic_index)
  (when (eq? AllMotionRecognizer.jcell_index 'jnone) (set! AllMotionRecognizer.jcell_index 0))
  AllMotionRecognizer.jcell_index)
(define (AllMotionRecognizer.jsetstatic_index value) (set! AllMotionRecognizer.jcell_index value))

(define AllMotionRecognizer.jcell_pointCircularPool 'jnone)
(define (AllMotionRecognizer.jstatic_pointCircularPool)
  (when (eq? AllMotionRecognizer.jcell_pointCircularPool 'jnone) (set! AllMotionRecognizer.jcell_pointCircularPool (GPointCircularPool.jnew_1 40)))
  AllMotionRecognizer.jcell_pointCircularPool)
(define (AllMotionRecognizer.jsetstatic_pointCircularPool value) (set! AllMotionRecognizer.jcell_pointCircularPool value))

(define (AllMotionRecognizer.jnew_0)
  (define this (new AllMotionRecognizer% [jclass "AllMotionRecognizer"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (set-field! f_touchButtonProcessing this #f)
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_id this (let ([jvalue (AllMotionRecognizer.jstatic_index)]) (set! AllMotionRecognizer.jcell_index (JR.i32 (+ (AllMotionRecognizer.jstatic_index) 1))) jvalue))
        (set-field! f_motionGestureRecognizer this (MotionGestureRecognizer.jnew_1 (get-field f_id this)))
        (set-field! f_touchButtonRecognizer this (TouchButtonRecognizer.jnew_0))))
  this)



