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
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./DemoGameMidletEvent.rkt" (DemoGameMidletEvent.jnew_2)])
(lazy-require ["./DemoGameMidletStateFactory.rkt" (DemoGameMidletStateFactory.jm_getInstance_0)])
(lazy-require ["./DemoGameMidletEventHandler.rkt" (DemoGameMidletEventHandler.jm_getInstance_0)])
(provide (all-defined-out))

(define DemoRunnable%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_demoGameMidlet JR.null])
    (field [f_startDemoGameMidletEvent JR.null])
    (define/public (jm_run_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)) _e))])
            (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (CommonLabels.jm_getInstance_0))) jm_append_1 "GameCanvasRunnableInterface") jm_toString_0) this (get-field f_RUN (get-field f_commonStrings this)))
            (send (get-field f_demoGameMidlet this) jm_commandAction_2 (get-field f_SET_DISPLAYABLE (MyCommandsFactory.jm_getInstance_0)) (ProgressCanvasFactory.jm_getInstance_0))
            (send (get-field f_demoGameMidlet this) jm_setGameCanvasRunnableInterface_1 (send (get-field f_demoGameMidlet this) jm_createDemoGameCanvasRunnableInterface_0))
            (send (get-field f_demoGameMidlet this) jm_demoSetup_0)
            (send (DemoGameMidletEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_startDemoGameMidletEvent this))
            (send (get-field f_demoGameMidlet this) jm_startGameCanvasRunnableInterface_0)
            (send (get-field f_demoGameMidlet this) jm_postDemoSetup_0)
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_END_RUNNABLE (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)))))))))
(define (DemoRunnable.jclassValue) DemoRunnable%)

(define (DemoRunnable.jnew_1 _demoGameMidlet)
  (define this (new DemoRunnable% [jclass "DemoRunnable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_demoGameMidlet this _demoGameMidlet)
        (set-field! f_startDemoGameMidletEvent this (DemoGameMidletEvent.jnew_2 (get-field f_demoGameMidlet this) (get-field f_START_DEMO (DemoGameMidletStateFactory.jm_getInstance_0))))))
  this)



