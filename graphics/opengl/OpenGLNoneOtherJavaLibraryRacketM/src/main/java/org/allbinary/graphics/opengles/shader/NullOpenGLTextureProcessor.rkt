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
  "../../../../../allbinary_java.rkt")
(lazy-require ["./OpenGLObject3dProcessor.rkt" (OpenGLObject3dProcessor.jnew_0)])
(provide (all-defined-out))

(define NullOpenGLTextureProcessor%
  (class JObject%
    (super-new)))
(define (NullOpenGLTextureProcessor.jclassValue) NullOpenGLTextureProcessor%)

(define NullOpenGLTextureProcessor.jcell_instance 'jnone)
(define (NullOpenGLTextureProcessor.jstatic_instance)
  (when (eq? NullOpenGLTextureProcessor.jcell_instance 'jnone) (set! NullOpenGLTextureProcessor.jcell_instance (OpenGLObject3dProcessor.jnew_0)))
  NullOpenGLTextureProcessor.jcell_instance)
(define (NullOpenGLTextureProcessor.jsetstatic_instance value) (set! NullOpenGLTextureProcessor.jcell_instance value))

(define (NullOpenGLTextureProcessor.jnew_0)
  (define this (new NullOpenGLTextureProcessor% [jclass "NullOpenGLTextureProcessor"]))
  this)

(define (NullOpenGLTextureProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullOpenGLTextureProcessor.jstatic_instance)))))



