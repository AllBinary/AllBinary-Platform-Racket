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
  "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["./MotionGestureEvent.rkt" (MotionGestureEvent.jnew_3)])
(provide (all-defined-out))

(define MotionEventFactory%
  (class JObject%
    (super-new)
    (field [f_source JR.null])
    (field [f_id 0])
    (define/public (jm_getInstance_0)
    (let ([_inputFactory JR.null][_input JR.null])
      (let/ec jreturn
        (set! _inputFactory (InputFactory.jm_getInstance_0))
        (set! _input (send _inputFactory jm_getInstanceById_1 (let ([jvalue (MotionEventFactory.jstatic_index)]) (set! MotionEventFactory.jcell_index (JR.i32 (+ (MotionEventFactory.jstatic_index) 1))) jvalue)))
        (if (eq? _input (get-field f_NO_INPUT _inputFactory))
            (begin
            (jreturn (MotionGestureEvent.jnew_3 (get-field f_source this) (get-field f_id this) (get-field f_NO_MOTION (TouchMotionGestureFactory.jm_getInstance_0)))))
            (begin
            (jreturn (MotionGestureEvent.jnew_3 (get-field f_source this) (get-field f_id this) _input)))))))))
(define (MotionEventFactory.jclassValue) MotionEventFactory%)

(define MotionEventFactory.jcell_index 'jnone)
(define (MotionEventFactory.jstatic_index)
  (when (eq? MotionEventFactory.jcell_index 'jnone) (set! MotionEventFactory.jcell_index 0))
  MotionEventFactory.jcell_index)
(define (MotionEventFactory.jsetstatic_index value) (set! MotionEventFactory.jcell_index value))

(define (MotionEventFactory.jnew_2 _source _id)
  (define this (new MotionEventFactory% [jclass "MotionEventFactory"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_source this _source)
        (set-field! f_id this _id)
        (set! MotionEventFactory.jcell_index (JR.className (get-field f_LAST_MOTION (TouchMotionGestureFactory.jm_getInstance_0))))))
  this)



