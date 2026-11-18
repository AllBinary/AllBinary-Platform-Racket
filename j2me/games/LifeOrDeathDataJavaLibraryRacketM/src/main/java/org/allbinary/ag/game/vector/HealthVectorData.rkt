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
;; package org.allbinary.ag.game.vector

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define HealthVectorData%
  (class JObject%
    (super-new)))
(define (HealthVectorData.jclassValue) HealthVectorData%)

(define HealthVectorData.jcell_points 'jnone)
(define (HealthVectorData.jstatic_points)
  (when (eq? HealthVectorData.jcell_points 'jnone) (set! HealthVectorData.jcell_points (vector (vector (vector 2 1) (vector 3 2) (vector 3 2) (vector 4 1) (vector 4 1) (vector 5 1) (vector 5 1) (vector 6 2) (vector 6 2) (vector 6 3) (vector 6 3) (vector 3 6) (vector 3 6) (vector 0 3) (vector 0 3) (vector 0 2) (vector 0 2) (vector 1 1) (vector 1 1) (vector 2 1) (vector 1000 1000)))))
  HealthVectorData.jcell_points)
(define (HealthVectorData.jsetstatic_points value) (set! HealthVectorData.jcell_points value))

(define (HealthVectorData.jnew_0)
  (define this (new HealthVectorData% [jclass "HealthVectorData"]))
  this)



