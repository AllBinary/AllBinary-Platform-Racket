#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define MultiPlayerGameFeatureFactory%
  (class JObject%
    (super-new)
    (define/public (jm_addCommands_1 _anyType)
    (let ([_gameCommandsFactory JR.null][_canvas JR.null])
      (let/ec jreturn
        (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (set! _canvas _anyType)
        (send _canvas jm_addCommand_1 (get-field f_QUIT_COMMAND _gameCommandsFactory)))))))
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



