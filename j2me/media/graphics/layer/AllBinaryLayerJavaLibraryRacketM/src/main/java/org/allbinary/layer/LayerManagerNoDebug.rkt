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
  "./LayerManagerLoggingBase.rkt")
(provide (all-defined-out))

(define LayerManagerNoDebug%
  (class LayerManagerLoggingBase%
    (super-new)))
(define (LayerManagerNoDebug.jclassValue) LayerManagerNoDebug%)

(define LayerManagerNoDebug.jcell_instance 'jnone)
(define (LayerManagerNoDebug.jstatic_instance)
  (when (eq? LayerManagerNoDebug.jcell_instance 'jnone) (set! LayerManagerNoDebug.jcell_instance (LayerManagerNoDebug.jnew_0)))
  LayerManagerNoDebug.jcell_instance)
(define (LayerManagerNoDebug.jsetstatic_instance value) (set! LayerManagerNoDebug.jcell_instance value))

(define (LayerManagerNoDebug.jnew_0)
  (define this (new LayerManagerNoDebug% [jclass "LayerManagerNoDebug"]))
  this)

(define (LayerManagerNoDebug.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LayerManagerNoDebug.jstatic_instance)))))



