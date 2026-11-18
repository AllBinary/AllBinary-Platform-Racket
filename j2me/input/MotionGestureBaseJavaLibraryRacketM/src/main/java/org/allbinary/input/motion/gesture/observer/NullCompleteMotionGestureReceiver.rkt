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
  "./CompleteMotionGestureListenerInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define NullCompleteMotionGestureReceiver%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_onMotionGestureCompleted_1 _list)
    (let ()
      (let/ec jreturn (void))))))
(define (NullCompleteMotionGestureReceiver.jclassValue) NullCompleteMotionGestureReceiver%)

(define (NullCompleteMotionGestureReceiver.jnew_0)
  (define this (new NullCompleteMotionGestureReceiver% [jclass "NullCompleteMotionGestureReceiver"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (send (get-field f_logUtil this) jm_putF_3 "Null Gesture Reciever" this (get-field f_CONSTRUCTOR _commonStrings))))
  this)



