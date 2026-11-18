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
;; package org.allbinary.game.layer.pickup

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./PickedUpLayerInterfaceFactory.rkt"
  "./CountedPickedUpLayerInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./PickedUpLayerTypeFactory.rkt" (PickedUpLayerTypeFactory.jm_getInstance_0)])
(lazy-require ["./IconLayer.rkt" (IconLayer.jstatic_NULL_ICON_LAYER)])
(lazy-require ["./CountedPickedUpLayerInterfaceFactoryPool.rkt" (CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0)])
(provide (all-defined-out))

(define CountedPickedUpLayerInterfaceFactory%
  (class PickedUpLayerInterfaceFactory%
    (super-new)
    (field [f_id 0])
    (define/public (jm_getNextInstance_4 _hashtable _x _y _z)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (CommonStrings.jm_getInstance_0)))))))
    (define/public (jm_getTotal_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_id this)))))))
(define (CountedPickedUpLayerInterfaceFactory.jclassValue) CountedPickedUpLayerInterfaceFactory%)

(define CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY 'jnone)
(define (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)
  (when (eq? CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY 'jnone) (set! CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY (CountedPickedUpLayerInterfaceFactory.jnew_3 (get-field f_NONE (PickedUpLayerTypeFactory.jm_getInstance_0)) (IconLayer.jstatic_NULL_ICON_LAYER) (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))))
  CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY)
(define (CountedPickedUpLayerInterfaceFactory.jsetstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY value) (set! CountedPickedUpLayerInterfaceFactory.jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY value))

(define (CountedPickedUpLayerInterfaceFactory.jnew_3 _pickeUpLayerType _iconLayer _animationInterface)
  (define this (new CountedPickedUpLayerInterfaceFactory% [jclass "CountedPickedUpLayerInterfaceFactory"]))
    
    (let ([_list JR.null])
      (let/ec jreturn
        (void)
        (set! _list (send (CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0) jm_getList_0))
        (set-field! f_id this (send _list jm_size_0))
        (send _list jm_add_1 this)))
  this)



