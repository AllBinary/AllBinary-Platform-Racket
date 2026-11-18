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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./HighScoreCommandsBaseFactory.rkt")
(lazy-require ["./HighScoreCommands.rkt" (HighScoreCommands.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoreCommandsFactory%
  (class HighScoreCommandsBaseFactory%
    (super-new)))
(define (HighScoreCommandsFactory.jclassValue) HighScoreCommandsFactory%)

(define HighScoreCommandsFactory.jcell_instance 'jnone)
(define (HighScoreCommandsFactory.jstatic_instance)
  (when (eq? HighScoreCommandsFactory.jcell_instance 'jnone) (set! HighScoreCommandsFactory.jcell_instance (HighScoreCommandsFactory.jnew_0)))
  HighScoreCommandsFactory.jcell_instance)
(define (HighScoreCommandsFactory.jsetstatic_instance value) (set! HighScoreCommandsFactory.jcell_instance value))

(define (HighScoreCommandsFactory.jnew_0)
  (define this (new HighScoreCommandsFactory% [jclass "HighScoreCommandsFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (HighScoreCommandsFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HighScoreCommandsFactory.jstatic_instance)))))



