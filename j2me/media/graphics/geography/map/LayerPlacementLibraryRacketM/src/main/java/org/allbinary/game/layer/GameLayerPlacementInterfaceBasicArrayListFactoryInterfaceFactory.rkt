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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _level)
      (raise (JR.newException "AbstractMethodError" "getInstance")))
    (define/public (jm_size_0)
      (raise (JR.newException "AbstractMethodError" "size")))))
(define (GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.jclassValue) GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory%)

(define (GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.jnew_0)
  (define this (new GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory% [jclass "GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory"]))
  this)



