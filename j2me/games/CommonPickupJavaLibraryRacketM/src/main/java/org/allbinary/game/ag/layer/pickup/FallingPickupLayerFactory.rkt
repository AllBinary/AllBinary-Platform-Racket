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
;; package org.allbinary.game.ag.layer.pickup

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo.rkt" (RemoteInfo.jstatic_REMOTE_INFO)])
(lazy-require ["./FallingPickupLayer.rkt" (FallingPickupLayer.jnew_1)])
(provide (all-defined-out))

(define FallingPickupLayerFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (FallingPickupLayer.jnew_1 (RemoteInfo.jstatic_REMOTE_INFO))))))))
(define (FallingPickupLayerFactory.jclassValue) FallingPickupLayerFactory%)

(define (FallingPickupLayerFactory.jnew_0)
  (define this (new FallingPickupLayerFactory% [jclass "FallingPickupLayerFactory"]))
  this)



