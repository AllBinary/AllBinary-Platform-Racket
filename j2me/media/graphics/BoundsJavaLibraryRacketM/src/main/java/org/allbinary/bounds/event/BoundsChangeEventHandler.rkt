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
;; package org.allbinary.bounds.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define BoundsChangeEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_boundsChangeEventListener JR.null])
      (let/ec jreturn
        (set! _boundsChangeEventListener _eventListenerInterface)
        (send _boundsChangeEventListener jm_onBoundsChangeEvent_1 _eventObject))))))
(define (BoundsChangeEventHandler.jclassValue) BoundsChangeEventHandler%)

(define BoundsChangeEventHandler.jcell_SINGLETON 'jnone)
(define (BoundsChangeEventHandler.jstatic_SINGLETON)
  (when (eq? BoundsChangeEventHandler.jcell_SINGLETON 'jnone) (set! BoundsChangeEventHandler.jcell_SINGLETON (BoundsChangeEventHandler.jnew_0)))
  BoundsChangeEventHandler.jcell_SINGLETON)
(define (BoundsChangeEventHandler.jsetstatic_SINGLETON value) (set! BoundsChangeEventHandler.jcell_SINGLETON value))

(define (BoundsChangeEventHandler.jnew_0)
  (define this (new BoundsChangeEventHandler% [jclass "BoundsChangeEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (BoundsChangeEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BoundsChangeEventHandler.jstatic_SINGLETON)))))



