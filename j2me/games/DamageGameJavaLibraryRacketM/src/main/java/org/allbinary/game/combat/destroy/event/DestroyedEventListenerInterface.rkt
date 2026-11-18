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
;; package org.allbinary.game.combat.destroy.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/EventListenerInterface.rkt")
(provide (all-defined-out))

(define DestroyedEventListenerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_onDestroyed_1 _destroyedEvent)
      (raise (JR.newException "AbstractMethodError" "onDestroyed")))))
(define (DestroyedEventListenerInterface.jclassValue) DestroyedEventListenerInterface%)

(define (DestroyedEventListenerInterface.jnew_0)
  (define this (new DestroyedEventListenerInterface% [jclass "DestroyedEventListenerInterface"]))
  this)



