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
  "./CollidableBaseBehavior.rkt")
(provide (all-defined-out))

(define CollidableNeverCollideBehavior%
  (class CollidableBaseBehavior%
    (super-new)
    (define/override (jm_isCollision_2 _ownerLayer _allbinaryCollidableLayer)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/override (jm_collide_2 _ownerLayer _allbinaryCollidableLayer)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_collideInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_isCollisionInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (CollidableNeverCollideBehavior.jclassValue) CollidableNeverCollideBehavior%)

(define (CollidableNeverCollideBehavior.jnew_1 _isCollidable)
  (define this (new CollidableNeverCollideBehavior% [jclass "CollidableNeverCollideBehavior"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



