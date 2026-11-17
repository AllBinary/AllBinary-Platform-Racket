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

(define BasicEventHandlerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_addListenerInterface_1 _eventListenerInterface)
      (raise (JR.newException "AbstractMethodError" "addListenerInterface")))
    (define/public (jm_addListeners_1 _basicArrayList)
      (raise (JR.newException "AbstractMethodError" "addListeners")))
    (define/public (jm_fireEvent_1 _eventObject)
      (raise (JR.newException "AbstractMethodError" "fireEvent")))
    (define/public (jm_removeAllListeners_0)
      (raise (JR.newException "AbstractMethodError" "removeAllListeners")))
    (define/public (jm_removeListener_1 _eventListenerInterface)
      (raise (JR.newException "AbstractMethodError" "removeListener")))))

(define (BasicEventHandlerInterface.jnew_0)
  (define this (new BasicEventHandlerInterface% [jclass "BasicEventHandlerInterface"]))
  this)



