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
  "./ShaderComposite.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.rkt" (NullOpenGLProcessorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PlatformShaderComposite%
  (class ShaderComposite%
    (super-new)))
(define (PlatformShaderComposite.jclassValue) PlatformShaderComposite%)

(define (PlatformShaderComposite.jnew_7 _requiresOpenGLVersion _shaderArray _compositeShaderUpdater _shaderInitializer _modelViewProjection _colorOpenGLProcessor _vertexOpenGLProcessor)
  (define this (new PlatformShaderComposite% [jclass "PlatformShaderComposite"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



