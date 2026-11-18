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
;; package org.allbinary.game.part

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/AnimationInterfaceCompositeInterface.rkt"
  "../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(provide (all-defined-out))

(define PartInterface%
  (class JObject%
    (super-new)))
(define (PartInterface.jclassValue) PartInterface%)

(define (PartInterface.jnew_0)
  (define this (new PartInterface% [jclass "PartInterface"]))
  this)



