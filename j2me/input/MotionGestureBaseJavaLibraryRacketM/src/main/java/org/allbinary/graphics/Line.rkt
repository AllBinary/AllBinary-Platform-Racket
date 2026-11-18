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
  "../../../allbinary_java.rkt")
(lazy-require ["./PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define Line%
  (class JObject%
    (super-new)
    (field [f_p1 JR.null])
    (field [f_p2 JR.null])
    (field [f_deltaX 0.0])
    (field [f_deltaY 0.0])
    (define/public (jm_getGradient_0)
    (let ()
      (let/ec jreturn
        (jreturn (/ (send this jm_getDeltaY_0) (send this jm_getDeltaX_0))))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (set-field! f_deltaX this (- (JR.toDouble (send (send this jm_getP1_0) jm_getX_0)) (JR.toDouble (send (send this jm_getP2_0) jm_getX_0))))
        (set-field! f_deltaY this (- (JR.toDouble (send (send this jm_getP1_0) jm_getY_0)) (JR.toDouble (send (send this jm_getP2_0) jm_getY_0)))))))
    (define/public (jm_getDeltaX_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_deltaX this)))))
    (define/public (jm_getDeltaY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_deltaY this)))))
    (define/public (jm_getP1_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_p1 this)))))
    (define/public (jm_getP2_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_p2 this)))))
    (define/public (jm_setP1_1 _p1)
    (let ()
      (let/ec jreturn
        (set-field! f_p1 this _p1)
        (send this jm_update_0))))
    (define/public (jm_setP2_1 _p2)
    (let ()
      (let/ec jreturn
        (set-field! f_p2 this _p2)
        (send this jm_update_0))))))
(define (Line.jclassValue) Line%)

(define (Line.jnew_2 _p1 _p2)
  (define this (new Line% [jclass "Line"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_p1 this (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)))
        (set-field! f_p2 this (get-field f_p1 this))
        (send this jm_setP1_1 _p1)
        (send this jm_setP2_1 _p2)))
  this)



