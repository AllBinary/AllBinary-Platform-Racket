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
;; package org.allbinary.view

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./ViewPosition.rkt")
(provide (all-defined-out))

(define StaticViewPosition%
  (class ViewPosition%
    (super-new)
    (define/override (jm_getX_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getRawX_0)))))
    (define/override (jm_getY_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getRawY_0)))))
    (define/override (jm_getZ_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getRawZ_0)))))))
(define (StaticViewPosition.jclassValue) StaticViewPosition%)

(define (StaticViewPosition.jnew_3 _x _y _z)
  (define this (new StaticViewPosition% [jclass "StaticViewPosition"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



