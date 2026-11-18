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
  "../../../../org/allbinary/logic/util/event/EventListenerInterface.rkt")
(provide (all-defined-out))

(define DemoGameMidletEventListener%
  (class JObject%
    (super-new)
    (define/public (jm_onDemoStart_0)
      (raise (JR.newException "AbstractMethodError" "onDemoStart")))
    (define/public (jm_onGameStart_0)
      (raise (JR.newException "AbstractMethodError" "onGameStart")))
    (define/public (jm_onDemoGameMidletEvent_1 _demoGameMidletEvent)
      (raise (JR.newException "AbstractMethodError" "onDemoGameMidletEvent")))))
(define (DemoGameMidletEventListener.jclassValue) DemoGameMidletEventListener%)

(define (DemoGameMidletEventListener.jnew_0)
  (define this (new DemoGameMidletEventListener% [jclass "DemoGameMidletEventListener"]))
  this)



