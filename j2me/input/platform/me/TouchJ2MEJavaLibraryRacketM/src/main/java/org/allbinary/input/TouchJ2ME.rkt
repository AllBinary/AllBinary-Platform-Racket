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
;; package org.allbinary.input

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/input/motion/AllMotionRecognizer.rkt" (AllMotionRecognizer.jnew_0)])
(lazy-require ["../../../org/allbinary/input/motion/gesture/observer/GameMotionGestureListener.rkt" (GameMotionGestureListener.jnew_1)])
(lazy-require ["../../../org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory.rkt" (MotionGestureReceiveInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

;TouchJ2ME
(define TouchJ2ME%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_DEVICE_ID 0])
    (field [f_motionRecognizer JR.null])
    (define/public (jm_pointerDragged_2 _x _y)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "pointerDragged" _e))])
            (send (get-field f_motionRecognizer this) jm_processDraggedMotionEvent_4 _x _y (get-field f_DEVICE_ID this) 0)))))
    (define/public (jm_pointerPressed_2 _x _y)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "pointerPressed" _e))])
            (send (get-field f_motionRecognizer this) jm_processStartMotionEvent_4 _x _y (get-field f_DEVICE_ID this) 0)))))
    (define/public (jm_pointerReleased_2 _x _y)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "pointerReleased" _e))])
            (send (get-field f_motionRecognizer this) jm_processEndMotionEvent_4 _x _y (get-field f_DEVICE_ID this) 0)))))))
(define (TouchJ2ME.jclassValue) TouchJ2ME%)

(define (TouchJ2ME.jnew_0)
  (define this (new TouchJ2ME% [jclass "TouchJ2ME"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_DEVICE_ID this 0)
    (set-field! f_motionRecognizer this (AllMotionRecognizer.jnew_0))
    (let ([_motionGesturesHandler JR.null])
      (let/ec jreturn
        (set! _motionGesturesHandler (JR.className (send (get-field f_motionRecognizer this) jm_getMotionGestureRecognizer_0)))
        (send _motionGesturesHandler jm_addListenerInterface_1 (GameMotionGestureListener.jnew_1 (MotionGestureReceiveInterfaceFactory.jm_getInstance_0)))))
  this)



