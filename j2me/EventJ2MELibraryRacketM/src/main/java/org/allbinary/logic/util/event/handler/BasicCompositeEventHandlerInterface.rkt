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
;; package org.allbinary.logic.util.event.handler

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define BasicCompositeEventHandlerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getEventHandler_0)
      (raise (JR.newException "AbstractMethodError" "getEventHandler")))
    (define/public (jm_setEventHandler_1 _basicEventHandlerInterface)
      (raise (JR.newException "AbstractMethodError" "setEventHandler")))))
(define (BasicCompositeEventHandlerInterface.jclassValue) BasicCompositeEventHandlerInterface%)

(define (BasicCompositeEventHandlerInterface.jnew_0)
  (define this (new BasicCompositeEventHandlerInterface% [jclass "BasicCompositeEventHandlerInterface"]))
  this)



