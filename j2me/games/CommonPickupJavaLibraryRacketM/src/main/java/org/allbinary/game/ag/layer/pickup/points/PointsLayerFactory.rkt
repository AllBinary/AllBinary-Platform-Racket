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
;; package org.allbinary.game.ag.layer.pickup.points

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/layer/AllBinaryLayerFactoryInterface.rkt")
(lazy-require ["./PointsLayer.rkt" (PointsLayer.jnew_1)])
(provide (all-defined-out))

(define PointsLayerFactory%
  (class JObject%
    (super-new)
    (field [f_points 0])
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PointsLayer.jnew_1 (get-field f_points this))))))))
(define (PointsLayerFactory.jclassValue) PointsLayerFactory%)

(define (PointsLayerFactory.jnew_1 _points)
  (define this (new PointsLayerFactory% [jclass "PointsLayerFactory"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_points this _points)))
  this)



