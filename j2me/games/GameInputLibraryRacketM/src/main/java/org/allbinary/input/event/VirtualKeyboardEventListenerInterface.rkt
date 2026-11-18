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
;; package org.allbinary.input.event

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/EventListenerInterface.rkt")
(provide (all-defined-out))

(define VirtualKeyboardEventListenerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_onVirtualKeyboardEvent_1 _virtualKeyboardEvent)
      (raise (JR.newException "AbstractMethodError" "onVirtualKeyboardEvent")))))
(define (VirtualKeyboardEventListenerInterface.jclassValue) VirtualKeyboardEventListenerInterface%)

(define (VirtualKeyboardEventListenerInterface.jnew_0)
  (define this (new VirtualKeyboardEventListenerInterface% [jclass "VirtualKeyboardEventListenerInterface"]))
  this)



