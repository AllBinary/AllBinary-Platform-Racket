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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt"
  "./CompleteMotionGestureInputInterface.rkt")
(lazy-require ["../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory.rkt" (TouchMotionGestureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define CompleteMotionGestureInputEvent%
  (class AllBinaryEventObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_name JR.null])
    (field [f_motionGestureInput JR.null])
    (define/public (jm_setName_1 _name)
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name))))
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_setMotionGestureInput_1 _motionGestureInput)
    (let ()
      (let/ec jreturn
        (set-field! f_motionGestureInput this _motionGestureInput))))
    (define/public (jm_getMotionGestureInput_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_motionGestureInput this)))))))
(define (CompleteMotionGestureInputEvent.jclassValue) CompleteMotionGestureInputEvent%)

(define (CompleteMotionGestureInputEvent.jnew_2 _name _motionGestureInput)
  (define this (new CompleteMotionGestureInputEvent% [jclass "CompleteMotionGestureInputEvent"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_motionGestureInput this (get-field f_NO_MOTION (TouchMotionGestureFactory.jm_getInstance_0)))
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (void)
        (send this jm_setName_1 _name)
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "InputToGameKeyEventAction" _e))])
            (send this jm_setMotionGestureInput_1 _motionGestureInput))))
  this)



