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
;; package org.allbinary.game.init

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./GameInitializationInterfaceFactoryInterface.rkt")
(lazy-require ["./BaseGameInitialization.rkt" (BaseGameInitialization.jstatic_NULL_BASE_GAME_INITIALIZATION)])
(provide (all-defined-out))

(define BasicBuildGameInitializerFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BaseGameInitialization.jstatic_NULL_BASE_GAME_INITIALIZATION)))))))
(define (BasicBuildGameInitializerFactory.jclassValue) BasicBuildGameInitializerFactory%)

(define BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY 'jnone)
(define (BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY)
  (when (eq? BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY 'jnone) (set! BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY (BasicBuildGameInitializerFactory.jnew_0)))
  BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY)
(define (BasicBuildGameInitializerFactory.jsetstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY value) (set! BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY value))

(define (BasicBuildGameInitializerFactory.jnew_0)
  (define this (new BasicBuildGameInitializerFactory% [jclass "BasicBuildGameInitializerFactory"]))
  this)



