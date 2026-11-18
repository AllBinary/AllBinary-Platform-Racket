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

(define HighScoresInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getList_0)
      (raise (JR.newException "AbstractMethodError" "getList")))
    (define/public (jm_addHighScore_1 _newHighScore)
      (raise (JR.newException "AbstractMethodError" "addHighScore")))
    (define/public (jm_getTotal_0)
      (raise (JR.newException "AbstractMethodError" "getTotal")))
    (define/public (jm_isBestScore_1 _newHighScore)
      (raise (JR.newException "AbstractMethodError" "isBestScore")))))
(define (HighScoresInterface.jclassValue) HighScoresInterface%)

(define (HighScoresInterface.jnew_0)
  (define this (new HighScoresInterface% [jclass "HighScoresInterface"]))
  this)



