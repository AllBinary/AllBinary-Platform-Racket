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
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MotionRecognizer%
  (class JObject%
    (super-new)
    (define/public (jm_processStartMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processEndMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processDraggedMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn (void))))))
(define (MotionRecognizer.jclassValue) MotionRecognizer%)

(define (MotionRecognizer.jnew_0)
  (define this (new MotionRecognizer% [jclass "MotionRecognizer"]))
  this)



