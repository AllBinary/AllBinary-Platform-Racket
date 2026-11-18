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

(define AllMotionRecognizer%
  (class JObject%
    (super-new)
    (field [f_id 0])
    (define/public (jm_processStartMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processEndMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processDraggedMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processMovedMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processScrolledMotionEvent_4 _x _y _deviceId _modifiers)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_id this)))))))
(define (AllMotionRecognizer.jclassValue) AllMotionRecognizer%)

(define AllMotionRecognizer.jcell_index 'jnone)
(define (AllMotionRecognizer.jstatic_index)
  (when (eq? AllMotionRecognizer.jcell_index 'jnone) (set! AllMotionRecognizer.jcell_index 0))
  AllMotionRecognizer.jcell_index)
(define (AllMotionRecognizer.jsetstatic_index value) (set! AllMotionRecognizer.jcell_index value))

(define (AllMotionRecognizer.jnew_0)
  (define this (new AllMotionRecognizer% [jclass "AllMotionRecognizer"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_id this (let ([jvalue (AllMotionRecognizer.jstatic_index)]) (set! AllMotionRecognizer.jcell_index (JR.i32 (+ (AllMotionRecognizer.jstatic_index) 1))) jvalue))))
  this)



