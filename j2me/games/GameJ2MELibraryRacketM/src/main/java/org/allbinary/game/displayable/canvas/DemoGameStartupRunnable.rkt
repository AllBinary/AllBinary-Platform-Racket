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
  "../../../../../org/allbinary/thread/ABRunnable.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define DemoGameStartupRunnable%
  (class ABRunnable%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_demoCanvas JR.null])
    (define/override (jm_run_0)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send this jm_setRunning_1 #f)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_RUN _commonStrings) _e))])
            (send this jm_setRunning_1 #t)
            (send (get-field f_demoCanvas this) jm_stopGameDemo_0)
            (send (get-field f_demoCanvas this) jm_create_0)
            (send (get-field f_demoCanvas this) jm_start_0)
            (send this jm_setRunning_1 #f)))))
    (define/override (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (DemoGameStartupRunnable.jstatic_TYPE)))))))
(define (DemoGameStartupRunnable.jclassValue) DemoGameStartupRunnable%)

(define DemoGameStartupRunnable.jcell_TYPE 'jnone)
(define (DemoGameStartupRunnable.jstatic_TYPE)
  (when (eq? DemoGameStartupRunnable.jcell_TYPE 'jnone) (set! DemoGameStartupRunnable.jcell_TYPE 4))
  DemoGameStartupRunnable.jcell_TYPE)
(define (DemoGameStartupRunnable.jsetstatic_TYPE value) (set! DemoGameStartupRunnable.jcell_TYPE value))

(define (DemoGameStartupRunnable.jnew_1 _demoCanvas)
  (define this (new DemoGameStartupRunnable% [jclass "DemoGameStartupRunnable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_demoCanvas this _demoCanvas)))
  this)



