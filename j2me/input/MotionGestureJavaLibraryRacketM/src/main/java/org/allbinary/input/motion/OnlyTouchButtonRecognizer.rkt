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
(lazy-require ["../../../../org/allbinary/input/motion/button/TouchButtonRecognizer.rkt" (TouchButtonRecognizer.jnew_0)])
(provide (all-defined-out))

(define OnlyTouchButtonRecognizer%
  (class MotionRecognizer%
    (super-new)
    (field [f_touchButtonRecognizer JR.null])
    (field [f_touchButtonProcessing #f])
    (define/override (jm_processStartMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_touchButtonRecognizer this) jm_pressTouchButtonInput_3 _x _y _deviceId)
            (begin
            (set-field! f_touchButtonProcessing this #t))))))
    (define/override (jm_processEndMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn
        (when (get-field f_touchButtonProcessing this)
            (begin
            (set-field! f_touchButtonProcessing this #f)))
        (when (send (get-field f_touchButtonRecognizer this) jm_releaseTouchButtonInput_3 _x _y _deviceId)
            (begin
            (jreturn (void)))))))
    (define/override (jm_processDraggedMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn
        (when (get-field f_touchButtonProcessing this)
            (begin
            (send (get-field f_touchButtonRecognizer this) jm_pressTouchButtonInput_3 _x _y _deviceId))))))))
(define (OnlyTouchButtonRecognizer.jclassValue) OnlyTouchButtonRecognizer%)

(define (OnlyTouchButtonRecognizer.jnew_0)
  (define this (new OnlyTouchButtonRecognizer% [jclass "OnlyTouchButtonRecognizer"]))
    
    (set-field! f_touchButtonProcessing this #f)
    (let ()
      (let/ec jreturn
        (set-field! f_touchButtonRecognizer this (TouchButtonRecognizer.jnew_0))))
  this)



