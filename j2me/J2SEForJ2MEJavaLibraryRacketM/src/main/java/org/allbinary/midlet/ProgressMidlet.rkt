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
;; package org.allbinary.midlet

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Runnable.rkt"
  "./AllBinaryMidlet.rkt")
(lazy-require ["../../../org/allbinary/thread/PrimaryThreadPool.rkt" (PrimaryThreadPool.jm_getInstance_0)])
(lazy-require ["./MidletExitProcessorFactory.rkt" (MidletExitProcessorFactory.jm_getInstance_0)])
(lazy-require ["./ExitRunnable.rkt" (ExitRunnable.jnew_3)])
(provide (all-defined-out))

;J2SEForJ2ME
(define ProgressMidlet%
  (class AllBinaryMidlet%
    (super-new)
    (field [f_abeClientInformation JR.null])
    (define/public (jm_preInit_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_exitProgress_1 _isProgress)
    (let ([_processor JR.null][_primaryThreadPool JR.null][_runnable JR.null])
      (let/ec jreturn
        (set! _processor (send (MidletExitProcessorFactory.jm_getInstance_0) jm_getExitInstance_1 this))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this))
            (with-handlers ([(lambda (jerror) #t) (lambda (_e2)
                (JR.className (get-field f_logUtil this)))])
                (send _processor jm_process_0)))])
            (set! _primaryThreadPool (PrimaryThreadPool.jm_getInstance_0))
            (set! _runnable (ExitRunnable.jnew_3 this _processor _isProgress))
            (send _primaryThreadPool jm_runTask_1 _runnable)))))))
(define (ProgressMidlet.jclassValue) ProgressMidlet%)

(define (ProgressMidlet.jnew_1 _clientInformationFactory)
  (define this (new ProgressMidlet% [jclass "ProgressMidlet"]))
    
    (let ()
      (let/ec jreturn
        (send this jm_preInit_0)
        (set-field! f_abeClientInformation this (send _clientInformationFactory jm_getInstance_0))))
  this)



