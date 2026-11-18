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
;; package org.allbinary.game.layer.behavior

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GameLayerBehavior%
  (class JObject%
    (super-new)))
(define (GameLayerBehavior.jclassValue) GameLayerBehavior%)

(define (GameLayerBehavior.jnew_0)
  (define this (new GameLayerBehavior% [jclass "GameLayerBehavior"]))
  this)



