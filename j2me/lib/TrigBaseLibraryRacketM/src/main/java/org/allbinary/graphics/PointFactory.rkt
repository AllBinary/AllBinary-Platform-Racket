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
(lazy-require ["./GPoint.rkt" (GPoint.jnew_3)])
(provide (all-defined-out))

(define PointFactory%
  (class JObject%
    (super-new)
    (field [f_ZERO_ZERO JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_createXY_2 _x _y)
    (let ()
      (let/ec jreturn
        (jreturn (GPoint.jnew_3 _x _y 0)))))
    (define/public (jm_createXYZ_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (jreturn (GPoint.jnew_3 _x _y _z)))))))

(define PointFactory.jcell_instance 'jnone)
(define (PointFactory.jstatic_instance)
  (when (eq? PointFactory.jcell_instance 'jnone) (set! PointFactory.jcell_instance (PointFactory.jnew_0)))
  PointFactory.jcell_instance)

(define (PointFactory.jnew_0)
  (define this (new PointFactory% [jclass "PointFactory"]))
    (set-field! f_ZERO_ZERO this (send this jm_createXYZ_3 0 0 0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PointFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PointFactory.jstatic_instance)))))



