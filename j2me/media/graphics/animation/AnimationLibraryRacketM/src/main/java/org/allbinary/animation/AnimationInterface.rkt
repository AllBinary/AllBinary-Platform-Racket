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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/graphics/paint/LocationPaintableInterface.rkt")
(provide (all-defined-out))

(define AnimationInterface%
  (class JObject%
    (super-new)
    (define/public (jm_nextFrame_0)
      (raise (JR.newException "AbstractMethodError" "nextFrame")))
    (define/public (jm_paintThreedXYZ_4 _graphics _x _y _z)
      (raise (JR.newException "AbstractMethodError" "paintThreedXYZ")))))
(define (AnimationInterface.jclassValue) AnimationInterface%)

(define (AnimationInterface.jnew_0)
  (define this (new AnimationInterface% [jclass "AnimationInterface"]))
  this)



