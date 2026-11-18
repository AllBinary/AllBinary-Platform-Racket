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
(lazy-require ["./Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["./PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define RectangleFactory%
  (class JObject%
    (super-new)))
(define (RectangleFactory.jclassValue) RectangleFactory%)

(define RectangleFactory.jcell_SINGLETON 'jnone)
(define (RectangleFactory.jstatic_SINGLETON)
  (when (eq? RectangleFactory.jcell_SINGLETON 'jnone) (set! RectangleFactory.jcell_SINGLETON (Rectangle.jnew_3 (get-field f_ZERO_ZERO (PointFactory.jm_getInstance_0)) 0 0)))
  RectangleFactory.jcell_SINGLETON)
(define (RectangleFactory.jsetstatic_SINGLETON value) (set! RectangleFactory.jcell_SINGLETON value))

(define RectangleFactory.jcell_ARRAY_OF_ARRAYS 'jnone)
(define (RectangleFactory.jstatic_ARRAY_OF_ARRAYS)
  (when (eq? RectangleFactory.jcell_ARRAY_OF_ARRAYS 'jnone) (set! RectangleFactory.jcell_ARRAY_OF_ARRAYS (JR.newArray JR.null 0 0)))
  RectangleFactory.jcell_ARRAY_OF_ARRAYS)
(define (RectangleFactory.jsetstatic_ARRAY_OF_ARRAYS value) (set! RectangleFactory.jcell_ARRAY_OF_ARRAYS value))

(define (RectangleFactory.jnew_0)
  (define this (new RectangleFactory% [jclass "RectangleFactory"]))
  this)



