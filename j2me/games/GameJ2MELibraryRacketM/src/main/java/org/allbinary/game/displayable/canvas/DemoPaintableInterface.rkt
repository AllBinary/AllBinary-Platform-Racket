#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define DemoPaintableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_showGamePaintable_0)
      (raise (JR.newException "AbstractMethodError" "showGamePaintable")))))
(define (DemoPaintableInterface.jclassValue) DemoPaintableInterface%)

(define (DemoPaintableInterface.jnew_0)
  (define this (new DemoPaintableInterface% [jclass "DemoPaintableInterface"]))
  this)



