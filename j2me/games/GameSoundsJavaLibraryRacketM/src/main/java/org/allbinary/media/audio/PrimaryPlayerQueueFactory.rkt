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
;; package org.allbinary.media.audio

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./PlayerQueue.rkt" (PlayerQueue.jnew_1)])
(provide (all-defined-out))

(define PrimaryPlayerQueueFactory%
  (class JObject%
    (super-new)))
(define (PrimaryPlayerQueueFactory.jclassValue) PrimaryPlayerQueueFactory%)

(define PrimaryPlayerQueueFactory.jcell_SINGLETON 'jnone)
(define (PrimaryPlayerQueueFactory.jstatic_SINGLETON)
  (when (eq? PrimaryPlayerQueueFactory.jcell_SINGLETON 'jnone) (set! PrimaryPlayerQueueFactory.jcell_SINGLETON (PlayerQueue.jnew_1 4)))
  PrimaryPlayerQueueFactory.jcell_SINGLETON)
(define (PrimaryPlayerQueueFactory.jsetstatic_SINGLETON value) (set! PrimaryPlayerQueueFactory.jcell_SINGLETON value))

(define (PrimaryPlayerQueueFactory.jnew_0)
  (define this (new PrimaryPlayerQueueFactory% [jclass "PrimaryPlayerQueueFactory"]))
  this)

(define (PrimaryPlayerQueueFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimaryPlayerQueueFactory.jstatic_SINGLETON)))))



