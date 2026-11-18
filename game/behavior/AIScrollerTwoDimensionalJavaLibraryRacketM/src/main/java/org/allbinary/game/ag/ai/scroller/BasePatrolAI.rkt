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
(lazy-require ["../../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_LEFT Canvas.jstatic_RIGHT)])
(lazy-require ["../../../../../../org/allbinary/logic/math/MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasePatrolAI%
  (class BasicAI%
    (super-new)
    (field [f_maxDistance JR.null])
    (field [f_currentDistance 0])
    (field [f_xTotalDistance 0])
    (field [f_lastKeyDirection 0])
    (field [f_keyDirection 0])
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (send this jm_updateTotalDistance_0)
        (send this jm_changeDirectionIfReachedPacingAreaMax_0))))
    (define/public (jm_updateTotalDistance_0)
    (let ([_velocityInterfaceCompositeInterface JR.null][_velocityProperties JR.null])
      (let/ec jreturn
        (set! _velocityInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
        (set! _velocityProperties (send _velocityInterfaceCompositeInterface jm_getVelocityProperties_0))
        (set-field! f_xTotalDistance this (JR.i32 (+ (get-field f_xTotalDistance this) (JR.className (send _velocityProperties jm_getVelocityXBasicDecimalP_0))))))))
    (define/public (jm_changeDirectionIfReachedPacingAreaMax_0)
    (let ([_mathUtil JR.null][_totalDistance JR.null])
      (let/ec jreturn
        (set! _mathUtil (MathUtil.jm_getInstance_0))
        (set! _totalDistance (send _mathUtil jm_abs_1 (get-field f_xTotalDistance this)))
        (when (> _totalDistance (get-field f_currentDistance this))
            (begin
            (send this jm_nextDirection_0))))))
    (define/public (jm_nextDirection_0)
    (let ()
      (let/ec jreturn
        (if (= (get-field f_lastKeyDirection this) (Canvas.jstatic_LEFT))
            (begin
            (set-field! f_keyDirection this (Canvas.jstatic_RIGHT))
            (set-field! f_lastKeyDirection this (get-field f_keyDirection this))
            (set-field! f_xTotalDistance this 0))
            (when (= (get-field f_lastKeyDirection this) (Canvas.jstatic_RIGHT))
            (begin
            (set-field! f_keyDirection this (Canvas.jstatic_LEFT))
            (set-field! f_lastKeyDirection this (get-field f_keyDirection this))
            (set-field! f_xTotalDistance this 0)))))))
    (define/public (jm_disable_0)
    (let ()
      (let/ec jreturn (void))))))
(define (BasePatrolAI.jclassValue) BasePatrolAI%)

(define BasePatrolAI.jcell_MAX_DISTANCE 'jnone)
(define (BasePatrolAI.jstatic_MAX_DISTANCE)
  (when (eq? BasePatrolAI.jcell_MAX_DISTANCE 'jnone) (set! BasePatrolAI.jcell_MAX_DISTANCE (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 2)))
  BasePatrolAI.jcell_MAX_DISTANCE)
(define (BasePatrolAI.jsetstatic_MAX_DISTANCE value) (set! BasePatrolAI.jcell_MAX_DISTANCE value))

(define BasePatrolAI.jcell_DIRECTION_ARRAY 'jnone)
(define (BasePatrolAI.jstatic_DIRECTION_ARRAY)
  (when (eq? BasePatrolAI.jcell_DIRECTION_ARRAY 'jnone) (set! BasePatrolAI.jcell_DIRECTION_ARRAY (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 3)))
  BasePatrolAI.jcell_DIRECTION_ARRAY)
(define (BasePatrolAI.jsetstatic_DIRECTION_ARRAY value) (set! BasePatrolAI.jcell_DIRECTION_ARRAY value))

(define BasePatrolAI.jcell_FIRING_DISTANCE 'jnone)
(define (BasePatrolAI.jstatic_FIRING_DISTANCE)
  (when (eq? BasePatrolAI.jcell_FIRING_DISTANCE 'jnone) (set! BasePatrolAI.jcell_FIRING_DISTANCE (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 4)))
  BasePatrolAI.jcell_FIRING_DISTANCE)
(define (BasePatrolAI.jsetstatic_FIRING_DISTANCE value) (set! BasePatrolAI.jcell_FIRING_DISTANCE value))

(define BasePatrolAI.jcell_SPEED 'jnone)
(define (BasePatrolAI.jstatic_SPEED)
  (when (eq? BasePatrolAI.jcell_SPEED 'jnone) (set! BasePatrolAI.jcell_SPEED (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 5)))
  BasePatrolAI.jcell_SPEED)
(define (BasePatrolAI.jsetstatic_SPEED value) (set! BasePatrolAI.jcell_SPEED value))

(define (BasePatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)
  (define this (new BasePatrolAI% [jclass "BasePatrolAI"]))
    
    
    
    (set-field! f_lastKeyDirection this (Canvas.jstatic_RIGHT))
    (set-field! f_keyDirection this (Canvas.jstatic_RIGHT))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_maxDistance this (send _hashtable jm_get_1 (BasePatrolAI.jstatic_MAX_DISTANCE)))
        (set-field! f_currentDistance this (send (get-field f_maxDistance this) jm_intValue_0))))
  this)



