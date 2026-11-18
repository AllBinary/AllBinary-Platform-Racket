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
  "./PickedUpLayerInterfaceFactoryBase.rkt")
(provide (all-defined-out))

(define PickedUpLayerInterfaceFactory%
  (class PickedUpLayerInterfaceFactoryBase%
    (super-new)
    (field [f_pickedUpLayerType JR.null])
    (field [f_iconLayer JR.null])
    (field [f_animationInterface JR.null])
    (define/override (jm_getIconLayer_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_iconLayer this)))))
    (define/override (jm_getAnimationInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterface this)))))
    (define/override (jm_getPickedUpLayerType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_pickedUpLayerType this)))))))
(define (PickedUpLayerInterfaceFactory.jclassValue) PickedUpLayerInterfaceFactory%)

(define (PickedUpLayerInterfaceFactory.jnew_3 _pickeUpLayerType _iconLayer _animationInterface)
  (define this (new PickedUpLayerInterfaceFactory% [jclass "PickedUpLayerInterfaceFactory"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_pickedUpLayerType this _pickeUpLayerType)
        (set-field! f_animationInterface this _animationInterface)
        (set-field! f_iconLayer this _iconLayer)))
  this)



