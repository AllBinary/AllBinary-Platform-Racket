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
;; package org.allbinary.game.ag.layer.pickup.health

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface.rkt")
(lazy-require ["./HealLayer.rkt" (HealLayer.jnew_0)])
(provide (all-defined-out))

(define HealLayerFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HealLayer.jnew_0)))))))
(define (HealLayerFactory.jclassValue) HealLayerFactory%)

(define (HealLayerFactory.jnew_0)
  (define this (new HealLayerFactory% [jclass "HealLayerFactory"]))
  this)



