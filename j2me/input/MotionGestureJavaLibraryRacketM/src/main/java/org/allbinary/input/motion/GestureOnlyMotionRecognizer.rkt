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
(lazy-require ["../../../../org/allbinary/input/motion/gesture/MotionGestureRecognizer.rkt" (MotionGestureRecognizer.jnew_1)])
(provide (all-defined-out))

(define GestureOnlyMotionRecognizer%
  (class MotionRecognizer%
    (super-new)
    (field [f_motionGestureRecognizer JR.null])
    (field [f_id 0])
    (define/override (jm_processStartMotionEvent_4 _x _y _deviceId _modifiers)
    (let ([_point JR.null])
      (let/ec jreturn
        (set! _point (JR.className (GestureOnlyMotionRecognizer.jstatic_pointCircularPool)))
        (send _point jm_setX_1 _x)
        (send _point jm_setY_1 _y)
        (send (get-field f_motionGestureRecognizer this) jm_processPressedMotionEvent_3 _point _deviceId _modifiers))))
    (define/override (jm_processEndMotionEvent_4 _x _y _deviceId _modifiers)
    (let ([_point JR.null])
      (let/ec jreturn
        (set! _point (JR.className (GestureOnlyMotionRecognizer.jstatic_pointCircularPool)))
        (send _point jm_setX_1 _x)
        (send _point jm_setY_1 _y)
        (send (get-field f_motionGestureRecognizer this) jm_processReleasedMotionEvent_3 _point _deviceId _modifiers))))
    (define/override (jm_processDraggedMotionEvent_4 _x _y _deviceId _modifiers)
    (let ([_point JR.null])
      (let/ec jreturn
        (set! _point (JR.className (GestureOnlyMotionRecognizer.jstatic_pointCircularPool)))
        (send _point jm_setX_1 _x)
        (send _point jm_setY_1 _y)
        (send (get-field f_motionGestureRecognizer this) jm_processDraggedMotionEvent_3 _point _deviceId _modifiers))))))
(define (GestureOnlyMotionRecognizer.jclassValue) GestureOnlyMotionRecognizer%)

(define GestureOnlyMotionRecognizer.jcell_index 'jnone)
(define (GestureOnlyMotionRecognizer.jstatic_index)
  (when (eq? GestureOnlyMotionRecognizer.jcell_index 'jnone) (set! GestureOnlyMotionRecognizer.jcell_index 0))
  GestureOnlyMotionRecognizer.jcell_index)
(define (GestureOnlyMotionRecognizer.jsetstatic_index value) (set! GestureOnlyMotionRecognizer.jcell_index value))

(define GestureOnlyMotionRecognizer.jcell_pointCircularPool 'jnone)
(define (GestureOnlyMotionRecognizer.jstatic_pointCircularPool)
  (when (eq? GestureOnlyMotionRecognizer.jcell_pointCircularPool 'jnone) (set! GestureOnlyMotionRecognizer.jcell_pointCircularPool (GPointCircularPool.jnew_1 40)))
  GestureOnlyMotionRecognizer.jcell_pointCircularPool)
(define (GestureOnlyMotionRecognizer.jsetstatic_pointCircularPool value) (set! GestureOnlyMotionRecognizer.jcell_pointCircularPool value))

(define (GestureOnlyMotionRecognizer.jnew_0)
  (define this (new GestureOnlyMotionRecognizer% [jclass "GestureOnlyMotionRecognizer"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_id this (let ([jvalue (GestureOnlyMotionRecognizer.jstatic_index)]) (set! GestureOnlyMotionRecognizer.jcell_index (JR.i32 (+ (GestureOnlyMotionRecognizer.jstatic_index) 1))) jvalue))
        (set-field! f_motionGestureRecognizer this (MotionGestureRecognizer.jnew_1 (get-field f_id this)))))
  this)



