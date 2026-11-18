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
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define HighScoresResultsListener%
  (class JObject%
    (super-new)
    (define/public (jm_setHighScoresArray_1 _highScoresArrayP)
      (raise (JR.newException "AbstractMethodError" "setHighScoresArray")))))
(define (HighScoresResultsListener.jclassValue) HighScoresResultsListener%)

(define (HighScoresResultsListener.jnew_0)
  (define this (new HighScoresResultsListener% [jclass "HighScoresResultsListener"]))
  this)



