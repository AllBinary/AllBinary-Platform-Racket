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
  "./GameRunnable.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define DemoGameRunnable%
  (class GameRunnable%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_demoCanvas JR.null])
    (field [f_gameTickTimeDelayHelper JR.null])
    (define/override (jm_run_0)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_RUN _commonStrings) _e))])
            (JR.className (send (get-field f_demoCanvas this) jm_getLoopTimeHelperP_0))
            (send (get-field f_demoCanvas this) jm_processGame_0)))))
    (define/override (jm_processLoopSleep_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_demoCanvas this) jm_processLoopSleep_0))))))
(define (DemoGameRunnable.jclassValue) DemoGameRunnable%)

(define (DemoGameRunnable.jnew_1 _demoCanvas)
  (define this (new DemoGameRunnable% [jclass "DemoGameRunnable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_demoCanvas this _demoCanvas)))
  this)



