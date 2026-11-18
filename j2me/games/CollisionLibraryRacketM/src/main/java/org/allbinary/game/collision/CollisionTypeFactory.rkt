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
(lazy-require ["./CollisionType.rkt" (CollisionType.jnew_1)])
(provide (all-defined-out))

(define CollisionTypeFactory%
  (class JObject%
    (super-new)
    (field [f_NONE JR.null])
    (field [f_DAMAGE JR.null])
    (field [f_PICKUP JR.null])
    (field [f_COLLISION JR.null])))
(define (CollisionTypeFactory.jclassValue) CollisionTypeFactory%)

(define CollisionTypeFactory.jcell_SINGLETON 'jnone)
(define (CollisionTypeFactory.jstatic_SINGLETON)
  (when (eq? CollisionTypeFactory.jcell_SINGLETON 'jnone) (set! CollisionTypeFactory.jcell_SINGLETON (CollisionTypeFactory.jnew_0)))
  CollisionTypeFactory.jcell_SINGLETON)
(define (CollisionTypeFactory.jsetstatic_SINGLETON value) (set! CollisionTypeFactory.jcell_SINGLETON value))

(define (CollisionTypeFactory.jnew_0)
  (define this (new CollisionTypeFactory% [jclass "CollisionTypeFactory"]))
    (set-field! f_NONE this (CollisionType.jnew_1 "None"))
    (set-field! f_DAMAGE this (CollisionType.jnew_1 "Damage"))
    (set-field! f_PICKUP this (CollisionType.jnew_1 "Pickup"))
    (set-field! f_COLLISION this (CollisionType.jnew_1 "Collision"))
  this)

(define (CollisionTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CollisionTypeFactory.jstatic_SINGLETON)))))



