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
  "./ShaderInitializer.rkt")
(provide (all-defined-out))

(define SimpleShaderInitializer%
  (class ShaderInitializer%
    (super-new)))
(define (SimpleShaderInitializer.jclassValue) SimpleShaderInitializer%)

(define SimpleShaderInitializer.jcell_instanceC 'jnone)
(define (SimpleShaderInitializer.jstatic_instanceC)
  (when (eq? SimpleShaderInitializer.jcell_instanceC 'jnone) (set! SimpleShaderInitializer.jcell_instanceC (SimpleShaderInitializer.jnew_0)))
  SimpleShaderInitializer.jcell_instanceC)
(define (SimpleShaderInitializer.jsetstatic_instanceC value) (set! SimpleShaderInitializer.jcell_instanceC value))

(define (SimpleShaderInitializer.jnew_0)
  (define this (new SimpleShaderInitializer% [jclass "SimpleShaderInitializer"]))
  this)

(define (SimpleShaderInitializer.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SimpleShaderInitializer.jstatic_instanceC)))))



