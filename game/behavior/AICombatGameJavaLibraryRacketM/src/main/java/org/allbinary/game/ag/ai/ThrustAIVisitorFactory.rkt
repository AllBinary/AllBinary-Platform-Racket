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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./ThrustAIVisitor.rkt" (ThrustAIVisitor.jnew_0)])
(provide (all-defined-out))

(define ThrustAIVisitorFactory%
  (class JObject%
    (super-new)))
(define (ThrustAIVisitorFactory.jclassValue) ThrustAIVisitorFactory%)

(define ThrustAIVisitorFactory.jcell_instance 'jnone)
(define (ThrustAIVisitorFactory.jstatic_instance)
  (when (eq? ThrustAIVisitorFactory.jcell_instance 'jnone) (set! ThrustAIVisitorFactory.jcell_instance (ThrustAIVisitor.jnew_0)))
  ThrustAIVisitorFactory.jcell_instance)
(define (ThrustAIVisitorFactory.jsetstatic_instance value) (set! ThrustAIVisitorFactory.jcell_instance value))

(define (ThrustAIVisitorFactory.jnew_0)
  (define this (new ThrustAIVisitorFactory% [jclass "ThrustAIVisitorFactory"]))
  this)

(define (ThrustAIVisitorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ThrustAIVisitorFactory.jstatic_instance)))))



