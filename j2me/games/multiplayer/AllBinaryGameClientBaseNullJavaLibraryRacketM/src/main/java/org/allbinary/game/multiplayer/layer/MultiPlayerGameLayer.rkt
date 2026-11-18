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
;; package org.allbinary.game.multiplayer.layer

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.rkt"
  "./MultiPlayerGameLayerInterface.rkt")
(lazy-require ["./MultiplayerBehavior.rkt" (MultiplayerBehavior.jstatic_NULL_MULTIPLAYER_BEHAVIOR)])
(provide (all-defined-out))

(define MultiPlayerGameLayer%
  (class CollidableDestroyableDamageableLayer%
    (super-new)
    (define/public (jm_getMultiplayerBehavior_0)
    (let ()
      (let/ec jreturn
        (jreturn (MultiplayerBehavior.jstatic_NULL_MULTIPLAYER_BEHAVIOR)))))
    (define/public (jm_setPingInfo_1 _show)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setFiring_1 _firing)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getFiring_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (MultiPlayerGameLayer.jclassValue) MultiPlayerGameLayer%)

(define (MultiPlayerGameLayer.jnew_5 _remoteInfo _groupInterface _name _layerInfo _viewPosition)
  (define this (new MultiPlayerGameLayer% [jclass "MultiPlayerGameLayer"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



