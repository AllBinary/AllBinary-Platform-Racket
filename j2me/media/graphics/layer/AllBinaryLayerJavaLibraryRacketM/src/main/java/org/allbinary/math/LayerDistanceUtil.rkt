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
;; package org.allbinary.math

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/math/MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define LayerDistanceUtil%
  (class JObject%
    (super-new)
    (field [f_mathUtil JR.null])
    (define/public (jm_getDistance_2 _layerInterface _layerInterface2)
    (let ([_dx JR.null][_dy JR.null])
      (let/ec jreturn
        (set! _dx (JR.i32 (- (JR.i32 (+ (send _layerInterface jm_getXP_0) (send _layerInterface jm_getHalfWidth_0))) (JR.i32 (+ (send _layerInterface2 jm_getXP_0) (send _layerInterface2 jm_getHalfWidth_0))))))
        (set! _dy (JR.i32 (- (JR.i32 (+ (send _layerInterface jm_getYP_0) (send _layerInterface jm_getHalfHeight_0))) (JR.i32 (+ (send _layerInterface2 jm_getYP_0) (send _layerInterface2 jm_getHalfHeight_0))))))
        (jreturn (send (get-field f_mathUtil this) jm_sqrt_1 (JR.i32 (+ (JR.i32 (* _dx _dx)) (JR.i32 (* _dy _dy)))))))))
    (define/public (jm_getDistance3D_2 _layerInterface _layerInterface2)
    (let ([_dx JR.null][_dy JR.null][_dz JR.null])
      (let/ec jreturn
        (set! _dx (JR.i32 (- (JR.i32 (+ (send _layerInterface jm_getXP_0) (send _layerInterface jm_getHalfWidth_0))) (JR.i32 (+ (send _layerInterface2 jm_getXP_0) (send _layerInterface2 jm_getHalfWidth_0))))))
        (set! _dy (JR.i32 (- (JR.i32 (+ (send _layerInterface jm_getYP_0) (send _layerInterface jm_getHalfHeight_0))) (JR.i32 (+ (send _layerInterface2 jm_getYP_0) (send _layerInterface2 jm_getHalfHeight_0))))))
        (set! _dz (JR.i32 (- (JR.i32 (+ (send _layerInterface jm_getZP_0) (send _layerInterface jm_getHalfDepth_0))) (JR.i32 (+ (send _layerInterface2 jm_getZP_0) (send _layerInterface2 jm_getHalfDepth_0))))))
        (jreturn (send (get-field f_mathUtil this) jm_sqrt_1 (JR.i32 (+ (JR.i32 (+ (JR.i32 (* _dx _dx)) (JR.i32 (* _dy _dy)))) (JR.i32 (* _dz _dz)))))))))
    (define/public (jm_getDistanceAt_2 _layerInterface _point)
    (let ([_dx JR.null][_dy JR.null])
      (let/ec jreturn
        (set! _dx (JR.i32 (- (send _layerInterface jm_getXP_0) (send _point jm_getX_0))))
        (set! _dy (JR.i32 (- (send _layerInterface jm_getYP_0) (send _point jm_getY_0))))
        (jreturn (send (get-field f_mathUtil this) jm_sqrt_1 (JR.i32 (+ (JR.i32 (* _dx _dx)) (JR.i32 (* _dy _dy)))))))))))
(define (LayerDistanceUtil.jclassValue) LayerDistanceUtil%)

(define LayerDistanceUtil.jcell_instance 'jnone)
(define (LayerDistanceUtil.jstatic_instance)
  (when (eq? LayerDistanceUtil.jcell_instance 'jnone) (set! LayerDistanceUtil.jcell_instance (LayerDistanceUtil.jnew_0)))
  LayerDistanceUtil.jcell_instance)
(define (LayerDistanceUtil.jsetstatic_instance value) (set! LayerDistanceUtil.jcell_instance value))

(define (LayerDistanceUtil.jnew_0)
  (define this (new LayerDistanceUtil% [jclass "LayerDistanceUtil"]))
    (set-field! f_mathUtil this (MathUtil.jm_getInstance_0))
  this)

(define (LayerDistanceUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LayerDistanceUtil.jstatic_instance)))))



