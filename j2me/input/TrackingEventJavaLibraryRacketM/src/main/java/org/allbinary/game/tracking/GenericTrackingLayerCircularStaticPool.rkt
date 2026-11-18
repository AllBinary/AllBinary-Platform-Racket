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
;; package org.allbinary.game.tracking

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/layer/AllBinaryLayerCircularPool.rkt")
(provide (all-defined-out))

(define GenericTrackingLayerCircularStaticPool%
  (class AllBinaryLayerCircularPool%
    (super-new)))
(define (GenericTrackingLayerCircularStaticPool.jclassValue) GenericTrackingLayerCircularStaticPool%)

(define GenericTrackingLayerCircularStaticPool.jcell_SINGLETON 'jnone)
(define (GenericTrackingLayerCircularStaticPool.jstatic_SINGLETON)
  (when (eq? GenericTrackingLayerCircularStaticPool.jcell_SINGLETON 'jnone) (set! GenericTrackingLayerCircularStaticPool.jcell_SINGLETON (GenericTrackingLayerCircularStaticPool.jnew_0)))
  GenericTrackingLayerCircularStaticPool.jcell_SINGLETON)
(define (GenericTrackingLayerCircularStaticPool.jsetstatic_SINGLETON value) (set! GenericTrackingLayerCircularStaticPool.jcell_SINGLETON value))

(define (GenericTrackingLayerCircularStaticPool.jnew_0)
  (define this (new GenericTrackingLayerCircularStaticPool% [jclass "GenericTrackingLayerCircularStaticPool"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GenericTrackingLayerCircularStaticPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GenericTrackingLayerCircularStaticPool.jstatic_SINGLETON)))))



