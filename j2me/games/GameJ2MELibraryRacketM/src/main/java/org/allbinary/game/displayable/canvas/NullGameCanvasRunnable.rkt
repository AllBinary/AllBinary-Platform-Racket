#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
  "../../../../../java/lang/Thread.rkt"
  "./GameCanvasRunnableInterface.rkt")
(lazy-require ["../../../../../org/allbinary/game/state/GameStateFactory.rkt" (GameStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define NullGameCanvasRunnable%
  (class JObject%
    (super-new)
    (field [f_gameStateFactory JR.null])
    (define/public (jm_getTitle_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_isInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_isPaused_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_unPause_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_pause_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isHighScoreSubmitted_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_setHighScoreSubmitted_1 _highScoreSubmitted)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processGameOver_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isGameOver_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getCurrentStateHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_TABLE (StdUtil.jm_getInstance_0))))))
    (define/public (jm_getLoadStateHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_TABLE (StdUtil.jm_getInstance_0))))))
    (define/public (jm_setLoadStateHashtable_1 _hashtable)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_setGameState_1 _gameState)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getGameState_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NO_GAME_STATE (get-field f_gameStateFactory this))))))
    (define/public (jm_itemStateChanged_1 _item)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isRunning_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_setRunning_1 _isRunning)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setThread_1 _thread)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_run_0)
    (let ()
      (let/ec jreturn (void))))))
(define (NullGameCanvasRunnable.jclassValue) NullGameCanvasRunnable%)

(define NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE 'jnone)
(define (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)
  (when (eq? NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE 'jnone) (set! NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE (NullGameCanvasRunnable.jnew_0)))
  NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE)
(define (NullGameCanvasRunnable.jsetstatic_NULL_GAME_CANVAS_RUNNABLE value) (set! NullGameCanvasRunnable.jcell_NULL_GAME_CANVAS_RUNNABLE value))

(define (NullGameCanvasRunnable.jnew_0)
  (define this (new NullGameCanvasRunnable% [jclass "NullGameCanvasRunnable"]))
    (set-field! f_gameStateFactory this (GameStateFactory.jm_getInstance_0))
  this)



