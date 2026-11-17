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
(provide (all-defined-out))

(define RectangleCollisionUtil%
  (class JObject%
    (super-new)
    (define/public (jm_isCollision_8 _rectX1 _rectY1 _rectX2 _rectY2 _rect2X1 _rect2Y1 _rect2X2 _rect2Y2)
    (let ()
      (let/ec jreturn
        (if (or (or (or (>= _rect2X1 _rectX2) (>= _rect2Y1 _rectY2)) (<= _rect2X2 _rectX1)) (<= _rect2Y2 _rectY1))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))
    (define/public (jm_isInside_6 _rectX1 _rectY1 _rectX2 _rectY2 _x _y)
    (let ()
      (let/ec jreturn
        (if (or (or (or (>= _x _rectX2) (>= _y _rectY2)) (<= _x _rectX1)) (<= _y _rectY1))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))))

(define RectangleCollisionUtil.jcell_instance 'jnone)
(define (RectangleCollisionUtil.jstatic_instance)
  (when (eq? RectangleCollisionUtil.jcell_instance 'jnone) (set! RectangleCollisionUtil.jcell_instance (RectangleCollisionUtil.jnew_0)))
  RectangleCollisionUtil.jcell_instance)

(define (RectangleCollisionUtil.jnew_0)
  (define this (new RectangleCollisionUtil% [jclass "RectangleCollisionUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (RectangleCollisionUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (RectangleCollisionUtil.jstatic_instance)))))



