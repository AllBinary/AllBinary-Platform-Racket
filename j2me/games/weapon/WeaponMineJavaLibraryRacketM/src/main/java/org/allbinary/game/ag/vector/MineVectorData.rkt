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
;; package org.allbinary.game.ag.vector

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MineVectorData%
  (class JObject%
    (super-new)))
(define (MineVectorData.jclassValue) MineVectorData%)

(define MineVectorData.jcell_points 'jnone)
(define (MineVectorData.jstatic_points)
  (when (eq? MineVectorData.jcell_points 'jnone) (set! MineVectorData.jcell_points (vector (vector (vector 10 5) (vector 2 6) (vector 1000 1000) (vector 2 2) (vector 10 9) (vector 1000 1000) (vector 10 2) (vector 2 9) (vector 1000 1000) (vector 2 5) (vector 10 6) (vector 1000 1000) (vector 7 9) (vector 5 2) (vector 1000 1000) (vector 7 2) (vector 5 9) (vector 1000 1000)))))
  MineVectorData.jcell_points)
(define (MineVectorData.jsetstatic_points value) (set! MineVectorData.jcell_points value))

(define (MineVectorData.jnew_0)
  (define this (new MineVectorData% [jclass "MineVectorData"]))
    (let ()
      (let/ec jreturn (void)))
  this)



