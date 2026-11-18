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
;; package org.allbinary.game.input.event

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GameKeyEventUtil%
  (class JObject%
    (super-new)))
(define (GameKeyEventUtil.jclassValue) GameKeyEventUtil%)

(define (GameKeyEventUtil.jnew_0)
  (define this (new GameKeyEventUtil% [jclass "GameKeyEventUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameKeyEventUtil.jm_getKey_1 _anyType)
    (let ([_gameKeyEvent JR.null])
      (let/ec jreturn
        (set! _gameKeyEvent _anyType)
        (jreturn (send _gameKeyEvent jm_getKey_0)))))



