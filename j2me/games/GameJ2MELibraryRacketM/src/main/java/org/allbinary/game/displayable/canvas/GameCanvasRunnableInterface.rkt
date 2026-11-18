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
  "../../../../../javax/microedition/lcdui/ItemStateListener.rkt"
  "../../../../../org/allbinary/game/state/GameStateCompositeInterface.rkt"
  "../../../../../org/allbinary/graphics/paint/PaintableInterface.rkt"
  "../../../../../org/allbinary/thread/RunnableInterface.rkt")
(provide (all-defined-out))

(define GameCanvasRunnableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getTitle_0)
      (raise (JR.newException "AbstractMethodError" "getTitle")))
    (define/public (jm_isInitialized_0)
      (raise (JR.newException "AbstractMethodError" "isInitialized")))
    (define/public (jm_isPaused_0)
      (raise (JR.newException "AbstractMethodError" "isPaused")))
    (define/public (jm_unPause_0)
      (raise (JR.newException "AbstractMethodError" "unPause")))
    (define/public (jm_pause_0)
      (raise (JR.newException "AbstractMethodError" "pause")))
    (define/public (jm_isHighScoreSubmitted_0)
      (raise (JR.newException "AbstractMethodError" "isHighScoreSubmitted")))
    (define/public (jm_setHighScoreSubmitted_1 _highScoreSubmitted)
      (raise (JR.newException "AbstractMethodError" "setHighScoreSubmitted")))
    (define/public (jm_processGameOver_0)
      (raise (JR.newException "AbstractMethodError" "processGameOver")))
    (define/public (jm_isGameOver_0)
      (raise (JR.newException "AbstractMethodError" "isGameOver")))
    (define/public (jm_initCommands_1 _cmdListener)
      (raise (JR.newException "AbstractMethodError" "initCommands")))
    (define/public (jm_getCurrentStateHashtable_0)
      (raise (JR.newException "AbstractMethodError" "getCurrentStateHashtable")))
    (define/public (jm_getLoadStateHashtable_0)
      (raise (JR.newException "AbstractMethodError" "getLoadStateHashtable")))
    (define/public (jm_setLoadStateHashtable_1 _hashtable)
      (raise (JR.newException "AbstractMethodError" "setLoadStateHashtable")))
    (define/public (jm_getType_0)
      (raise (JR.newException "AbstractMethodError" "getType")))))
(define (GameCanvasRunnableInterface.jclassValue) GameCanvasRunnableInterface%)

(define (GameCanvasRunnableInterface.jnew_0)
  (define this (new GameCanvasRunnableInterface% [jclass "GameCanvasRunnableInterface"]))
  this)



