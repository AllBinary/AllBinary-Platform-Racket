#lang racket/base
;; 
;; To change this license header, choose License Headers in Project Properties. 
;; To change this template file, choose Tools | Templates 
;; and open the template in the editor.  
;; Generated Code Do Not Modify
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ChallengerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_setWinner_1 _isWinner)
      (raise (JR.newException "AbstractMethodError" "setWinner")))))
(define (ChallengerInterface.jclassValue) ChallengerInterface%)

(define (ChallengerInterface.jnew_0)
  (define this (new ChallengerInterface% [jclass "ChallengerInterface"]))
  this)



