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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/ai/BasicAI.rkt"
  "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface.rkt"
  "../../../../../org/allbinary/game/tracking/TrackingEventListenerInterface.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_KEY_NUM1 Canvas.jstatic_LEFT Canvas.jstatic_DOWN Canvas.jstatic_UP Canvas.jstatic_RIGHT)])
(lazy-require ["../../../../../org/allbinary/direction/Direction.rkt" (Direction.jm_getInstance_1)])
(lazy-require ["../../../../../org/allbinary/direction/DirectionFactory.rkt" (DirectionFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler.rkt" (DestroyedEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/tracking/TrackingEventHandler.rkt" (TrackingEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/math/MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define DiveAndDirectionalTrackingAI%
  (class BasicAI%
    (super-new)
    (inherit/super jm_processKeyAI_1)
    (field [f_mathUtil JR.null])
    (field [f_directionFactory JR.null])
    (field [f_gameTickTimeDelayHelper JR.null])
    (field [f_timeDelayHelper JR.null])
    (field [f_list JR.null])
    (field [f_directionalInterface JR.null])
    (field [f_velocityInterface JR.null])
    (field [f_directionToKeyMap JR.null])
    (field [f_initialDropped #f])
    (field [f_diveP #f])
    (field [f_directionOfTarget JR.null])
    (field [f_MIN_DISTANCE 0])
    (field [f_lastTrackingLayerInterface JR.null])
    (field [f_artificialIntelligenceInterface JR.null])
    (field [f_aiVistor JR.null])
    (field [f_lastDirection JR.null])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (when (send this jm_isBeyondTarget_0)
            (begin
            (send this jm_init_0)
            (send (get-field f_velocityInterface this) jm_zero_0)))
        (if (not (get-field f_diveP this))
            (begin
            (send this jm_target_1 _allBinaryLayerManager))
            (begin
            (send this jm_dive_0)
            (send this jm_attack_0)))
        (send (get-field f_list this) jm_clear_0))))
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (set-field! f_diveP this #f)
        (set-field! f_directionOfTarget this (get-field f_NOT_BORDERED_WITH (DirectionFactory.jm_getInstance_0)))
        (send (TrackingEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this))))
    (define/public (jm_target_1 _allBinaryLayerManager)
    (let ([_lastTrackingEvent JR.null][_layerInterface JR.null][_ownerLayerInterface JR.null][_groupArray JR.null][_ownerGroupArray JR.null][_x JR.null][_y JR.null][_yDistance JR.null][_xDistance JR.null][_directionFactory JR.null])
      (let/ec jreturn
        (when (= (send (get-field f_list this) jm_size_0) 0)
            (begin
            (jreturn (void))))
        (set! _lastTrackingEvent (send (get-field f_list this) jm_removeAt_1 0))
        (set-field! f_lastTrackingLayerInterface this (send _lastTrackingEvent jm_getLayerInterface_0))
        (set! _layerInterface (get-field f_lastTrackingLayerInterface this))
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _groupArray (send _layerInterface jm_getGroupInterface_0))
        (set! _ownerGroupArray (send _ownerLayerInterface jm_getGroupInterface_0))
        (when (eq? _groupArray _ownerGroupArray)
            (begin
            (jreturn (void))))
        (set! _x (send (get-field f_lastTrackingLayerInterface this) jm_getXP_0))
        (set! _y (send (get-field f_lastTrackingLayerInterface this) jm_getYP_0))
        (set! _yDistance (JR.i32 (- (JR.i32 (- (send _ownerLayerInterface jm_getYP_0) _y)) (send _ownerLayerInterface jm_getHeight_0))))
        (set! _xDistance (JR.i32 (- (JR.i32 (- (send _ownerLayerInterface jm_getXP_0) _x)) (send _ownerLayerInterface jm_getWidth_0))))
        (set! _directionFactory (DirectionFactory.jm_getInstance_0))
        (if (> (send (get-field f_mathUtil this) jm_abs_1 _yDistance) (send (get-field f_mathUtil this) jm_abs_1 _xDistance))
            (begin
            (if (> _yDistance (get-field f_MIN_DISTANCE this))
                (begin
                (set-field! f_directionOfTarget this (get-field f_UP _directionFactory)))
                (when (< _yDistance (JR.i32 (- (get-field f_MIN_DISTANCE this))))
                (begin
                (set-field! f_directionOfTarget this (get-field f_DOWN _directionFactory))))))
            (begin
            (if (> _xDistance (get-field f_MIN_DISTANCE this))
                (begin
                (set-field! f_directionOfTarget this (get-field f_LEFT _directionFactory)))
                (when (< _xDistance (JR.i32 (- (get-field f_MIN_DISTANCE this))))
                (begin
                (set-field! f_directionOfTarget this (get-field f_RIGHT _directionFactory)))))))
        (when (and (not (get-field f_initialDropped this)) (not (eq? (get-field f_directionOfTarget this) (get-field f_NOT_BORDERED_WITH _directionFactory))))
            (begin
            (send this jm_drop_0)))
        (when (get-field f_initialDropped this)
            (begin
            (if (or (eq? (get-field f_directionOfTarget this) (get-field f_UP _directionFactory)) (eq? (get-field f_directionOfTarget this) (get-field f_DOWN _directionFactory)))
                (begin
                (send this jm_verticalTargeting_1 _x))
                (if (or (eq? (get-field f_directionOfTarget this) (get-field f_LEFT _directionFactory)) (eq? (get-field f_directionOfTarget this) (get-field f_RIGHT _directionFactory)))
                (begin
                (send this jm_horizontalTargeting_1 _y))
                (begin
                (send (get-field f_artificialIntelligenceInterface this) jm_processAI_1 _allBinaryLayerManager)))))))))
    (define/public (jm_verticalTargeting_1 _x)
    (let ([_ownerLayerInterface JR.null])
      (let/ec jreturn
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (when (< (send _ownerLayerInterface jm_getXP_0) _x)
            (begin
            (send this jm_moveRight_0)))
        (when (> (send _ownerLayerInterface jm_getXP_0) _x)
            (begin
            (send this jm_moveLeft_0)))
        (when (and (> (send _ownerLayerInterface jm_getXP_0) (JR.i32 (- _x 3))) (< (send _ownerLayerInterface jm_getXP_0) (JR.i32 (+ _x 3))))
            (begin
            (send this jm_setDive_0))))))
    (define/public (jm_horizontalTargeting_1 _y)
    (let ([_ownerLayerInterface JR.null])
      (let/ec jreturn
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (when (< (send _ownerLayerInterface jm_getYP_0) _y)
            (begin
            (send this jm_moveDown_0)))
        (when (> (send _ownerLayerInterface jm_getYP_0) _y)
            (begin
            (send this jm_moveUp_0)))
        (when (and (> (send _ownerLayerInterface jm_getYP_0) (JR.i32 (- _y 3))) (< (send _ownerLayerInterface jm_getYP_0) (JR.i32 (+ _y 3))))
            (begin
            (send this jm_setDive_0))))))
    (define/public (jm_setDive_0)
    (let ()
      (let/ec jreturn
        (set-field! f_diveP this #t)
        (send (get-field f_velocityInterface this) jm_zero_0)
        (send (TrackingEventHandler.jm_getInstance_0) jm_removeListener_1 this))))
    (define/public (jm_moveRight_0)
    (let ()
      (let/ec jreturn
        (send this jm_setLastDirection_1 (get-field f_RIGHT (get-field f_directionFactory this)))
        (send (get-field f_directionalInterface this) jm_setFrameByDirection_1 (get-field f_lastDirection this))
        (send (get-field f_aiVistor this) jm_visit_1 this))))
    (define/public (jm_moveLeft_0)
    (let ()
      (let/ec jreturn
        (send this jm_setLastDirection_1 (get-field f_LEFT (get-field f_directionFactory this)))
        (send (get-field f_directionalInterface this) jm_setFrameByDirection_1 (get-field f_lastDirection this))
        (send (get-field f_aiVistor this) jm_visit_1 this))))
    (define/public (jm_moveDown_0)
    (let ()
      (let/ec jreturn
        (send this jm_setLastDirection_1 (get-field f_DOWN (get-field f_directionFactory this)))
        (send (get-field f_directionalInterface this) jm_setFrameByDirection_1 (get-field f_lastDirection this))
        (send (get-field f_aiVistor this) jm_visit_1 this))))
    (define/public (jm_moveUp_0)
    (let ()
      (let/ec jreturn
        (send this jm_setLastDirection_1 (get-field f_UP (get-field f_directionFactory this)))
        (send (get-field f_directionalInterface this) jm_setFrameByDirection_1 (get-field f_lastDirection this))
        (send (get-field f_aiVistor this) jm_visit_1 this))))
    (define/public (jm_dive_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_directionalInterface this) jm_setFrameByDirection_1 (get-field f_directionOfTarget this))
        (send (get-field f_aiVistor this) jm_visit_1 this))))
    (define/public (jm_attack_0)
    (let ()
      (let/ec jreturn
        (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM1)))))
    (define/public (jm_drop_0)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_timeDelayHelper this) jm_isTime_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this)))
            (begin
            (set-field! f_initialDropped this #t)
            (send (get-field f_aiVistor this) jm_visit_1 this))))))
    (define/public (jm_isBeyondTarget_0)
    (let ()
      (let/ec jreturn
        (if (eq? (get-field f_directionOfTarget this) (get-field f_DOWN (get-field f_directionFactory this)))
            (begin
            (if (> (JR.className (send this jm_getOwnerLayerInterface_0)) (JR.i32 (+ (send (get-field f_lastTrackingLayerInterface this) jm_getYP_0) (get-field f_MIN_DISTANCE this))))
                (begin
                (jreturn #t))
                (begin
                (jreturn #f))))
            (if (eq? (get-field f_directionOfTarget this) (get-field f_UP (get-field f_directionFactory this)))
            (begin
            (if (< (JR.className (send this jm_getOwnerLayerInterface_0)) (JR.i32 (+ (send (get-field f_lastTrackingLayerInterface this) jm_getYP_0) (get-field f_MIN_DISTANCE this))))
                (begin
                (jreturn #t))
                (begin
                (jreturn #f))))
            (if (eq? (get-field f_directionOfTarget this) (get-field f_RIGHT (get-field f_directionFactory this)))
            (begin
            (if (> (JR.className (send this jm_getOwnerLayerInterface_0)) (JR.i32 (+ (send (get-field f_lastTrackingLayerInterface this) jm_getXP_0) (get-field f_MIN_DISTANCE this))))
                (begin
                (jreturn #t))
                (begin
                (jreturn #f))))
            (if (eq? (get-field f_directionOfTarget this) (get-field f_LEFT (get-field f_directionFactory this)))
            (begin
            (if (< (JR.className (send this jm_getOwnerLayerInterface_0)) (JR.i32 (+ (send (get-field f_lastTrackingLayerInterface this) jm_getXP_0) (get-field f_MIN_DISTANCE this))))
                (begin
                (jreturn #t))
                (begin
                (jreturn #f))))
            (begin
            (jreturn #f)))))))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onMovement_1 _trackingEvent)
    (let ()
      (let/ec jreturn
        (send (get-field f_list this) jm_add_1 _trackingEvent))))
    (define/public (jm_onDestroyed_1 _destroyedEvent)
    (let ()
      (let/ec jreturn
        (when (eq? (send this jm_getOwnerLayerInterface_0) (send _destroyedEvent jm_getLayerInterface_0))
            (begin
            (send (TrackingEventHandler.jm_getInstance_0) jm_removeListener_1 this)
            (send (DestroyedEventHandler.jm_getInstance_0) jm_removeListener_1 this))))))
    (define/public (jm_setLastDirection_1 _lastDirection)
    (let ([_value JR.null])
      (let/ec jreturn
        (set-field! f_lastDirection this _lastDirection)
        (set! _value (send (send this jm_getLastDirection_0) jm_getValue_0))
        (when (< _value 4)
            (begin
            (super jm_setLastKey_1 (vector-ref (get-field f_directionToKeyMap this) _value)))))))
    (define/override (jm_setLastKey_1 _lastKey)
    (let ()
      (let/ec jreturn
        (super jm_setLastKey_1 _lastKey)
        (if (= (send this jm_getLastKey_0) (Canvas.jstatic_LEFT))
            (begin
            (set-field! f_lastDirection this (get-field f_LEFT (DirectionFactory.jm_getInstance_0))))
            (if (= (send this jm_getLastKey_0) (Canvas.jstatic_DOWN))
            (begin
            (set-field! f_lastDirection this (get-field f_DOWN (DirectionFactory.jm_getInstance_0))))
            (if (= (send this jm_getLastKey_0) (Canvas.jstatic_UP))
            (begin
            (set-field! f_lastDirection this (get-field f_UP (DirectionFactory.jm_getInstance_0))))
            (when (= (send this jm_getLastKey_0) (Canvas.jstatic_RIGHT))
            (begin
            (set-field! f_lastDirection this (get-field f_RIGHT (DirectionFactory.jm_getInstance_0)))))))))))
    (define/public (jm_getLastDirection_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_lastDirection this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (super jm_toString_0))
        (send _stringBuffer jm_append_1 " LastDirection: ")
        (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (send this jm_getLastDirection_0)))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (DiveAndDirectionalTrackingAI.jclassValue) DiveAndDirectionalTrackingAI%)

(define (DiveAndDirectionalTrackingAI.jnew_4 _ownerLayerInterface _artificialIntelligenceInterface _gameInput _visitor)
  (define this (new DiveAndDirectionalTrackingAI% [jclass "DiveAndDirectionalTrackingAI"]))
    (set-field! f_mathUtil this (MathUtil.jm_getInstance_0))
    (set-field! f_directionFactory this (DirectionFactory.jm_getInstance_0))
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 500))
    (set-field! f_list this (BasicArrayListD.jnew_0))
    
    
    (set-field! f_directionToKeyMap this (vector (Canvas.jstatic_LEFT) (Canvas.jstatic_DOWN) (Canvas.jstatic_UP) (Canvas.jstatic_RIGHT)))
    
    
    (set-field! f_directionOfTarget this (Direction.jm_getInstance_1 0))
    (set-field! f_MIN_DISTANCE this 40)
    (set-field! f_lastTrackingLayerInterface this (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    
    
    (set-field! f_lastDirection this (get-field f_NO_DIRECTION (DirectionFactory.jm_getInstance_0)))
    (let ([_directionalCompositeInterface JR.null][_velocityInterfaceCompositeInterface JR.null])
      (let/ec jreturn
        (void)
        (set-field! f_aiVistor this _visitor)
        (set-field! f_artificialIntelligenceInterface this _artificialIntelligenceInterface)
        (set! _directionalCompositeInterface (send this jm_getOwnerLayerInterface_0))
        (set-field! f_directionalInterface this (send _directionalCompositeInterface jm_getDirectionalInterface_0))
        (set! _velocityInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
        (set-field! f_velocityInterface this (send _velocityInterfaceCompositeInterface jm_getVelocityProperties_0))
        (send (DestroyedEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this)
        (send this jm_init_0)))
  this)



