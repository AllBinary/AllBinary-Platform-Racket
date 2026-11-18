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
;; package org.allbinary.game.score.displayable

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/displayable/canvas/GameCommandCanvas.rkt"
  "../../../../../org/allbinary/game/score/HighScoresResultsListener.rkt")
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/paint/ColorFillPaintableFactory.rkt" (ColorFillPaintableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/score/HighScoreCommandsFactory.rkt" (HighScoreCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/score/HighScoresHelperBase.rkt" (HighScoresHelperBase.jnew_0)])
(lazy-require ["../../../../../org/allbinary/game/score/NoHighScoresFactory.rkt" (NoHighScoresFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory.rkt" (NullHighScoresSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/SimpleTextPaintable.rkt" (SimpleTextPaintable.jnew_2)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/thread/SecondaryThreadPool.rkt" (SecondaryThreadPool.jm_getInstance_0)])
(lazy-require ["./HighScoreRunnable.rkt" (HighScoreRunnable.jnew_1)])
(provide (all-defined-out))

(define HighScoresCanvas%
  (class GameCommandCanvas%
    (super-new)
    (inherit/super jm_initMenu_0)
    (field [f_paintable JR.null])
    (field [f_highScoreCommandsFactory JR.null])
    (field [f_waitPaintable JR.null])
    (field [f_highScoresPaintable JR.null])
    (field [f_highScoresFactoryInterface JR.null])
    (field [f_colorFillPaintable JR.null])
    (field [f_highScoresHelper JR.null])
    (field [f_gameInfo JR.null])
    (field [f_highScoresCanvasInputProcessor JR.null])
    (field [f_currentCommand JR.null])
    (field [f_hasPainted #f])
    (define/override (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (send this jm_addCommand_1 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS (GameCommandsFactory.jm_getInstance_0)))
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/override (jm_open_0)
    (let ()
      (let/ec jreturn
        (super jm_open_0)
        (send (get-field f_highScoresCanvasInputProcessor this) jm_open_0))))
    (define/override (jm_close_0)
    (let ()
      (let/ec jreturn
        (super jm_close_0)
        (send (get-field f_highScoresCanvasInputProcessor this) jm_close_0))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_colorFillPaintable this) jm_paint_1 _graphics)
        (send (get-field f_paintable this) jm_paint_1 _graphics)
        (when (not (eq? (get-field f_waitPaintable this) (get-field f_paintable this)))
            (begin
            (send (get-field f_highScoresCanvasInputProcessor this) jm_paint_1 _graphics)))
        (super jm_paint_1 _graphics)
        (set-field! f_hasPainted this #t))))
    (define/public (jm_executeUpdate_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (send (get-field f_highScoresFactoryInterface this) jm_fetchHighScores_2 (send this jm_getGameInfo_0) this)))))
    (define/public (jm_getHighScoresPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_highScoresPaintable this)))))
    (define/public (jm_setHighScoresArray_1 _highScoresArray)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (if (not (JR.null? _highScoresArray))
                (begin
                (JR.className (get-field f_logUtil this)))
                (begin
                (JR.className (get-field f_logUtil this))))
            (send (get-field f_highScoresHelper this) jm_setHighScoresArray_1 _highScoresArray)
            (send this jm_updateCommand_1 (get-field f_currentCommand this))
            (send this jm_setPaintable_1 (send this jm_getHighScoresPaintable_0))))))
    (define/public (jm_updateCommand_1 _command)
    (let ([_gameCommandsFactory JR.null][_index JR.null][_nextIndex JR.null][_highScoresArray JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (when (send (get-field f_highScoreCommandsFactory this) jm_isHighScoreCommand_1 _command)
            (begin
            (set! _index (send (get-field f_highScoreCommandsFactory this) jm_getIndex_1 _command))
            (set! _nextIndex (JR.i32 (+ _index 1)))
            (set! _highScoresArray (send (get-field f_highScoresHelper this) jm_getHighScoresArray_0))
            (when (>= _nextIndex (vector-length _highScoresArray))
                (begin
                (set! _nextIndex 0)))
            (if (> (vector-length _highScoresArray) 0)
                (begin
                (send (send this jm_getHighScoresPaintable_0) jm_setHighScores_1 (vector-ref _highScoresArray _index)))
                (begin
                (send (send this jm_getHighScoresPaintable_0) jm_setHighScores_1 (NullHighScoresSingletonFactory.jm_getInstance_0))))
            (when (not (= _index _nextIndex))
                (begin
                (send this jm_removeAllCommands_0)
                (send this jm_addCommand_1 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS _gameCommandsFactory))
                (send this jm_addCommand_1 (vector-ref (get-field f_HIGH_SCORE_COMMANDS (get-field f_highScoreCommandsFactory this)) _nextIndex))))))
        (set-field! f_currentCommand this _command)
        (send this jm_close_0)
        (super jm_initMenu_0)
        (send this jm_open_0)
        (JR.className (get-field f_repaintBehavior this)))))
    (define/public (jm_getGameInfo_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameInfo this)))))
    (define/public (jm_setPaintable_1 _paintable)
    (let ()
      (let/ec jreturn
        (set-field! f_paintable this _paintable)
        (JR.className (get-field f_repaintBehavior this)))))))
