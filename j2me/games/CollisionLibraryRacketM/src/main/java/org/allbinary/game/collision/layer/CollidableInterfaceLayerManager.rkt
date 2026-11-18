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
;; package org.allbinary.game.collision.layer

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/LayerManager.rkt")
(lazy-require ["../../../../../org/allbinary/layer/LayerManagerNoDebug.rkt" (LayerManagerNoDebug.jm_getInstance_0)])
(provide (all-defined-out))

(define CollidableInterfaceLayerManager%
  (class LayerManager%
    (super-new)))
(define (CollidableInterfaceLayerManager.jclassValue) CollidableInterfaceLayerManager%)

(define (CollidableInterfaceLayerManager.jnew_0)
  (define this (new CollidableInterfaceLayerManager% [jclass "CollidableInterfaceLayerManager"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



