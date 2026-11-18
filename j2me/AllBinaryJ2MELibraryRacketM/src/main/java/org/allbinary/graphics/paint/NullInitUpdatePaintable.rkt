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
  "./InitUpdatePaintable.rkt")
(provide (all-defined-out))

(define NullInitUpdatePaintable%
  (class InitUpdatePaintable%
    (super-new)))
(define (NullInitUpdatePaintable.jclassValue) NullInitUpdatePaintable%)

(define NullInitUpdatePaintable.jcell_SINGLETON 'jnone)
(define (NullInitUpdatePaintable.jstatic_SINGLETON)
  (when (eq? NullInitUpdatePaintable.jcell_SINGLETON 'jnone) (set! NullInitUpdatePaintable.jcell_SINGLETON (NullInitUpdatePaintable.jnew_0)))
  NullInitUpdatePaintable.jcell_SINGLETON)
(define (NullInitUpdatePaintable.jsetstatic_SINGLETON value) (set! NullInitUpdatePaintable.jcell_SINGLETON value))

(define (NullInitUpdatePaintable.jnew_0)
  (define this (new NullInitUpdatePaintable% [jclass "NullInitUpdatePaintable"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (NullInitUpdatePaintable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullInitUpdatePaintable.jstatic_SINGLETON)))))



