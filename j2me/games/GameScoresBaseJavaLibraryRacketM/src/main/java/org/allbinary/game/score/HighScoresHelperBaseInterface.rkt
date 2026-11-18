#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
  "./HighScoresResultsListener.rkt")
(provide (all-defined-out))

(define HighScoresHelperBaseInterface%
  (class JObject%
    (super-new)
    (define/public (jm_setSelectedHighScores_1 _selectedHighScores)
      (raise (JR.newException "AbstractMethodError" "setSelectedHighScores")))
    (define/public (jm_getHighScoresArray_0)
      (raise (JR.newException "AbstractMethodError" "getHighScoresArray")))
    (define/public (jm_getSelectedHighScores_0)
      (raise (JR.newException "AbstractMethodError" "getSelectedHighScores")))))
(define (HighScoresHelperBaseInterface.jclassValue) HighScoresHelperBaseInterface%)

(define (HighScoresHelperBaseInterface.jnew_0)
  (define this (new HighScoresHelperBaseInterface% [jclass "HighScoresHelperBaseInterface"]))
  this)



