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
  "../../../../../../org/allbinary/game/tracking/TrackingEventListenerInterface.rkt"
  "./BasePatrolAI.rkt")
(lazy-require ["../../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_RIGHT Canvas.jstatic_LEFT Canvas.jstatic_KEY_NUM1)])
(lazy-require ["../../../../../../org/allbinary/direction/DirectionFactory.rkt" (DirectionFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/tracking/TrackingEventHandler.rkt" (TrackingEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define PacePatrolAI%
  (class BasePatrolAI%
    (super-new)
    (inherit/super jm_processKeyAI_1)
    (field [f_trackingList JR.null])
    (field [f_firingDistance 0])
    (field [f_isFollowLimitedByTerrain #f])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_direction JR.null][_directionFactory JR.null])
      (let/ec jreturn
        (send this jm_update_0)
        (set! _direction (send this jm_setFiringDirectionForTargetIfInRange_0))
        (set! _directionFactory (DirectionFactory.jm_getInstance_0))
        (if (eq? _direction (get-field f_LEFT _directionFactory))
            (begin
            (when (or (not (eq? (get-field f_lastKeyDirection this) (get-field f_keyDirection this))) (not (get-field f_isFollowLimitedByTerrain this)))
                (begin
                (super jm_processKeyAI_1 (Canvas.jstatic_LEFT))))
            (set-field! f_keyDirection this (Canvas.jstatic_LEFT))
            (set-field! f_lastKeyDirection this (get-field f_keyDirection this))
            (set-field! f_xTotalDistance this 0)
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM1)))
            (if (eq? _direction (get-field f_RIGHT _directionFactory))
            (begin
            (when (or (not (eq? (get-field f_lastKeyDirection this) (get-field f_keyDirection this))) (not (get-field f_isFollowLimitedByTerrain this)))
                (begin
                (super jm_processKeyAI_1 (Canvas.jstatic_RIGHT))))
            (set-field! f_keyDirection this (Canvas.jstatic_RIGHT))
            (set-field! f_lastKeyDirection this (get-field f_keyDirection this))
            (set-field! f_xTotalDistance this 0)
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM1)))
            (begin
            (super jm_processKeyAI_1 (get-field f_keyDirection this))))))))
    (define/public (jm_setFiringDirectionForTargetIfInRange_0)
    (let ([_directionFactory JR.null][_ownerLayerInterface JR.null][_direction JR.null][_lastTrackingEvent JR.null][_lastTrackingLayerInterface JR.null][_directionCompositeInterface JR.null][_size JR.null][_x JR.null][_y JR.null][_yDistance JR.null][_xDistance JR.null][_absXDistance JR.null][_absYDistance JR.null][_index JR.null])
      (let/ec jreturn
        (set! _directionFactory (DirectionFactory.jm_getInstance_0))
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _direction (get-field f_NOT_BORDERED_WITH _directionFactory))
        (set! _lastTrackingEvent JR.null)
        (set! _lastTrackingLayerInterface JR.null)
        (set! _directionCompositeInterface JR.null)
        (set! _size (send (get-field f_trackingList this) jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _lastTrackingEvent (send (get-field f_trackingList this) jm_get_1 0))
            (set! _lastTrackingLayerInterface (send _lastTrackingEvent jm_getLayerInterface_0))
            (set! _x (send _lastTrackingLayerInterface jm_getXP_0))
            (set! _y (send _lastTrackingLayerInterface jm_getYP_0))
            (set! _yDistance (JR.i32 (- (JR.i32 (- (send _ownerLayerInterface jm_getYP_0) _y)) (send _ownerLayerInterface jm_getHeight_0))))
            (set! _xDistance (JR.i32 (- (JR.i32 (- (send _ownerLayerInterface jm_getXP_0) _x)) (send _ownerLayerInterface jm_getWidth_0))))
            (set! _absXDistance (abs _xDistance))
            (set! _absYDistance (abs _yDistance))
            (when (<= _absYDistance 100)
                (begin
                (when (< _absXDistance (JR.idiv (send this jm_getFiringDistance_0) 2))
                    (begin
                    (set! _directionCompositeInterface (send this jm_getOwnerLayerInterface_0))
                    (if (and (< _xDistance 0) (eq? (send _directionCompositeInterface jm_getDirection_0) (get-field f_RIGHT _directionFactory)))
                        (begin
                        (set! _direction (get-field f_RIGHT _directionFactory)))
                        (when (and (> _xDistance 0) (eq? (send _directionCompositeInterface jm_getDirection_0) (get-field f_LEFT _directionFactory)))
                        (begin
                        (set! _direction (get-field f_LEFT _directionFactory))))))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _direction))))
    (define/override (jm_disable_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onMovement_1 _trackingEvent)
    (let ()
      (let/ec jreturn
        (send (get-field f_trackingList this) jm_clear_0)
        (send (get-field f_trackingList this) jm_add_1 _trackingEvent))))
    (define/public (jm_getFiringDistance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_firingDistance this)))))
    (define/public (jm_setFiringDistance_1 _firingDistance)
    (let ()
      (let/ec jreturn
        (set-field! f_firingDistance this _firingDistance))))))
(define (PacePatrolAI.jclassValue) PacePatrolAI%)

(define (PacePatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)
  (define this (new PacePatrolAI% [jclass "PacePatrolAI"]))
    
    
    (set-field! f_isFollowLimitedByTerrain this #f)
    (let ()
      (let/ec jreturn
        (void)
        (send (TrackingEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this)
        (set-field! f_trackingList this (BasicArrayListD.jnew_0))))
  this)



