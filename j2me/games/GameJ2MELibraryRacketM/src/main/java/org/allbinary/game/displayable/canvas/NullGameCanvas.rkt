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
  "./AllBinaryGameCanvas.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullCommandListener.rkt" (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)])
(lazy-require ["../../../../../org/allbinary/game/init/BasicBuildGameInitializerFactory.rkt" (BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY)])
(lazy-require ["../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager.rkt" (AllBinaryGameLayerManager.jm_getNullInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/score/NoHighScoresFactory.rkt" (NoHighScoresFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define NullGameCanvas%
  (class AllBinaryGameCanvas%
    (super-new)
    (field [f_runningNull #f])
    (define/override (jm_isGameOver_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/override (jm_setRunning_1 _running)
    (let ()
      (let/ec jreturn
        (set-field! f_runningNull this _running))))
    (define/override (jm_isRunning_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_runningNull this)))))
    (define/override (jm_pause_0)
    (let ()
      (let/ec jreturn
        (send this jm_setPaused_1 #t))))
    (define/override (jm_unPause_0)
    (let ()
      (let/ec jreturn
        (send this jm_setPaused_1 #f))))
    (define/override (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/override (jm_buildGameInit_1 _isProgress)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_draw_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_run_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (JR.className (get-field f_logUtil this))
            (JR.className (get-field f_logUtil this))))))
    (define/override (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullGameCanvas.jstatic_TYPE)))))))
(define (NullGameCanvas.jclassValue) NullGameCanvas%)

(define NullGameCanvas.jcell_instance 'jnone)
(define (NullGameCanvas.jstatic_instance)
  (when (eq? NullGameCanvas.jcell_instance 'jnone) (set! NullGameCanvas.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  NullGameCanvas.jcell_instance)
(define (NullGameCanvas.jsetstatic_instance value) (set! NullGameCanvas.jcell_instance value))

(define NullGameCanvas.jcell_NO_GAME 'jnone)
(define (NullGameCanvas.jstatic_NO_GAME)
  (when (eq? NullGameCanvas.jcell_NO_GAME 'jnone) (set! NullGameCanvas.jcell_NO_GAME "No Background Game"))
  NullGameCanvas.jcell_NO_GAME)
(define (NullGameCanvas.jsetstatic_NO_GAME value) (set! NullGameCanvas.jcell_NO_GAME value))

(define NullGameCanvas.jcell_TYPE 'jnone)
(define (NullGameCanvas.jstatic_TYPE)
  (when (eq? NullGameCanvas.jcell_TYPE 'jnone) (set! NullGameCanvas.jcell_TYPE 1))
  NullGameCanvas.jcell_TYPE)
(define (NullGameCanvas.jsetstatic_TYPE value) (set! NullGameCanvas.jcell_TYPE value))

(define (NullGameCanvas.jnew_1 _gameLayerManager)
  (define this (new NullGameCanvas% [jclass "NullGameCanvas"]))
    (set-field! f_runningNull this #t)
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setWait_1 1200)))
  this)

(define (NullGameCanvas.jm_createNull_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (LogUtil.jm_getInstance_0) jm_put_4 (get-field f_EXCEPTION (CommonStrings.jm_getInstance_0)) "NullGameCanvas" (get-field f_GET_INSTANCE (CommonStrings.jm_getInstance_0)) _e)
            (raise (JR.newException "RuntimeException")))])
            (jreturn (NullGameCanvas.jnew_1 (AllBinaryGameLayerManager.jm_getNullInstance_0)))))))

(define (NullGameCanvas.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (NullGameCanvas.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! NullGameCanvas.jcell_instance (NullGameCanvas.jm_createNull_0))))
        (jreturn (NullGameCanvas.jstatic_instance)))))

(define (NullGameCanvas.jm_createCanvas_1 _gameLayerManager)
    (let ([_nullGameCanvas JR.null])
      (let/ec jreturn
        (set! _nullGameCanvas (NullGameCanvas.jnew_1 _gameLayerManager))
        (send _nullGameCanvas jm_setInitialized_1 #t)
        (send _nullGameCanvas jm_setTitle_1 (NullGameCanvas.jstatic_NO_GAME))
        (jreturn _nullGameCanvas))))



