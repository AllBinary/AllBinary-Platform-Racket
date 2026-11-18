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
;; package org.allbinary.game.ag.layer.pickup.life

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface.rkt")
(lazy-require ["./LifeLayer.rkt" (LifeLayer.jnew_0)])
(provide (all-defined-out))

(define LifeLayerFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LifeLayer.jnew_0)))))))
(define (LifeLayerFactory.jclassValue) LifeLayerFactory%)

(define (LifeLayerFactory.jnew_0)
  (define this (new LifeLayerFactory% [jclass "LifeLayerFactory"]))
  this)



