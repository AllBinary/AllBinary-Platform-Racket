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
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define CompleteMotionGestureInputToGameMotionGestureInput%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_put_3 "No Touch Button = No Compound Motion Gestures" this (get-field f_INIT (get-field f_commonStrings this))))))))
(define (CompleteMotionGestureInputToGameMotionGestureInput.jclassValue) CompleteMotionGestureInputToGameMotionGestureInput%)

(define CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance 'jnone)
(define (CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance)
  (when (eq? CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance 'jnone) (set! CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance (CompleteMotionGestureInputToGameMotionGestureInput.jnew_0)))
  CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance)
(define (CompleteMotionGestureInputToGameMotionGestureInput.jsetstatic_instance value) (set! CompleteMotionGestureInputToGameMotionGestureInput.jcell_instance value))

(define (CompleteMotionGestureInputToGameMotionGestureInput.jnew_0)
  (define this (new CompleteMotionGestureInputToGameMotionGestureInput% [jclass "CompleteMotionGestureInputToGameMotionGestureInput"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
  this)

(define (CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CompleteMotionGestureInputToGameMotionGestureInput.jstatic_instance)))))



