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
(lazy-require ["./LastKeyAIVisitor.rkt" (LastKeyAIVisitor.jnew_0)])
(provide (all-defined-out))

(define LastKeyAIVisitorFactory%
  (class JObject%
    (super-new)))
(define (LastKeyAIVisitorFactory.jclassValue) LastKeyAIVisitorFactory%)

(define LastKeyAIVisitorFactory.jcell_instance 'jnone)
(define (LastKeyAIVisitorFactory.jstatic_instance)
  (when (eq? LastKeyAIVisitorFactory.jcell_instance 'jnone) (set! LastKeyAIVisitorFactory.jcell_instance (LastKeyAIVisitor.jnew_0)))
  LastKeyAIVisitorFactory.jcell_instance)
(define (LastKeyAIVisitorFactory.jsetstatic_instance value) (set! LastKeyAIVisitorFactory.jcell_instance value))

(define (LastKeyAIVisitorFactory.jnew_0)
  (define this (new LastKeyAIVisitorFactory% [jclass "LastKeyAIVisitorFactory"]))
  this)

(define (LastKeyAIVisitorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LastKeyAIVisitorFactory.jstatic_instance)))))



