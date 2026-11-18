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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/direction/DirectionFactory.rkt" (DirectionFactory.jm_getInstance_0)])
(lazy-require ["./LayerPlacementType.rkt" (LayerPlacementType.jnew_1)])
(provide (all-defined-out))

(define LayerPlacementTypeFactory%
  (class JObject%
    (super-new)
    (field [f_MAP JR.null])
    (field [f_LEFT JR.null])
    (field [f_DOWN JR.null])
    (field [f_UP JR.null])
    (field [f_RIGHT JR.null])))
(define (LayerPlacementTypeFactory.jclassValue) LayerPlacementTypeFactory%)

(define LayerPlacementTypeFactory.jcell_instance 'jnone)
(define (LayerPlacementTypeFactory.jstatic_instance)
  (when (eq? LayerPlacementTypeFactory.jcell_instance 'jnone) (set! LayerPlacementTypeFactory.jcell_instance (LayerPlacementTypeFactory.jnew_0)))
  LayerPlacementTypeFactory.jcell_instance)
(define (LayerPlacementTypeFactory.jsetstatic_instance value) (set! LayerPlacementTypeFactory.jcell_instance value))

(define (LayerPlacementTypeFactory.jnew_0)
  (define this (new LayerPlacementTypeFactory% [jclass "LayerPlacementTypeFactory"]))
    (set-field! f_MAP this (LayerPlacementType.jnew_1 (Integer.jstatic_MAX_VALUE)))
    (set-field! f_LEFT this (LayerPlacementType.jnew_1 (JR.className (get-field f_LEFT (DirectionFactory.jm_getInstance_0)))))
    (set-field! f_DOWN this (LayerPlacementType.jnew_1 (JR.className (get-field f_DOWN (DirectionFactory.jm_getInstance_0)))))
    (set-field! f_UP this (LayerPlacementType.jnew_1 (JR.className (get-field f_UP (DirectionFactory.jm_getInstance_0)))))
    (set-field! f_RIGHT this (LayerPlacementType.jnew_1 (JR.className (get-field f_RIGHT (DirectionFactory.jm_getInstance_0)))))
  this)

(define (LayerPlacementTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LayerPlacementTypeFactory.jstatic_instance)))))



