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
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CollisionHelper%
  (class JObject%
    (super-new)
    (field [f_sourceLayerInterface JR.null])
    (define/public (jm_isCollidable_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/public (jm_getOwnerLayerInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_sourceLayerInterface this)))))
    (define/public (jm_setOwnerLayerInterface_1 _sourceLayerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_sourceLayerInterface this _sourceLayerInterface))))))
(define (CollisionHelper.jclassValue) CollisionHelper%)

(define (CollisionHelper.jnew_1 _sourceLayerInterface)
  (define this (new CollisionHelper% [jclass "CollisionHelper"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_sourceLayerInterface this _sourceLayerInterface)))
  this)



