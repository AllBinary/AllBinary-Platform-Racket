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
  "./CollidableNeverCollideBehavior.rkt")
(lazy-require ["./CollisionTypeFactory.rkt" (CollisionTypeFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CollidableAlwaysPickupNeverCollideBehavior%
  (class CollidableNeverCollideBehavior%
    (super-new)
    (define/override (jm_getCollisionTypeWith_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_PICKUP (CollisionTypeFactory.jm_getInstance_0))))))))
(define (CollidableAlwaysPickupNeverCollideBehavior.jclassValue) CollidableAlwaysPickupNeverCollideBehavior%)

(define (CollidableAlwaysPickupNeverCollideBehavior.jnew_0)
  (define this (new CollidableAlwaysPickupNeverCollideBehavior% [jclass "CollidableAlwaysPickupNeverCollideBehavior"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



