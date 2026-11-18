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
;; package org.allbinary.game.layer.pickup

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./IconLayer.rkt" (IconLayer.jnew_3)])
(provide (all-defined-out))

(define IconLayerFactory%
  (class JObject%
    (super-new)))
(define (IconLayerFactory.jclassValue) IconLayerFactory%)

(define (IconLayerFactory.jnew_0)
  (define this (new IconLayerFactory% [jclass "IconLayerFactory"]))
  this)

(define (IconLayerFactory.jm_getInstance_3 _animationInterface _width _height)
    (let ()
      (let/ec jreturn
        (jreturn (IconLayer.jnew_3 _animationInterface _width _height)))))



