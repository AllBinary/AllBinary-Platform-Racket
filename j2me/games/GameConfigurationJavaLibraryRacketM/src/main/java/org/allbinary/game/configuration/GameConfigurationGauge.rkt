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
;; package org.allbinary.game.configuration

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../javax/microedition/lcdui/Gauge.rkt")
(provide (all-defined-out))

(define GameConfigurationGauge%
  (class Gauge%
    (super-new)))
(define (GameConfigurationGauge.jclassValue) GameConfigurationGauge%)

(define (GameConfigurationGauge.jnew_1 _gameConfiguration)
  (define this (new GameConfigurationGauge% [jclass "GameConfigurationGauge"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



