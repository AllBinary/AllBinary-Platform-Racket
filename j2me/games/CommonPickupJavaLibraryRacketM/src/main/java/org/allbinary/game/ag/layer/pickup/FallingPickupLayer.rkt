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
;; package org.allbinary.game.ag.layer.pickup

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/layer/pickup/PickupLayer.rkt"
  "../../../../../../org/allbinary/game/tick/TickableInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.rkt" (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)])
(lazy-require ["../../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../../org/allbinary/view/ViewPosition.rkt" (ViewPosition.jm_getInstanceD_0)])
(provide (all-defined-out))

(define FallingPickupLayer%
  (class PickupLayer%
    (super-new)
    (define/override (jm_processTick_1 _allBinaryLayerManager)
    (let ()
      (let/ec jreturn
        (send this jm_setPosition_3 (get-field f_x this) (JR.i32 (+ (get-field f_y this) 1)) (get-field f_z this)))))
    (define/override (jm_implmentsTickableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))
(define (FallingPickupLayer.jclassValue) FallingPickupLayer%)

(define FallingPickupLayer.jcell_NAME 'jnone)
(define (FallingPickupLayer.jstatic_NAME)
  (when (eq? FallingPickupLayer.jcell_NAME 'jnone) (set! FallingPickupLayer.jcell_NAME "FallingPickupLayer"))
  FallingPickupLayer.jcell_NAME)
(define (FallingPickupLayer.jsetstatic_NAME value) (set! FallingPickupLayer.jcell_NAME value))

(define (FallingPickupLayer.jnew_1 _remoteInfo)
  (define this (new FallingPickupLayer% [jclass "FallingPickupLayer"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



