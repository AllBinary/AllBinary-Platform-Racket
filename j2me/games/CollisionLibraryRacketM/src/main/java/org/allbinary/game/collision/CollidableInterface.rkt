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
  "../../../../org/allbinary/layer/NamedInterface.rkt")
(provide (all-defined-out))

(define CollidableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_isCollidable_1 _ownerLayer)
      (raise (JR.newException "AbstractMethodError" "isCollidable")))
    (define/public (jm_isCollision_2 _ownerLayer _collidableInterfaceCompositeInterface)
      (raise (JR.newException "AbstractMethodError" "isCollision")))
    (define/public (jm_collide_2 _ownerLayer _collidableInterfaceCompositeInterface)
      (raise (JR.newException "AbstractMethodError" "collide")))
    (define/public (jm_getCollisionTypeWith_1 _layerInterface)
      (raise (JR.newException "AbstractMethodError" "getCollisionTypeWith")))))
(define (CollidableInterface.jclassValue) CollidableInterface%)

(define (CollidableInterface.jnew_0)
  (define this (new CollidableInterface% [jclass "CollidableInterface"]))
  this)



