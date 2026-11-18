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

(define UpKeyEventListenerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_onUpKeyEvent_1 _keyAsInteger)
      (raise (JR.newException "AbstractMethodError" "onUpKeyEvent")))))
(define (UpKeyEventListenerInterface.jclassValue) UpKeyEventListenerInterface%)

(define (UpKeyEventListenerInterface.jnew_0)
  (define this (new UpKeyEventListenerInterface% [jclass "UpKeyEventListenerInterface"]))
  this)



