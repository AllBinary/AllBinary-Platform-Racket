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
;; package org.allbinary.game.tick

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/layer/NamedInterface.rkt")
(provide (all-defined-out))

(define TickableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_processTick_1 _allBinaryLayerManager)
      (raise (JR.newException "AbstractMethodError" "processTick")))))
(define (TickableInterface.jclassValue) TickableInterface%)

(define (TickableInterface.jnew_0)
  (define this (new TickableInterface% [jclass "TickableInterface"]))
  this)



