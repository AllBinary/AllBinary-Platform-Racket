#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.view

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/game/configuration/event/GameInitializedListenerInterface.rkt"
  "../../../org/allbinary/game/midlet/DemoGameMidletEventListener.rkt"
  "../../../org/allbinary/midlet/MidletCompositeInterface.rkt"
  "./EmulatorViewInterface.rkt")
(provide (all-defined-out))

(define AllBinaryMidletViewInterface%
  (class JObject%
    (super-new)
    (define/public (jm_onResume_0)
      (raise (JR.newException "AbstractMethodError" "onResume")))
    (define/public (jm_onPause_0)
      (raise (JR.newException "AbstractMethodError" "onPause")))
    (define/public (jm_onDestroy_0)
      (raise (JR.newException "AbstractMethodError" "onDestroy")))))
(define (AllBinaryMidletViewInterface.jclassValue) AllBinaryMidletViewInterface%)

(define (AllBinaryMidletViewInterface.jnew_0)
  (define this (new AllBinaryMidletViewInterface% [jclass "AllBinaryMidletViewInterface"]))
  this)



