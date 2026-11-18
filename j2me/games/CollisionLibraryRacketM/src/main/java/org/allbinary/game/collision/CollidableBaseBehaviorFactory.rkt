#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
  "./CollidableBaseBehaviorFactoryInterface.rkt")
(provide (all-defined-out))

(define CollidableBaseBehaviorFactory%
  (class JObject%
    (super-new)
    (define/public (jm_createBehavior_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (CollidableBaseBehaviorFactory.jclassValue) CollidableBaseBehaviorFactory%)

(define (CollidableBaseBehaviorFactory.jnew_0)
  (define this (new CollidableBaseBehaviorFactory% [jclass "CollidableBaseBehaviorFactory"]))
  this)



