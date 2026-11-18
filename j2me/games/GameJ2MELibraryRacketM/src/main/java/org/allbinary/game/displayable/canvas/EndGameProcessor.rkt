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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/canvas/Processor.rkt")
(lazy-require ["../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory.rkt" (NullHighScoresSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/state/GameStateFactory.rkt" (GameStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(provide (all-defined-out))

(define EndGameProcessor%
  (class Processor%
    (super-new)
    (field [f_gameStateFactory JR.null])
    (field [f_gameCanvas JR.null])
    (field [f_WAIT 0])
    (define/override (jm_process_0)
    (let ([_highScoresBase JR.null][_highScores JR.null])
      (let/ec jreturn
        (when (send (get-field f_gameCanvas this) jm_isHighScoreSubmitted_0)
            (begin
            (when (JR.className (send (get-field f_gameCanvas this) jm_getGameStateTimeHelper_0))
                (begin
                (if (eq? (send (get-field f_gameCanvas this) jm_getGameState_0) (get-field f_SHOW_END_RESULT_GAME_STATE (get-field f_gameStateFactory this)))
                    (begin
                    (set! _highScoresBase (get-field f_highScoresHelper (get-field f_gameCanvas this)))
                    (set! _highScores (send _highScoresBase jm_getSelectedHighScores_0))
                    (when (not (eq? _highScores (NullHighScoresSingletonFactory.jm_getInstance_0)))
                        (begin
                        (send _highScoresBase jm_selectHighScores_0)
                        (JR.className (send (get-field f_gameCanvas this) jm_getRealHighScoresPaintable_0))
                        (send (get-field f_gameCanvas this) jm_setGameState_1 (get-field f_SHOW_HIGH_SCORE_GAME_STATE (get-field f_gameStateFactory this)))
                        (send (get-field f_gameCanvas this) jm_setHighScoresPaintable_1 (send (get-field f_gameCanvas this) jm_getRealHighScoresPaintable_0)))))
                    (when (eq? (send (get-field f_gameCanvas this) jm_getGameState_0) (get-field f_SHOW_HIGH_SCORE_GAME_STATE (get-field f_gameStateFactory this)))
                    (begin
                    (send (get-field f_gameCanvas this) jm_setGameState_1 (get-field f_SHOW_END_RESULT_GAME_STATE (get-field f_gameStateFactory this)))
                    (send (get-field f_gameCanvas this) jm_setHighScoresPaintable_1 (NullPaintable.jm_getInstance_0))))))))))))))
(define (EndGameProcessor.jclassValue) EndGameProcessor%)

(define (EndGameProcessor.jnew_1 _gameCanvas)
  (define this (new EndGameProcessor% [jclass "EndGameProcessor"]))
    (set-field! f_gameStateFactory this (GameStateFactory.jm_getInstance_0))
    
    (set-field! f_WAIT this 5000)
    (let ()
      (let/ec jreturn
        (set-field! f_gameCanvas this _gameCanvas)))
  this)



