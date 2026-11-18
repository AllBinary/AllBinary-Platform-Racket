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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./ProcessPaintable.rkt" (ProcessPaintable.jnew_0)])
(provide (all-defined-out))

(define ProcessPaintableSingletonFactory%
  (class JObject%
    (super-new)))
(define (ProcessPaintableSingletonFactory.jclassValue) ProcessPaintableSingletonFactory%)

(define ProcessPaintableSingletonFactory.jcell_SINGLETON 'jnone)
(define (ProcessPaintableSingletonFactory.jstatic_SINGLETON)
  (when (eq? ProcessPaintableSingletonFactory.jcell_SINGLETON 'jnone) (set! ProcessPaintableSingletonFactory.jcell_SINGLETON (ProcessPaintable.jnew_0)))
  ProcessPaintableSingletonFactory.jcell_SINGLETON)
(define (ProcessPaintableSingletonFactory.jsetstatic_SINGLETON value) (set! ProcessPaintableSingletonFactory.jcell_SINGLETON value))

(define (ProcessPaintableSingletonFactory.jnew_0)
  (define this (new ProcessPaintableSingletonFactory% [jclass "ProcessPaintableSingletonFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ProcessPaintableSingletonFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ProcessPaintableSingletonFactory.jstatic_SINGLETON)))))



