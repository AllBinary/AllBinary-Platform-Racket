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
;; package org.allbinary.game.tracking

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.rkt")
(lazy-require ["./TrackingEvent.rkt" (TrackingEvent.jnew_1)])
(lazy-require ["./TrackingEventHandler.rkt" (TrackingEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define TrackingEventFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TrackingEvent.jnew_1 (TrackingEventHandler.jm_getInstance_0))))))))
(define (TrackingEventFactory.jclassValue) TrackingEventFactory%)

(define (TrackingEventFactory.jnew_0)
  (define this (new TrackingEventFactory% [jclass "TrackingEventFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)



