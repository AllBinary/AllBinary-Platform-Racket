#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.view

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./ViewPositionBase.rkt")
(lazy-require ["../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(provide (all-defined-out))

(define ViewPosition%
  (class ViewPositionBase%
    (super-new)
    (field [f_allbinaryLayer JR.null])
    (define/override (jm_getX_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_allbinaryLayer this) jm_getXP_0)))))
    (define/override (jm_getY_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_allbinaryLayer this) jm_getYP_0)))))
    (define/override (jm_getZ_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_allbinaryLayer this) jm_getZP_0)))))
    (define/override (jm_getX2_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send this jm_getX_0) (send (get-field f_allbinaryLayer this) jm_getWidth_0)))))))
    (define/override (jm_getY2_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (+ (send this jm_getY_0) (send (get-field f_allbinaryLayer this) jm_getHeight_0)))))))
    (define/override (jm_getZ2_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (JR.i64 (+ (send this jm_getZ_0) (send (get-field f_allbinaryLayer this) jm_getDepth_0))))))))
    (define/override (jm_setAllbinaryLayer_1 _allbinaryLayer)
    (let ()
      (let/ec jreturn
        (set-field! f_allbinaryLayer this _allbinaryLayer))))))
(define (ViewPosition.jclassValue) ViewPosition%)

(define (ViewPosition.jnew_3 _x _y _z)
  (define this (new ViewPosition% [jclass "ViewPosition"]))
    (set-field! f_allbinaryLayer this (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (ViewPosition.jm_getInstanceD_0)
    (let ()
      (let/ec jreturn
        (jreturn (ViewPosition.jnew_3 0 0 0)))))



