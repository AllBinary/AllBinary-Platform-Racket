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
(lazy-require ["../../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_LEFT Canvas.jstatic_KEY_NUM1)])
(lazy-require ["../../../../../../org/allbinary/game/rand/MyRandomFactory.rkt" (MyRandomFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory.rkt" (SecondaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define HorizontalScreenPatrolAI%
  (class BasicAI%
    (super-new)
    (inherit/super jm_processKeyAI_1)
    (field [f_keyDirection 0])
    (field [f_displayInfoSingleton JR.null])
    (field [f_firingX 0])
    (field [f_firedIndex 0])
    (field [f_MAX_FIRE 0])
    (field [f_timeDelayHelper JR.null])
    (field [f_secondaryPlayerQueue JR.null])
    (field [f_sound JR.null])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_layerInterface JR.null][_currentOwnerLayerX JR.null][_y JR.null][_gameLayerManager JR.null][_FIRE JR.null])
      (let/ec jreturn
        (super jm_processKeyAI_1 (get-field f_keyDirection this))
        (when (send (get-field f_timeDelayHelper this) jm_isTimeTNT_0)
            (begin
            (set! _layerInterface (send this jm_getOwnerLayerInterface_0))
            (set! _currentOwnerLayerX (send _layerInterface jm_getXP_0))
            (when (< _currentOwnerLayerX (JR.i32 (- (send _layerInterface jm_getWidth_0))))
                (begin
                (set! _y (send (MyRandomFactory.jm_getInstance_0) jm_getAbsoluteNextIntAllowZero_1 50))
                (send _layerInterface jm_setPosition_3 (JR.i32 (+ (JR.i32 (+ (send (get-field f_displayInfoSingleton this) jm_getLastWidth_0) (send _layerInterface jm_getWidth_0))) 50)) _y (send _layerInterface jm_getZP_0))
                (set-field! f_firedIndex this 0)
                (set-field! f_firingX this (JR.i32 (+ (send (get-field f_displayInfoSingleton this) jm_getLastHalfWidth_0) (send (MyRandomFactory.jm_getInstance_0) jm_getNextInt_1 (send (get-field f_displayInfoSingleton this) jm_getLastHalfWidth_0)))))
                (send (get-field f_secondaryPlayerQueue this) jm_add_1 (get-field f_sound this))))
            (when (and (< _currentOwnerLayerX (get-field f_firingX this)) (> _currentOwnerLayerX (JR.i32 (- (send _layerInterface jm_getWidth_0)))))
                (begin
                (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM1))
                (set! _gameLayerManager _allBinaryLayerManager)
                (set! _FIRE (arithmetic-shift (JR.i32 (+ (JR.className (send _gameLayerManager jm_getGameInfo_0)) 12)) (- (bitwise-and 2 31))))
                (when (> _FIRE (get-field f_MAX_FIRE this))
                    (begin
                    (set! _FIRE (get-field f_MAX_FIRE this))))
                (when (> (get-field f_firedIndex this) _FIRE)
                    (begin
                    (set-field! f_firedIndex this 0)
                    (set-field! f_firingX this (Integer.jstatic_MIN_VALUE))))
                (set-field! f_firedIndex this (JR.i32 (+ (get-field f_firedIndex this) 1))))))))))
    (define/public (jm_nextDirection_0)
    (let ()
      (let/ec jreturn (void))))))
(define (HorizontalScreenPatrolAI.jclassValue) HorizontalScreenPatrolAI%)

(define HorizontalScreenPatrolAI.jcell_SOUND 'jnone)
(define (HorizontalScreenPatrolAI.jstatic_SOUND)
  (when (eq? HorizontalScreenPatrolAI.jcell_SOUND 'jnone) (set! HorizontalScreenPatrolAI.jcell_SOUND (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 433)))
  HorizontalScreenPatrolAI.jcell_SOUND)
(define (HorizontalScreenPatrolAI.jsetstatic_SOUND value) (set! HorizontalScreenPatrolAI.jcell_SOUND value))

(define (HorizontalScreenPatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)
  (define this (new HorizontalScreenPatrolAI% [jclass "HorizontalScreenPatrolAI"]))
    (set-field! f_keyDirection this (Canvas.jstatic_LEFT))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_firingX this (send (get-field f_displayInfoSingleton this) jm_getLastHalfWidth_0))
    (set-field! f_firedIndex this 0)
    (set-field! f_MAX_FIRE this 28)
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 240))
    (set-field! f_secondaryPlayerQueue this (SecondaryPlayerQueueFactory.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_sound this (send _hashtable jm_get_1 (HorizontalScreenPatrolAI.jstatic_SOUND)))
        (when (JR.null? (get-field f_sound this))
            (begin
            (raise (JR.newException "Exception" "No Sound Provided!!"))))))
  this)



