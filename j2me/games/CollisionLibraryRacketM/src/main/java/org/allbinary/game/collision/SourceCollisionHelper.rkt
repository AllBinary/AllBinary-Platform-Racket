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
;; package org.allbinary.game.collision

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CollisionHelper.rkt")
(provide (all-defined-out))

(define SourceCollisionHelper%
  (class CollisionHelper%
    (super-new)
    (define/override (jm_isCollidable_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (when (not (eq? (get-field f_sourceLayerInterface this) _layerInterface))
            (begin
            (jreturn #t)))
        (jreturn #f))))))
(define (SourceCollisionHelper.jclassValue) SourceCollisionHelper%)

(define (SourceCollisionHelper.jnew_1 _layerInterface)
  (define this (new SourceCollisionHelper% [jclass "SourceCollisionHelper"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



