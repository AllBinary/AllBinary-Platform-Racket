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
  "../../../../../java/lang/Thread.rkt"
  "../../../../../java/lang/Runnable.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define GameRunnable%
  (class JObject%
    (super-new)
    (field [f_WAIT 0])
    (field [f_FAST 0])
    (field [f_waitInMillis 0])
    (define/public (jm_run_0)
    (let ()
      (let/ec jreturn
        (send (DisplayInfoSingleton.jm_getInstance_0) jm_process_0))))
    (define/public (jm_processLoopSleep_0)
    (let ()
      (let/ec jreturn
        (Thread.jm_sleep_1 (get-field f_waitInMillis this)))))))
(define (GameRunnable.jclassValue) GameRunnable%)

(define (GameRunnable.jnew_0)
  (define this (new GameRunnable% [jclass "GameRunnable"]))
    (set-field! f_WAIT this 240)
    (set-field! f_FAST this 60)
    (set-field! f_waitInMillis this (get-field f_WAIT this))
    (let ()
      (let/ec jreturn (void)))
  this)



