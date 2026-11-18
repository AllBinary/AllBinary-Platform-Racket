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
  "../../../../java/lang/Runnable.rkt")
(lazy-require ["../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory.rkt" (MyCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./DemoGameMidletEvent.rkt" (DemoGameMidletEvent.jnew_2)])
(lazy-require ["./DemoGameMidletStateFactory.rkt" (DemoGameMidletStateFactory.jm_getInstance_0)])
(lazy-require ["./DemoGameMidletEventHandler.rkt" (DemoGameMidletEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define CreateGameRunnable%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_demoGameMidlet JR.null])
    (field [f_hashtable JR.null])
    (field [f_startGameMidletEvent JR.null])
    (define/public (jm_run_0)
    (let ([_progressCanvas JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)) _e))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START_RUNNABLE (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)))
            (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (send (get-field f_demoGameMidlet this) jm_commandAction_2 (get-field f_SET_DISPLAYABLE (MyCommandsFactory.jm_getInstance_0)) _progressCanvas)
            (send (get-field f_demoGameMidlet this) jm_stopGameCanvasRunnableInterface_0)
            (send (get-field f_demoGameMidlet this) jm_setGameCanvasRunnableInterface_1 (send (get-field f_demoGameMidlet this) jm_createGameCanvasRunnableInterface_0))
            (JR.className (send (get-field f_demoGameMidlet this) jm_getGameCanvasRunnableInterface_0))
            (send (get-field f_demoGameMidlet this) jm_startGameCanvasRunnableInterface_0)
            (send (DemoGameMidletEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_startGameMidletEvent this))
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_END_RUNNABLE (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)))))))))
(define (CreateGameRunnable.jclassValue) CreateGameRunnable%)

(define (CreateGameRunnable.jnew_2 _demoGameMidlet _hashtable)
  (define this (new CreateGameRunnable% [jclass "CreateGameRunnable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_demoGameMidlet this _demoGameMidlet)
        (set-field! f_hashtable this _hashtable)
        (set-field! f_startGameMidletEvent this (DemoGameMidletEvent.jnew_2 this (get-field f_START_GAME (DemoGameMidletStateFactory.jm_getInstance_0))))))
  this)



