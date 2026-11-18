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
(provide (all-defined-out))

(define HighScoresFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_fetchHighScores_2 _gameInfo _highScoresResultsListener)
      (raise (JR.newException "AbstractMethodError" "fetchHighScores")))
    (define/public (jm_fetchHighScoresPreload_3 _gameInfo _highScoresResultsListener _preload)
      (raise (JR.newException "AbstractMethodError" "fetchHighScoresPreload")))
    (define/public (jm_createHighScoresHelper_0)
      (raise (JR.newException "AbstractMethodError" "createHighScoresHelper")))))
(define (HighScoresFactoryInterface.jclassValue) HighScoresFactoryInterface%)

(define (HighScoresFactoryInterface.jnew_0)
  (define this (new HighScoresFactoryInterface% [jclass "HighScoresFactoryInterface"]))
  this)



