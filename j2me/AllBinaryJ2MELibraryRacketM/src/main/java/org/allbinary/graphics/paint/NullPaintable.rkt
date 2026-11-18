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
  "./Paintable.rkt")
(provide (all-defined-out))

(define NullPaintable%
  (class Paintable%
    (super-new)))
(define (NullPaintable.jclassValue) NullPaintable%)

(define NullPaintable.jcell_SINGLETON 'jnone)
(define (NullPaintable.jstatic_SINGLETON)
  (when (eq? NullPaintable.jcell_SINGLETON 'jnone) (set! NullPaintable.jcell_SINGLETON (NullPaintable.jnew_0)))
  NullPaintable.jcell_SINGLETON)
(define (NullPaintable.jsetstatic_SINGLETON value) (set! NullPaintable.jcell_SINGLETON value))

(define (NullPaintable.jnew_0)
  (define this (new NullPaintable% [jclass "NullPaintable"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullPaintable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullPaintable.jstatic_SINGLETON)))))



