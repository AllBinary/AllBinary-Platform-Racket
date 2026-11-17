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
;; package org.allbinary.time

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./StupidTimer.rkt" (StupidTimer.jnew_0)])
(provide (all-defined-out))

(define RendererInitializedStupidTimerFactory%
  (class JObject%
    (super-new)))

(define RendererInitializedStupidTimerFactory.jcell_instance 'jnone)
(define (RendererInitializedStupidTimerFactory.jstatic_instance)
  (when (eq? RendererInitializedStupidTimerFactory.jcell_instance 'jnone) (set! RendererInitializedStupidTimerFactory.jcell_instance (StupidTimer.jnew_0)))
  RendererInitializedStupidTimerFactory.jcell_instance)

(define (RendererInitializedStupidTimerFactory.jnew_0)
  (define this (new RendererInitializedStupidTimerFactory% [jclass "RendererInitializedStupidTimerFactory"]))
  this)

(define (RendererInitializedStupidTimerFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RendererInitializedStupidTimerFactory.jstatic_instance)))))



