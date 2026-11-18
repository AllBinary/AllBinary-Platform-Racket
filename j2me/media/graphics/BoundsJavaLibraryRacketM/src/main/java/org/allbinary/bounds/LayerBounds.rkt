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
;; package org.allbinary.bounds

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/bounds/event/BoundsChangeEventListener.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define LayerBounds%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_rectangle JR.null])
    (define/public (jm_getRectangleP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rectangle this)))))
    (define/public (jm_visit_1 _boundsVisitorInterface)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onBoundsChangeEvent_1 _boundsChangeEvent)
    (let ()
      (let/ec jreturn
        (set-field! f_rectangle this (send _boundsChangeEvent jm_getRectangle_0)))))))
(define (LayerBounds.jclassValue) LayerBounds%)

(define (LayerBounds.jnew_1 _rectangle)
  (define this (new LayerBounds% [jclass "LayerBounds"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_rectangle this _rectangle)))
  this)



