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
;; package org.allbinary.game.ag.ai.scroller

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "./PacePatrolAI.rkt")
(lazy-require ["../../../../../../org/allbinary/game/terrain/BasicTerrainInfo.rkt" (BasicTerrainInfo.jnew_1)])
(lazy-require ["../../../../../../org/allbinary/game/terrain/TerrainEventCircularStaticPool.rkt" (TerrainEventCircularStaticPool.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/terrain/TerrainEventHandler.rkt" (TerrainEventHandler.jm_getInstance_1)])
(lazy-require ["../../../../../../org/allbinary/game/terrain/TerrainEventListener.rkt" (TerrainEventListener.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TerrainPatrolAI%
  (class PacePatrolAI%
    (super-new)
    (field [f_terrainEventListener JR.null])
    (field [f_DOWN JR.null])
    (field [f_CLIFF JR.null])
    (define/override (jm_update_0)
    (let ()
      (let/ec jreturn
        (super jm_update_0)
        (send this jm_changeDirectionIfCliffReached_0))))
    (define/public (jm_changeDirectionIfCliffReached_0)
    (let ([_list JR.null][_size JR.null][_terrainEvent JR.null][_basicTerrainInfo JR.null][_angle JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (send (get-field f_terrainEventListener this) jm_getList_0))
        (set! _size (send _list jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _terrainEvent (send _list jm_removeAt_1 _index))
            (set! _basicTerrainInfo (send _terrainEvent jm_getBasicTerrainInfo_0))
            (set! _angle (send _basicTerrainInfo jm_getAngle_0))
            (when (eq? _angle (get-field f_DOWN this))
                (begin
                (send this jm_nextDirection_0)
                (when (not (get-field f_isFollowLimitedByTerrain this))
                    (begin
                    (JR.className (get-field f_logUtil this))
                    (set-field! f_isFollowLimitedByTerrain this #t))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (TerrainPatrolAI.jclassValue) TerrainPatrolAI%)

(define (TerrainPatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)
  (define this (new TerrainPatrolAI% [jclass "TerrainPatrolAI"]))
    (set-field! f_terrainEventListener this (TerrainEventListener.jnew_0))
    (set-field! f_DOWN this (get-field f_DOWN (AngleFactory.jm_getInstance_0)))
    (set-field! f_CLIFF this (BasicTerrainInfo.jnew_1 (get-field f_DOWN this)))
    (let ()
      (let/ec jreturn
        (void)
        (send (TerrainEventHandler.jm_getInstance_1 _ownerLayerInterface) jm_addListener_1 (get-field f_terrainEventListener this))
        (send (get-field f_terrainEventListener this) jm_onTerrainEvent_1 (send (TerrainEventCircularStaticPool.jm_getInstance_0) jm_getNext_1 (get-field f_CLIFF this)))))
  this)



