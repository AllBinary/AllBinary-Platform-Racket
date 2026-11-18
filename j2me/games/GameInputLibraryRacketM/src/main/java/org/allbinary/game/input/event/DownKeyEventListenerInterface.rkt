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
;; package org.allbinary.game.input.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/logic/util/event/EventListenerInterface.rkt"
  "../../../../../java/lang/Integer.rkt")
(provide (all-defined-out))

(define DownKeyEventListenerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_onDownKeyEvent_1 _keyInteger)
      (raise (JR.newException "AbstractMethodError" "onDownKeyEvent")))
    (define/public (jm_onDownKey_1 _keyInteger)
      (raise (JR.newException "AbstractMethodError" "onDownKey")))))
(define (DownKeyEventListenerInterface.jclassValue) DownKeyEventListenerInterface%)

(define (DownKeyEventListenerInterface.jnew_0)
  (define this (new DownKeyEventListenerInterface% [jclass "DownKeyEventListenerInterface"]))
  this)



