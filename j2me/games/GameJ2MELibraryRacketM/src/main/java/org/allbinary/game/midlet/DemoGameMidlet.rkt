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
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./GameMidlet.rkt")
(lazy-require ["../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/thread/PrimaryThreadPool.rkt" (PrimaryThreadPool.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.rkt" (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)])
(lazy-require ["./DemoRunnable.rkt" (DemoRunnable.jnew_1)])
(lazy-require ["./CreateGameRunnable.rkt" (CreateGameRunnable.jnew_2)])
(provide (all-defined-out))

(define DemoGameMidlet%
  (class GameMidlet%
    (super-new)
    (define/public (jm_isContinue_0)
    (let ([_hashtable JR.null])
      (let/ec jreturn
        (set! _hashtable (send this jm_getStartStateHashtable_0))
        (if (and (not (JR.null? _hashtable)) (> (send _hashtable jm_size_0) 0))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_getHighestLevel_0)
    (let ()
      (let/ec jreturn
        (jreturn 1))))
    (define/public (jm_createDemoGameCanvasRunnableInterface_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (jreturn (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))))
    (define/public (jm_createGameCanvasRunnable_1 _allBinaryGameLayerManager)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_createGameCanvasRunnableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_createGameCanvasRunnable_1 (send this jm_createGameLayerManager_0))))))
    (define/public (jm_demoSetup_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_postDemoSetup_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_setDemo_0)
    (let ([_progressCanvas JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (send _progressCanvas jm_start_0)
        (send (PrimaryThreadPool.jm_getInstance_0) jm_runTask_1 (DemoRunnable.jnew_1 this)))))
    (define/override (jm_createGame_0)
    (let ([_CREATE_GAME JR.null][_progressCanvas JR.null][_hashtable JR.null])
      (let/ec jreturn
        (set! _CREATE_GAME "createGame")
        (JR.className (get-field f_logUtil this))
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (send _progressCanvas jm_start_0)
        (set! _hashtable (send this jm_getStartStateHashtable_0))
        (send this jm_setStartStateHashtable_1 (get-field f_NULL_TABLE (StdUtil.jm_getInstance_0)))
        (send (PrimaryThreadPool.jm_getInstance_0) jm_runTask_1 (CreateGameRunnable.jnew_2 this _hashtable))
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_isReady_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))
(define (DemoGameMidlet.jclassValue) DemoGameMidlet%)

(define (DemoGameMidlet.jnew_1 _clientInformationFactory)
  (define this (new DemoGameMidlet% [jclass "DemoGameMidlet"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



