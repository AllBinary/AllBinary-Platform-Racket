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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./HighScores.rkt" (HighScores.jnew_3)])
(provide (all-defined-out))

(define NullHighScoresSingletonFactory%
  (class JObject%
    (super-new)))
(define (NullHighScoresSingletonFactory.jclassValue) NullHighScoresSingletonFactory%)

(define NullHighScoresSingletonFactory.jcell_SINGLETON 'jnone)
(define (NullHighScoresSingletonFactory.jstatic_SINGLETON)
  (when (eq? NullHighScoresSingletonFactory.jcell_SINGLETON 'jnone) (set! NullHighScoresSingletonFactory.jcell_SINGLETON (HighScores.jnew_3 (get-field f_LOADING (CommonStrings.jm_getInstance_0)) "High Scores Not Loaded" (get-field f_PERIODS (CommonStrings.jm_getInstance_0)))))
  NullHighScoresSingletonFactory.jcell_SINGLETON)
(define (NullHighScoresSingletonFactory.jsetstatic_SINGLETON value) (set! NullHighScoresSingletonFactory.jcell_SINGLETON value))

(define (NullHighScoresSingletonFactory.jnew_0)
  (define this (new NullHighScoresSingletonFactory% [jclass "NullHighScoresSingletonFactory"]))
  this)

(define (NullHighScoresSingletonFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullHighScoresSingletonFactory.jstatic_SINGLETON)))))



