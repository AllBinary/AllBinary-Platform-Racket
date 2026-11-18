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
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/game/identification/GroupInterfaceCompositeInterface.rkt"
  "../../../org/allbinary/graphics/paint/PaintableInterface.rkt"
  "./NamedInterface.rkt"
  "./PositionInterface.rkt")
(provide (all-defined-out))

(define LayerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getHeight_0)
      (raise (JR.newException "AbstractMethodError" "getHeight")))
    (define/public (jm_getWidth_0)
      (raise (JR.newException "AbstractMethodError" "getWidth")))
    (define/public (jm_getHalfHeight_0)
      (raise (JR.newException "AbstractMethodError" "getHalfHeight")))
    (define/public (jm_getHalfWidth_0)
      (raise (JR.newException "AbstractMethodError" "getHalfWidth")))
    (define/public (jm_getXP_0)
      (raise (JR.newException "AbstractMethodError" "getXP")))
    (define/public (jm_getYP_0)
      (raise (JR.newException "AbstractMethodError" "getYP")))
    (define/public (jm_getZP_0)
      (raise (JR.newException "AbstractMethodError" "getZP")))
    (define/public (jm_getX2_0)
      (raise (JR.newException "AbstractMethodError" "getX2")))
    (define/public (jm_getY2_0)
      (raise (JR.newException "AbstractMethodError" "getY2")))
    (define/public (jm_getZ2_0)
      (raise (JR.newException "AbstractMethodError" "getZ2")))
    (define/public (jm_isVisible_0)
      (raise (JR.newException "AbstractMethodError" "isVisible")))
    (define/public (jm_moveDXYZ_3 _dx _dy _dz)
      (raise (JR.newException "AbstractMethodError" "moveDXYZ")))
    (define/public (jm_setVisible_1 _visible)
      (raise (JR.newException "AbstractMethodError" "setVisible")))
    (define/public (jm_implmentsTickableInterface_0)
      (raise (JR.newException "AbstractMethodError" "implmentsTickableInterface")))
    (define/public (jm_implmentsCollidableInterface_0)
      (raise (JR.newException "AbstractMethodError" "implmentsCollidableInterface")))
    (define/public (jm_implmentsGameInputInterface_0)
      (raise (JR.newException "AbstractMethodError" "implmentsGameInputInterface")))
    (define/public (jm_implmentsArtificialIntelligenceCompositeInterface_0)
      (raise (JR.newException "AbstractMethodError" "implmentsArtificialIntelligenceCompositeInterface")))
    (define/public (jm_getType_0)
      (raise (JR.newException "AbstractMethodError" "getType")))))
(define (LayerInterface.jclassValue) LayerInterface%)

(define (LayerInterface.jnew_0)
  (define this (new LayerInterface% [jclass "LayerInterface"]))
  this)



