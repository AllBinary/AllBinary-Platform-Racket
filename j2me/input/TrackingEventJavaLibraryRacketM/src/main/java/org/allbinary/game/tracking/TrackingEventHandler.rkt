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
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define TrackingEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_trackingEventListenerInterface JR.null])
      (let/ec jreturn
        (set! _trackingEventListenerInterface _eventListenerInterface)
        (send _trackingEventListenerInterface jm_onMovement_1 _eventObject))))))
(define (TrackingEventHandler.jclassValue) TrackingEventHandler%)

(define TrackingEventHandler.jcell_instance 'jnone)
(define (TrackingEventHandler.jstatic_instance)
  (when (eq? TrackingEventHandler.jcell_instance 'jnone) (set! TrackingEventHandler.jcell_instance (TrackingEventHandler.jnew_0)))
  TrackingEventHandler.jcell_instance)
(define (TrackingEventHandler.jsetstatic_instance value) (set! TrackingEventHandler.jcell_instance value))

(define (TrackingEventHandler.jnew_0)
  (define this (new TrackingEventHandler% [jclass "TrackingEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (TrackingEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TrackingEventHandler.jstatic_instance)))))



