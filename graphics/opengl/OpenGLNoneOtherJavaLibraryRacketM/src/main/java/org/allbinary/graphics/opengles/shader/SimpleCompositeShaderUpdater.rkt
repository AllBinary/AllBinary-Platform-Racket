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
;; package org.allbinary.graphics.opengles.shader

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./CompositeShaderUpdater.rkt")
(provide (all-defined-out))

(define SimpleCompositeShaderUpdater%
  (class CompositeShaderUpdater%
    (super-new)))
(define (SimpleCompositeShaderUpdater.jclassValue) SimpleCompositeShaderUpdater%)

(define (SimpleCompositeShaderUpdater.jnew_4 _uniformBlockArray _uniformArray _attributeArray _attributeHandleArray)
  (define this (new SimpleCompositeShaderUpdater% [jclass "SimpleCompositeShaderUpdater"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