(define (HighScoresCanvas.jclassValue) HighScoresCanvas%)

(define HighScoresCanvas.jcell_NAME 'jnone)
(define (HighScoresCanvas.jstatic_NAME)
  (when (eq? HighScoresCanvas.jcell_NAME 'jnone) (set! HighScoresCanvas.jcell_NAME "HighScoresCanvas"))
  HighScoresCanvas.jcell_NAME)
(define (HighScoresCanvas.jsetstatic_NAME value) (set! HighScoresCanvas.jcell_NAME value))

(define (HighScoresCanvas.jnew_6 _commandListener _allBinaryGameLayerManager _gameInfo _paintable _highScoresFactoryInterface _highScoresCanvasInputProcessorFactoryInterface)
  (define this (new HighScoresCanvas% [jclass "HighScoresCanvas"]))
    (set-field! f_paintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_highScoreCommandsFactory this (HighScoreCommandsFactory.jm_getInstance_0))
    (set-field! f_waitPaintable this (SimpleTextPaintable.jnew_2 (get-field f_PLEASE_WAIT_FOR_SERVER (get-field f_commonStrings this)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))
    
    
    
    (set-field! f_highScoresHelper this (HighScoresHelperBase.jnew_0))
    
    
    (set-field! f_currentCommand this (vector-ref (get-field f_HIGH_SCORE_COMMANDS (get-field f_highScoreCommandsFactory this)) 0))
    (set-field! f_hasPainted this #f)
    (let ()
      (let/ec jreturn
        (void)
        (JR.className (get-field f_logUtil this))
        (set-field! f_highScoresPaintable this _paintable)
        (set-field! f_highScoresFactoryInterface this _highScoresFactoryInterface)
        (set-field! f_highScoresCanvasInputProcessor this (send _highScoresCanvasInputProcessorFactoryInterface jm_getInstance_1 this))
        (set-field! f_gameInfo this _gameInfo)
        (send (get-field f_waitPaintable this) jm_setBasicColorP_1 (send _allBinaryGameLayerManager jm_getForegroundBasicColor_0))
        (send (send this jm_getHighScoresPaintable_0) jm_setBasicColorP_1 (send _allBinaryGameLayerManager jm_getForegroundBasicColor_0))
        (set-field! f_colorFillPaintable this (send (ColorFillPaintableFactory.jm_getInstance_0) jm_getInstance_2 (send _allBinaryGameLayerManager jm_getBackgroundBasicColor_0) #f))
        (if (= (vector-length (send (get-field f_highScoresHelper this) jm_getHighScoresArray_0)) (vector-length (get-field f_NO_HIGH_SCORES (NoHighScoresFactory.jm_getInstance_0))))
            (begin
            (send this jm_setPaintable_1 (get-field f_waitPaintable this)))
            (begin
            (JR.className (get-field f_logUtil this))
            (send this jm_updateCommand_1 (get-field f_currentCommand this))
            (send this jm_setPaintable_1 (send this jm_getHighScoresPaintable_0))))
        (send (SecondaryThreadPool.jm_getInstance_0) jm_runTask_1 (HighScoreRunnable.jnew_1 this))))
  this)



