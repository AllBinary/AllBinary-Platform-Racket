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
  "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(lazy-require ["../../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(provide (all-defined-out))

(define MotionGestureEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_motionGesture JR.null])
    (field [f_id 0])
    (field [f_previousPoint JR.null])
    (field [f_currentPoint JR.null])
    (field [f_commonLabels JR.null])
    (define/public (jm_getMotionGesture_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_motionGesture this)))))
    (define/public (jm_setMotionGesture_1 _motionGesture)
    (let ()
      (let/ec jreturn
        (set-field! f_motionGesture this _motionGesture))))
    (define/public (jm_getPreviousPoint_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_previousPoint this)))))
    (define/public (jm_setPreviousPoint_1 _previousPoint)
    (let ()
      (let/ec jreturn
        (set-field! f_previousPoint this _previousPoint))))
    (define/public (jm_getCurrentPoint_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_currentPoint this)))))
    (define/public (jm_setCurrentPoint_1 _currentPoint)
    (let ()
      (let/ec jreturn
        (set-field! f_currentPoint this _currentPoint))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null][_stringUtil JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _stringUtil (StringUtil.jm_getInstance_0))
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 (get-field f_motionGesture this)))
        (send _stringBuffer jm_append_1 (get-field f_CURRENT (get-field f_commonLabels this)))
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 (get-field f_currentPoint this)))
        (send _stringBuffer jm_append_1 (MotionGestureEvent.jstatic_PREVIOUS))
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 (get-field f_previousPoint this)))
        (send _stringBuffer jm_append_1 (MotionGestureEvent.jstatic_HASHCODE))
        (send _stringBuffer jm_appendint_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 this))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_id this)))))))
(define (MotionGestureEvent.jclassValue) MotionGestureEvent%)

(define MotionGestureEvent.jcell_PREVIOUS 'jnone)
(define (MotionGestureEvent.jstatic_PREVIOUS)
  (when (eq? MotionGestureEvent.jcell_PREVIOUS 'jnone) (set! MotionGestureEvent.jcell_PREVIOUS " Previous: "))
  MotionGestureEvent.jcell_PREVIOUS)
(define (MotionGestureEvent.jsetstatic_PREVIOUS value) (set! MotionGestureEvent.jcell_PREVIOUS value))

(define MotionGestureEvent.jcell_HASHCODE 'jnone)
(define (MotionGestureEvent.jstatic_HASHCODE)
  (when (eq? MotionGestureEvent.jcell_HASHCODE 'jnone) (set! MotionGestureEvent.jcell_HASHCODE " hashcode: "))
  MotionGestureEvent.jcell_HASHCODE)
(define (MotionGestureEvent.jsetstatic_HASHCODE value) (set! MotionGestureEvent.jcell_HASHCODE value))

(define (MotionGestureEvent.jnew_3 _source _id _motionGesture)
  (define this (new MotionGestureEvent% [jclass "MotionGestureEvent"]))
    (set-field! f_motionGesture this (get-field f_NO_MOTION (TouchMotionGestureFactory.jm_getInstance_0)))
    
    (set-field! f_previousPoint this (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)))
    (set-field! f_currentPoint this (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)))
    (set-field! f_commonLabels this (CommonLabels.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_id this _id)
        (send this jm_setMotionGesture_1 _motionGesture)))
  this)



