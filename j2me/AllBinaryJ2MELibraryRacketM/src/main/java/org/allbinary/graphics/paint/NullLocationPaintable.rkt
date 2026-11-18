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
  "./LocationPaintable.rkt")
(provide (all-defined-out))

(define NullLocationPaintable%
  (class LocationPaintable%
    (super-new)))
(define (NullLocationPaintable.jclassValue) NullLocationPaintable%)

(define NullLocationPaintable.jcell_instanceC 'jnone)
(define (NullLocationPaintable.jstatic_instanceC)
  (when (eq? NullLocationPaintable.jcell_instanceC 'jnone) (set! NullLocationPaintable.jcell_instanceC (NullLocationPaintable.jnew_0)))
  NullLocationPaintable.jcell_instanceC)
(define (NullLocationPaintable.jsetstatic_instanceC value) (set! NullLocationPaintable.jcell_instanceC value))

(define (NullLocationPaintable.jnew_0)
  (define this (new NullLocationPaintable% [jclass "NullLocationPaintable"]))
  this)

(define (NullLocationPaintable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullLocationPaintable.jstatic_instanceC)))))



