#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./DemoGameBehavior.rkt")
(lazy-require ["../../../../../org/allbinary/business/advertisement/GameAdStateFactory.rkt" (GameAdStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/CurrentDisplayableFactory.rkt" (CurrentDisplayableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BaseGameBehavior%
  (class DemoGameBehavior%
    (super-new)
    (define/override (jm_init_0)
    (let ([_gameAdState JR.null])
      (let/ec jreturn
        (set! _gameAdState (send (GameAdStateFactory.jm_getInstance_0) jm_getCurrentInstance_0))
        (send _gameAdState jm_playingAdState_0))))
    (define/override (jm_pause_1 _allBinaryGameCanvas)
    (let ([_features JR.null][_currentDisplayableFactory JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (when (send _features jm_isDefault_1 (get-field f_OPENGL_AS_GAME_THREAD (OpenGLFeatureFactory.jm_getInstance_0)))
            (begin
            (set! _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
            (send _currentDisplayableFactory jm_setRunnable_1 (get-field f_gamePauseRunnable _allBinaryGameCanvas)))))))
    (define/override (jm_unPause_1 _allBinaryGameCanvas)
    (let ([_currentDisplayableFactory JR.null])
      (let/ec jreturn
        (when (send (Features.jm_getInstance_0) jm_isDefault_1 (get-field f_OPENGL_AS_GAME_THREAD (OpenGLFeatureFactory.jm_getInstance_0)))
            (begin
            (set! _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
            (send _currentDisplayableFactory jm_setRunnable_1 (get-field f_gameRunnable _allBinaryGameCanvas))
            (send _currentDisplayableFactory jm_setDisplayable_1 _allBinaryGameCanvas))))))
    (define/override (jm_updateTouch_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_updateTouch2_0))))
    (define/override (jm_updateScreenButtonPaintable_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_updateScreenButtonPaintable2_0))))
    (define/override (jm_setGameState_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_updateGameState_0))))
    (define/override (jm_removeAllGameKeyInputListeners_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_removeAllGameKeyInputListeners2_0))))
    (define/override (jm_updateEndGameProcessor_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_updateEndGameProcessor2_0))))
    (define/override (jm_buildGame_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_buildGame2_0))))
    (define/override (jm_run_1 _allBinaryGameCanvas)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_run2_0))))
    (define/override (jm_setHighScore_6 _abeClientInformation _allBinaryGameCanvas _name _score _autoSubmit _isLast)
    (let ()
      (let/ec jreturn
        (send _allBinaryGameCanvas jm_setHighScore2_5 _abeClientInformation _name _score _autoSubmit _isLast))))))
(define (BaseGameBehavior.jclassValue) BaseGameBehavior%)

(define BaseGameBehavior.jcell_instanceC 'jnone)
(define (BaseGameBehavior.jstatic_instanceC)
  (when (eq? BaseGameBehavior.jcell_instanceC 'jnone) (set! BaseGameBehavior.jcell_instanceC (BaseGameBehavior.jnew_0)))
  BaseGameBehavior.jcell_instanceC)
(define (BaseGameBehavior.jsetstatic_instanceC value) (set! BaseGameBehavior.jcell_instanceC value))

(define (BaseGameBehavior.jnew_0)
  (define this (new BaseGameBehavior% [jclass "BaseGameBehavior"]))
  this)

(define (BaseGameBehavior.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BaseGameBehavior.jstatic_instanceC)))))



