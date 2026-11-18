#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.view

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define EmulatorViewInterface%
  (class JObject%
    (super-new)
    (define/public (jm_setMidlet_1 _midlet)
      (raise (JR.newException "AbstractMethodError" "setMidlet")))
    (define/public (jm_onEmulatorInitComplete_1 _midletActivity)
      (raise (JR.newException "AbstractMethodError" "onEmulatorInitComplete")))
    (define/public (jm_onSetDisplayable_1 _displayable)
      (raise (JR.newException "AbstractMethodError" "onSetDisplayable")))))
(define (EmulatorViewInterface.jclassValue) EmulatorViewInterface%)

(define (EmulatorViewInterface.jnew_0)
  (define this (new EmulatorViewInterface% [jclass "EmulatorViewInterface"]))
  this)



