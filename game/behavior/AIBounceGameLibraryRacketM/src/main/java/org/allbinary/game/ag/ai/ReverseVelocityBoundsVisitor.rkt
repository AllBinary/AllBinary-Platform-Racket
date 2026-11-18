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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/bounds/BoundsVisitorInterface.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ReverseVelocityBoundsVisitor%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_velocityInterface JR.null])
    (field [f_layerInterface JR.null])
    (define/public (jm_getX_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_layerInterface this) jm_getXP_0)))))
    (define/public (jm_getY_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_layerInterface this) jm_getYP_0)))))
    (define/public (jm_minX_0)
    (let ()
      (let/ec jreturn
        (when (< (JR.className (send (get-field f_velocityInterface this) jm_getVelocityXBasicDecimalP_0)) 0)
            (begin
            (JR.className (send (get-field f_velocityInterface this) jm_getVelocityXBasicDecimalP_0)))))))
    (define/public (jm_maxX_0)
    (let ()
      (let/ec jreturn
        (when (> (JR.className (send (get-field f_velocityInterface this) jm_getVelocityXBasicDecimalP_0)) 0)
            (begin
            (JR.className (send (get-field f_velocityInterface this) jm_getVelocityXBasicDecimalP_0)))))))
    (define/public (jm_minY_0)
    (let ()
      (let/ec jreturn
        (when (< (JR.className (send (get-field f_velocityInterface this) jm_getVelocityYBasicDecimalP_0)) 0)
            (begin
            (JR.className (send (get-field f_velocityInterface this) jm_getVelocityYBasicDecimalP_0)))))))
    (define/public (jm_maxY_0)
    (let ()
      (let/ec jreturn
        (when (> (JR.className (send (get-field f_velocityInterface this) jm_getVelocityYBasicDecimalP_0)) 0)
            (begin
            (JR.className (send (get-field f_velocityInterface this) jm_getVelocityYBasicDecimalP_0)))))))))
(define (ReverseVelocityBoundsVisitor.jclassValue) ReverseVelocityBoundsVisitor%)

(define (ReverseVelocityBoundsVisitor.jnew_1 _layerInterface)
  (define this (new ReverseVelocityBoundsVisitor% [jclass "ReverseVelocityBoundsVisitor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    (let ([_velocityInterfaceCompositeInterface JR.null])
      (let/ec jreturn
        (set-field! f_layerInterface this _layerInterface)
        (set! _velocityInterfaceCompositeInterface _layerInterface)
        (set-field! f_velocityInterface this (send _velocityInterfaceCompositeInterface jm_getVelocityProperties_0))))
  this)



