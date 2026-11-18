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
;; package org.allbinary.game.collision

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureFactory.rkt" (GameFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(lazy-require ["./SourceCollisionHelper.rkt" (SourceCollisionHelper.jnew_1)])
(lazy-require ["./CollisionHelper.rkt" (CollisionHelper.jnew_1)])
(provide (all-defined-out))

(define CollidableHelperFactory%
  (class JObject%
    (super-new)))
(define (CollidableHelperFactory.jclassValue) CollidableHelperFactory%)

(define (CollidableHelperFactory.jnew_0)
  (define this (new CollidableHelperFactory% [jclass "CollidableHelperFactory"]))
  this)

(define (CollidableHelperFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (if (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_COLLISIONS_WITH_SOURCE (GameFeatureFactory.jm_getInstance_0)))
            (begin
            (jreturn (CollisionHelper.jnew_1 (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))))
            (begin
            (jreturn (SourceCollisionHelper.jnew_1 (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))))))))



