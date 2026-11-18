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
  "./LayerManager.rkt")
(lazy-require ["./LayerManagerNoDebug.rkt" (LayerManagerNoDebug.jm_getInstance_0)])
(provide (all-defined-out))

(define SingleLayerLayerManager%
  (class LayerManager%
    (super-new)))
(define (SingleLayerLayerManager.jclassValue) SingleLayerLayerManager%)

(define (SingleLayerLayerManager.jnew_0)
  (define this (new SingleLayerLayerManager% [jclass "SingleLayerLayerManager"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



