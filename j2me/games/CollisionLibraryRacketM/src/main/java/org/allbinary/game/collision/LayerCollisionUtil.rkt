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
(lazy-require ["../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil.rkt" (OpenGLFeatureUtil.jm_getInstance_0)])
(lazy-require ["./Collision2DProcessor.rkt" (Collision2DProcessor.jnew_0)])
(lazy-require ["./CollisionThreedProcessor.rkt" (CollisionThreedProcessor.jnew_0)])
(provide (all-defined-out))

(define LayerCollisionUtil%
  (class JObject%
    (super-new)
    (field [f_collisionProcessor JR.null])
    (define/public (jm_isCollision_2 _myLayer _myLayer2)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_collisionProcessor this) jm_isCollision_2 _myLayer _myLayer2)))))))
(define (LayerCollisionUtil.jclassValue) LayerCollisionUtil%)

(define LayerCollisionUtil.jcell_instance 'jnone)
(define (LayerCollisionUtil.jstatic_instance)
  (when (eq? LayerCollisionUtil.jcell_instance 'jnone) (set! LayerCollisionUtil.jcell_instance (LayerCollisionUtil.jnew_0)))
  LayerCollisionUtil.jcell_instance)
(define (LayerCollisionUtil.jsetstatic_instance value) (set! LayerCollisionUtil.jcell_instance value))

(define (LayerCollisionUtil.jnew_0)
  (define this (new LayerCollisionUtil% [jclass "LayerCollisionUtil"]))
    
    (let ([_features JR.null][_gameFeatureFactory JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (set! _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
        (if (and (send (OpenGLFeatureUtil.jm_getInstance_0) jm_isAnyThreed_0) (not (send _features jm_isFeature_1 (get-field f_COLLISIONS_FORCED_TWO_DIMENSIONAL _gameFeatureFactory))))
            (begin
            (set-field! f_collisionProcessor this (CollisionThreedProcessor.jnew_0)))
            (begin
            (set-field! f_collisionProcessor this (Collision2DProcessor.jnew_0))))))
  this)

(define (LayerCollisionUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LayerCollisionUtil.jstatic_instance)))))



