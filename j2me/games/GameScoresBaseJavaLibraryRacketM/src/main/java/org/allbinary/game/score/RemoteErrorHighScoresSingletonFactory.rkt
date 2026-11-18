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

(define RemoteErrorHighScoresSingletonFactory%
  (class JObject%
    (super-new)))
(define (RemoteErrorHighScoresSingletonFactory.jclassValue) RemoteErrorHighScoresSingletonFactory%)

(define RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON 'jnone)
(define (RemoteErrorHighScoresSingletonFactory.jstatic_SINGLETON)
  (when (eq? RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON 'jnone) (set! RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON (HighScores.jnew_3 (get-field f_LOADING (CommonStrings.jm_getInstance_0)) "Remote High Scores Did Not Load" (get-field f_PERIODS (CommonStrings.jm_getInstance_0)))))
  RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON)
(define (RemoteErrorHighScoresSingletonFactory.jsetstatic_SINGLETON value) (set! RemoteErrorHighScoresSingletonFactory.jcell_SINGLETON value))

(define (RemoteErrorHighScoresSingletonFactory.jnew_0)
  (define this (new RemoteErrorHighScoresSingletonFactory% [jclass "RemoteErrorHighScoresSingletonFactory"]))
  this)

(define (RemoteErrorHighScoresSingletonFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RemoteErrorHighScoresSingletonFactory.jstatic_SINGLETON)))))



