#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MultiPlayerGameFeatureFactory%
  (class JObject%
    (super-new)
    (define/public (jm_addCommands_1 _anyType)
    (let ()
      (let/ec jreturn (void))))))
(define (MultiPlayerGameFeatureFactory.jclassValue) MultiPlayerGameFeatureFactory%)

(define MultiPlayerGameFeatureFactory.jcell_instance 'jnone)
(define (MultiPlayerGameFeatureFactory.jstatic_instance)
  (when (eq? MultiPlayerGameFeatureFactory.jcell_instance 'jnone) (set! MultiPlayerGameFeatureFactory.jcell_instance (MultiPlayerGameFeatureFactory.jnew_0)))
  MultiPlayerGameFeatureFactory.jcell_instance)
(define (MultiPlayerGameFeatureFactory.jsetstatic_instance value) (set! MultiPlayerGameFeatureFactory.jcell_instance value))

(define (MultiPlayerGameFeatureFactory.jnew_0)
  (define this (new MultiPlayerGameFeatureFactory% [jclass "MultiPlayerGameFeatureFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (MultiPlayerGameFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MultiPlayerGameFeatureFactory.jstatic_instance)))))



