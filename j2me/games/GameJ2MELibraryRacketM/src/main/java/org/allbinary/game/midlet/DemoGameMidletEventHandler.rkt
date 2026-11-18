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
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/handler/BasicEventHandler.rkt")
(provide (all-defined-out))

(define DemoGameMidletEventHandler%
  (class BasicEventHandler%
    (super-new)
    (define/override (jm_process_2 _eventObject _eventListenerInterface)
    (let ([_demoGameMidletEventListener JR.null])
      (let/ec jreturn
        (set! _demoGameMidletEventListener _eventListenerInterface)
        (send _demoGameMidletEventListener jm_onDemoGameMidletEvent_1 _eventObject))))))
(define (DemoGameMidletEventHandler.jclassValue) DemoGameMidletEventHandler%)

(define DemoGameMidletEventHandler.jcell_gameKeyEventHandler 'jnone)
(define (DemoGameMidletEventHandler.jstatic_gameKeyEventHandler)
  (when (eq? DemoGameMidletEventHandler.jcell_gameKeyEventHandler 'jnone) (set! DemoGameMidletEventHandler.jcell_gameKeyEventHandler (DemoGameMidletEventHandler.jnew_0)))
  DemoGameMidletEventHandler.jcell_gameKeyEventHandler)
(define (DemoGameMidletEventHandler.jsetstatic_gameKeyEventHandler value) (set! DemoGameMidletEventHandler.jcell_gameKeyEventHandler value))

(define (DemoGameMidletEventHandler.jnew_0)
  (define this (new DemoGameMidletEventHandler% [jclass "DemoGameMidletEventHandler"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DemoGameMidletEventHandler.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DemoGameMidletEventHandler.jstatic_gameKeyEventHandler)))))



