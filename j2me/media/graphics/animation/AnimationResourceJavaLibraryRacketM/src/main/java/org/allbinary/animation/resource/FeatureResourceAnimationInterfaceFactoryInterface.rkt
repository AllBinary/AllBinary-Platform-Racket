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
;; package org.allbinary.animation.resource

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/game/configuration/feature/GameFeatureControlledInterface.rkt"
  "../../../../org/allbinary/game/resource/RectangleResourceFactoryInterface.rkt"
  "./ResourceAnimationInterfaceFactoryInterface.rkt")
(provide (all-defined-out))

(define FeatureResourceAnimationInterfaceFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getHashtable_0)
      (raise (JR.newException "AbstractMethodError" "getHashtable")))))
(define (FeatureResourceAnimationInterfaceFactoryInterface.jclassValue) FeatureResourceAnimationInterfaceFactoryInterface%)

(define (FeatureResourceAnimationInterfaceFactoryInterface.jnew_0)
  (define this (new FeatureResourceAnimationInterfaceFactoryInterface% [jclass "FeatureResourceAnimationInterfaceFactoryInterface"]))
  this)



