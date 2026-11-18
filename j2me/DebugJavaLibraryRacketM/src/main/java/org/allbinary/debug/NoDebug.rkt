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
;; package org.allbinary.debug

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./DebugInterface.rkt")
(provide (all-defined-out))

(define NoDebug%
  (class JObject%
    (super-new)
    (define/public (jm_start_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_stop_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getMaxTime_0)
    (let ()
      (let/ec jreturn
        (jreturn 10000))))
    (define/public (jm_getStartTime_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_isRunning_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (NoDebug.jclassValue) NoDebug%)

(define NoDebug.jcell_SINGLETON 'jnone)
(define (NoDebug.jstatic_SINGLETON)
  (when (eq? NoDebug.jcell_SINGLETON 'jnone) (set! NoDebug.jcell_SINGLETON (NoDebug.jnew_0)))
  NoDebug.jcell_SINGLETON)
(define (NoDebug.jsetstatic_SINGLETON value) (set! NoDebug.jcell_SINGLETON value))

(define (NoDebug.jnew_0)
  (define this (new NoDebug% [jclass "NoDebug"]))
  this)

(define (NoDebug.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoDebug.jstatic_SINGLETON)))))



