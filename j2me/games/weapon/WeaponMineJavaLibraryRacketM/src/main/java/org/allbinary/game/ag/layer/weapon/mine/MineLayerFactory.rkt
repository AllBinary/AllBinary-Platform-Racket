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
;; package org.allbinary.game.ag.layer.weapon.mine

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface.rkt")
(lazy-require ["./MineLayer.rkt" (MineLayer.jnew_1)])
(provide (all-defined-out))

(define MineLayerFactory%
  (class JObject%
    (super-new)
    (field [f_viewPositionFactoryInterface JR.null])
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MineLayer.jnew_1 (send (get-field f_viewPositionFactoryInterface this) jm_getInstance_0))))))))
(define (MineLayerFactory.jclassValue) MineLayerFactory%)

(define (MineLayerFactory.jnew_1 _viewPositionFactoryInterface)
  (define this (new MineLayerFactory% [jclass "MineLayerFactory"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_viewPositionFactoryInterface this _viewPositionFactoryInterface)))
  this)



