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
;; package org.allbinary.layer

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./Layer.rkt")
(provide (all-defined-out))

(define NullLayer%
  (class Layer%
    (super-new)
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (NullLayer.jclassValue) NullLayer%)

(define NullLayer.jcell_instance 'jnone)
(define (NullLayer.jstatic_instance)
  (when (eq? NullLayer.jcell_instance 'jnone) (set! NullLayer.jcell_instance (NullLayer.jnew_0)))
  NullLayer.jcell_instance)
(define (NullLayer.jsetstatic_instance value) (set! NullLayer.jcell_instance value))

(define (NullLayer.jnew_0)
  (define this (new NullLayer% [jclass "NullLayer"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (NullLayer.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullLayer.jstatic_instance)))))



