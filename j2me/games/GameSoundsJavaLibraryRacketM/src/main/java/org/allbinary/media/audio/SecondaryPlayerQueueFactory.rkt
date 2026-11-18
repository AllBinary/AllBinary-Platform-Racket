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

(define SecondaryPlayerQueueFactory%
  (class JObject%
    (super-new)))
(define (SecondaryPlayerQueueFactory.jclassValue) SecondaryPlayerQueueFactory%)

(define SecondaryPlayerQueueFactory.jcell_SINGLETON 'jnone)
(define (SecondaryPlayerQueueFactory.jstatic_SINGLETON)
  (when (eq? SecondaryPlayerQueueFactory.jcell_SINGLETON 'jnone) (set! SecondaryPlayerQueueFactory.jcell_SINGLETON (PlayerQueue.jnew_1 4)))
  SecondaryPlayerQueueFactory.jcell_SINGLETON)
(define (SecondaryPlayerQueueFactory.jsetstatic_SINGLETON value) (set! SecondaryPlayerQueueFactory.jcell_SINGLETON value))

(define (SecondaryPlayerQueueFactory.jnew_0)
  (define this (new SecondaryPlayerQueueFactory% [jclass "SecondaryPlayerQueueFactory"]))
  this)

(define (SecondaryPlayerQueueFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SecondaryPlayerQueueFactory.jstatic_SINGLETON)))))



