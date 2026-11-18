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
  "../../../../org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./TerrainEvent.rkt" (TerrainEvent.jnew_1)])
(provide (all-defined-out))

(define TerrainEventFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TerrainEvent.jnew_1 (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))))))))
(define (TerrainEventFactory.jclassValue) TerrainEventFactory%)

(define (TerrainEventFactory.jnew_0)
  (define this (new TerrainEventFactory% [jclass "TerrainEventFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)



