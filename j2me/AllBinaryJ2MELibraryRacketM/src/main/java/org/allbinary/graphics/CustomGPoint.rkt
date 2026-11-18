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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./GPoint.rkt")
(provide (all-defined-out))

(define CustomGPoint%
  (class GPoint%
    (super-new)
    (field [f_cx 0])
    (field [f_cy 0])
    (field [f_cz 0])
    (define/public (jm_setX_1 _x)
    (let ()
      (let/ec jreturn
        (set-field! f_cx this _x))))
    (define/override (jm_getX_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_cx this)))))
    (define/public (jm_setY_1 _y)
    (let ()
      (let/ec jreturn
        (set-field! f_cy this _y))))
    (define/override (jm_getY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_cy this)))))
    (define/public (jm_setZ_1 _z)
    (let ()
      (let/ec jreturn
        (set-field! f_cz this _z))))
    (define/override (jm_getZ_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_cz this)))))))
(define (CustomGPoint.jclassValue) CustomGPoint%)

(define CustomGPoint.jcell_NULL_CUSTOM_POINT 'jnone)
(define (CustomGPoint.jstatic_NULL_CUSTOM_POINT)
  (when (eq? CustomGPoint.jcell_NULL_CUSTOM_POINT 'jnone) (set! CustomGPoint.jcell_NULL_CUSTOM_POINT (CustomGPoint.jnew_3 0 0 0)))
  CustomGPoint.jcell_NULL_CUSTOM_POINT)
(define (CustomGPoint.jsetstatic_NULL_CUSTOM_POINT value) (set! CustomGPoint.jcell_NULL_CUSTOM_POINT value))

(define (CustomGPoint.jnew_3 _x _y _z)
  (define this (new CustomGPoint% [jclass "CustomGPoint"]))
    
    
    
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (CustomGPoint.jm_getInstance_1 _point)
    (let ()
      (let/ec jreturn
        (jreturn (CustomGPoint.jnew_3 (send _point jm_getX_0) (send _point jm_getY_0) (send _point jm_getZ_0))))))

(define (CustomGPoint.jm_getInstance3_2 _x _y)
    (let ()
      (let/ec jreturn
        (jreturn (CustomGPoint.jnew_3 _x _y 3)))))



