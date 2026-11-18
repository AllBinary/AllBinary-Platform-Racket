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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./LocationPaintableInterface.rkt")
(provide (all-defined-out))

(define LocationPaintable%
  (class JObject%
    (super-new)
    (define/public (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn (void))))))
(define (LocationPaintable.jclassValue) LocationPaintable%)

(define LocationPaintable.jcell_instance 'jnone)
(define (LocationPaintable.jstatic_instance)
  (when (eq? LocationPaintable.jcell_instance 'jnone) (set! LocationPaintable.jcell_instance (LocationPaintable.jnew_0)))
  LocationPaintable.jcell_instance)
(define (LocationPaintable.jsetstatic_instance value) (set! LocationPaintable.jcell_instance value))

(define (LocationPaintable.jnew_0)
  (define this (new LocationPaintable% [jclass "LocationPaintable"]))
  this)

(define (LocationPaintable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LocationPaintable.jstatic_instance)))))



