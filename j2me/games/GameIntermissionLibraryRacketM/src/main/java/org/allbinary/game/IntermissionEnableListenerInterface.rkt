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
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define IntermissionEnableListenerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_notifyIntermission_1 _enable)
      (raise (JR.newException "AbstractMethodError" "notifyIntermission")))))
(define (IntermissionEnableListenerInterface.jclassValue) IntermissionEnableListenerInterface%)

(define (IntermissionEnableListenerInterface.jnew_0)
  (define this (new IntermissionEnableListenerInterface% [jclass "IntermissionEnableListenerInterface"]))
  this)



