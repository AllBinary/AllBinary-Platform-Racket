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
  "./OpenGLObject3dProcessor.rkt")
(provide (all-defined-out))

(define UniformLightPositionOpenGLProcessor%
  (class OpenGLObject3dProcessor%
    (super-new)
    (define/override (jm_process_2 _gl _unused)
    (let ()
      (let/ec jreturn (void))))))
(define (UniformLightPositionOpenGLProcessor.jclassValue) UniformLightPositionOpenGLProcessor%)

(define (UniformLightPositionOpenGLProcessor.jnew_2 _shaderComposite _handleIndex)
  (define this (new UniformLightPositionOpenGLProcessor% [jclass "UniformLightPositionOpenGLProcessor"]))
    (let ()
      (let/ec jreturn (void)))
  this)



