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
;; package org.allbinary.game.terrain

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/event/EventListenerInterface.rkt")
(provide (all-defined-out))

(define TerrainEventListenerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_onTerrainEvent_1 _trackingEvent)
      (raise (JR.newException "AbstractMethodError" "onTerrainEvent")))))
(define (TerrainEventListenerInterface.jclassValue) TerrainEventListenerInterface%)

(define (TerrainEventListenerInterface.jnew_0)
  (define this (new TerrainEventListenerInterface% [jclass "TerrainEventListenerInterface"]))
  this)



