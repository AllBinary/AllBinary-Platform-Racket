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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./GameFeature.rkt" (GameFeature.jnew_1)])
(lazy-require ["./Feature.rkt" (Feature.jnew_1)])
(provide (all-defined-out))

(define GameFeatureFactory%
  (class JObject%
    (super-new)
    (field [f_SOUND JR.null])
    (field [f_MUSIC JR.null])
    (field [f_SCREEN_SHAKE JR.null])
    (field [f_POST_IMAGE_LOADING_MODIFICATION JR.null])
    (field [f_HEALTH_BARS JR.null])
    (field [f_DAMAGE_FLOATERS JR.null])
    (field [f_GAME_INPUT_LAYER_PROCESSOR JR.null])
    (field [f_ARTIFICIAL_INTELLEGENCE_PROCESSOR JR.null])
    (field [f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR JR.null])
    (field [f_TICKABLE_LAYER_PROCESSOR JR.null])
    (field [f_CHEATING JR.null])
    (field [f_DROPPED_ITEMS JR.null])
    (field [f_DROPPED_ITEMS_FROM_DEATH JR.null])
    (field [f_TEST_DESTROYED_LAYER_PROCESSOR JR.null])
    (field [f_COLLISIONS_WITH_SOURCE JR.null])
    (field [f_COLLISIONS_FORCED_TWO_DIMENSIONAL JR.null])))
(define (GameFeatureFactory.jclassValue) GameFeatureFactory%)

(define GameFeatureFactory.jcell_instance 'jnone)
(define (GameFeatureFactory.jstatic_instance)
  (when (eq? GameFeatureFactory.jcell_instance 'jnone) (set! GameFeatureFactory.jcell_instance (GameFeatureFactory.jnew_0)))
  GameFeatureFactory.jcell_instance)
(define (GameFeatureFactory.jsetstatic_instance value) (set! GameFeatureFactory.jcell_instance value))

(define (GameFeatureFactory.jnew_0)
  (define this (new GameFeatureFactory% [jclass "GameFeatureFactory"]))
    (set-field! f_SOUND this (GameFeature.jnew_1 "Sound"))
    (set-field! f_MUSIC this (GameFeature.jnew_1 "Music"))
    (set-field! f_SCREEN_SHAKE this (Feature.jnew_1 "Screen Shake"))
    (set-field! f_POST_IMAGE_LOADING_MODIFICATION this (Feature.jnew_1 "Post Image Loading Modification (Scaling, Rotation, or Other)"))
    (set-field! f_HEALTH_BARS this (GameFeature.jnew_1 "Health Bars"))
    (set-field! f_DAMAGE_FLOATERS this (GameFeature.jnew_1 "Damage Floaters"))
    (set-field! f_GAME_INPUT_LAYER_PROCESSOR this (GameFeature.jnew_1 "Game Input Layer Processor"))
    (set-field! f_ARTIFICIAL_INTELLEGENCE_PROCESSOR this (GameFeature.jnew_1 "Artificial Intelligence Layer Processor"))
    (set-field! f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR this (GameFeature.jnew_1 "Collidable Interface Layer Processor"))
    (set-field! f_TICKABLE_LAYER_PROCESSOR this (GameFeature.jnew_1 "Tickable Layer Processor"))
    (set-field! f_CHEATING this (GameFeature.jnew_1 "Cheating"))
    (set-field! f_DROPPED_ITEMS this (GameFeature.jnew_1 "Drops"))
    (set-field! f_DROPPED_ITEMS_FROM_DEATH this (GameFeature.jnew_1 "Drops from Dead"))
    (set-field! f_TEST_DESTROYED_LAYER_PROCESSOR this (GameFeature.jnew_1 "Destroyed Layer Processor"))
    (set-field! f_COLLISIONS_WITH_SOURCE this (GameFeature.jnew_1 "Allow Collisions With Source"))
    (set-field! f_COLLISIONS_FORCED_TWO_DIMENSIONAL this (GameFeature.jnew_1 "Collisions Forced Two Dimensional"))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameFeatureFactory.jstatic_instance)))))



