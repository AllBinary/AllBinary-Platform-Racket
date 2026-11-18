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
  "../../../../../../org/allbinary/game/ai/BasicAI.rkt"
  "../../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_DOWN Canvas.jstatic_UP Canvas.jstatic_RIGHT Canvas.jstatic_LEFT)])
(lazy-require ["../../../../../../org/allbinary/game/identification/BasicGroupFactory.rkt" (BasicGroupFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener.rkt" (GroupLayerManagerListener.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/layer/weapon/WeaponLayer.rkt" (WeaponLayer.jm_getStaticType_0)])
(lazy-require ["../../../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(lazy-require ["../../../../../../org/allbinary/logic/math/MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(lazy-require ["./BasePatrolAI.rkt" (BasePatrolAI.jstatic_MAX_DISTANCE)])
(provide (all-defined-out))

(define FlockingAI%
  (class BasicAI%
    (super-new)
    (field [f_allowedDistance 0])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_maxDistance JR.null][_farAllbinaryLayer JR.null][_groupLayerManagerListener JR.null][_list JR.null][_size JR.null][_allBinaryLayer JR.null][_ownerLayerInterface JR.null][_distance JR.null][_index JR.null])
      (let/ec jreturn
        (set! _maxDistance 0)
        (set! _farAllbinaryLayer (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
        (set! _groupLayerManagerListener (GroupLayerManagerListener.jm_getInstance_0))
        (set! _list (send _groupLayerManagerListener jm_getList_1 (get-field f_ENEMY (BasicGroupFactory.jm_getInstance_0))))
        (set! _size (send _list jm_size_0))
        (set! _allBinaryLayer JR.null)
        (set! _ownerLayerInterface JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _allBinaryLayer (send _list jm_get_1 _index))
            (when (not (= (send _allBinaryLayer jm_getType_0) (WeaponLayer.jm_getStaticType_0)))
                (begin
                (set! _distance (send this jm_getXYDistance_1 _allBinaryLayer))
                (when (> _distance _maxDistance)
                    (begin
                    (set! _maxDistance _distance)
                    (set! _farAllbinaryLayer _allBinaryLayer)
                    (when (> _distance (get-field f_allowedDistance this))
                        (begin
                        (jbreak (void)))))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (when (> _maxDistance (get-field f_allowedDistance this))
            (begin
            (when (not (eq? _farAllbinaryLayer (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)))
                (begin
                (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
                (if (< (send _farAllbinaryLayer jm_getXP_0) (send _ownerLayerInterface jm_getXP_0))
                    (begin
                    (send this jm_processKeyAI_1 (Canvas.jstatic_LEFT)))
                    (if (> (send _farAllbinaryLayer jm_getXP_0) (send _ownerLayerInterface jm_getXP_0))
                    (begin
                    (send this jm_processKeyAI_1 (Canvas.jstatic_RIGHT)))
                    (if (> (send _farAllbinaryLayer jm_getYP_0) (send _ownerLayerInterface jm_getYP_0))
                    (begin
                    (send this jm_processKeyAI_1 (Canvas.jstatic_UP)))
                    (when (< (send _farAllbinaryLayer jm_getYP_0) (send _ownerLayerInterface jm_getYP_0))
                    (begin
                    (send this jm_processKeyAI_1 (Canvas.jstatic_DOWN))))))))))))))
    (define/public (jm_getXYDistance_1 _allBinaryLayer)
    (let ([_ownerLayerInterface JR.null][_xTotalDistance JR.null][_yTotalDistance JR.null][_mathUtil JR.null][_totalDistance JR.null])
      (let/ec jreturn
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _xTotalDistance (JR.i32 (- (JR.i32 (+ (send _allBinaryLayer jm_getXP_0) (send _allBinaryLayer jm_getHalfWidth_0))) (JR.i32 (+ (send _ownerLayerInterface jm_getXP_0) (send _ownerLayerInterface jm_getHalfWidth_0))))))
        (set! _yTotalDistance (JR.i32 (- (JR.i32 (+ (send _allBinaryLayer jm_getYP_0) (send _allBinaryLayer jm_getHalfHeight_0))) (JR.i32 (+ (send _ownerLayerInterface jm_getYP_0) (send _ownerLayerInterface jm_getHalfHeight_0))))))
        (set! _mathUtil (MathUtil.jm_getInstance_0))
        (set! _totalDistance (JR.i32 (+ (send _mathUtil jm_abs_1 _xTotalDistance) (send _mathUtil jm_abs_1 _yTotalDistance))))
        (jreturn _totalDistance))))))
(define (FlockingAI.jclassValue) FlockingAI%)

(define (FlockingAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)
  (define this (new FlockingAI% [jclass "FlockingAI"]))
    
    (let ([_allowedDistance JR.null])
      (let/ec jreturn
        (void)
        (set! _allowedDistance (send _hashtable jm_get_1 (BasePatrolAI.jstatic_MAX_DISTANCE)))
        (set-field! f_allowedDistance this (send _allowedDistance jm_intValue_0))))
  this)



