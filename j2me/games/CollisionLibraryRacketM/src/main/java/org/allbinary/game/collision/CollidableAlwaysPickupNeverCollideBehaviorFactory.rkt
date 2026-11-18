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
  "./CollidableBaseBehaviorFactory.rkt")
(lazy-require ["./CollidableAlwaysPickupNeverCollideBehavior.rkt" (CollidableAlwaysPickupNeverCollideBehavior.jnew_0)])
(provide (all-defined-out))

(define CollidableAlwaysPickupNeverCollideBehaviorFactory%
  (class CollidableBaseBehaviorFactory%
    (super-new)
    (field [f_instance JR.null])
    (define/override (jm_createBehavior_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_instance this)))))))
(define (CollidableAlwaysPickupNeverCollideBehaviorFactory.jclassValue) CollidableAlwaysPickupNeverCollideBehaviorFactory%)

(define CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC 'jnone)
(define (CollidableAlwaysPickupNeverCollideBehaviorFactory.jstatic_instanceC)
  (when (eq? CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC 'jnone) (set! CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC (CollidableAlwaysPickupNeverCollideBehaviorFactory.jnew_0)))
  CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC)
(define (CollidableAlwaysPickupNeverCollideBehaviorFactory.jsetstatic_instanceC value) (set! CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC value))

(define (CollidableAlwaysPickupNeverCollideBehaviorFactory.jnew_0)
  (define this (new CollidableAlwaysPickupNeverCollideBehaviorFactory% [jclass "CollidableAlwaysPickupNeverCollideBehaviorFactory"]))
    (set-field! f_instance this (CollidableAlwaysPickupNeverCollideBehavior.jnew_0))
  this)

(define (CollidableAlwaysPickupNeverCollideBehaviorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CollidableAlwaysPickupNeverCollideBehaviorFactory.jstatic_instanceC)))))



