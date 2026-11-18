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
(lazy-require ["./CollidableNeverCollideBehavior.rkt" (CollidableNeverCollideBehavior.jnew_1)])
(provide (all-defined-out))

(define CollidableNeverCollideBehaviorFactory%
  (class CollidableBaseBehaviorFactory%
    (super-new)
    (field [f_instance JR.null])
    (define/override (jm_createBehavior_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_instance this)))))))
(define (CollidableNeverCollideBehaviorFactory.jclassValue) CollidableNeverCollideBehaviorFactory%)

(define CollidableNeverCollideBehaviorFactory.jcell_instanceC 'jnone)
(define (CollidableNeverCollideBehaviorFactory.jstatic_instanceC)
  (when (eq? CollidableNeverCollideBehaviorFactory.jcell_instanceC 'jnone) (set! CollidableNeverCollideBehaviorFactory.jcell_instanceC (CollidableNeverCollideBehaviorFactory.jnew_0)))
  CollidableNeverCollideBehaviorFactory.jcell_instanceC)
(define (CollidableNeverCollideBehaviorFactory.jsetstatic_instanceC value) (set! CollidableNeverCollideBehaviorFactory.jcell_instanceC value))

(define (CollidableNeverCollideBehaviorFactory.jnew_0)
  (define this (new CollidableNeverCollideBehaviorFactory% [jclass "CollidableNeverCollideBehaviorFactory"]))
    (set-field! f_instance this (CollidableNeverCollideBehavior.jnew_1 #f))
  this)

(define (CollidableNeverCollideBehaviorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CollidableNeverCollideBehaviorFactory.jstatic_instanceC)))))



