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
(lazy-require ["./ShaderManager.rkt" (ShaderManager.jm_getInstance_0)])
(provide (all-defined-out))

(define ShaderManagerFactory%
  (class JObject%
    (super-new)
    (define/public (jm_create_0)
    (let ()
      (let/ec jreturn
        (jreturn (ShaderManager.jm_getInstance_0)))))))
(define (ShaderManagerFactory.jclassValue) ShaderManagerFactory%)

(define ShaderManagerFactory.jcell_instance 'jnone)
(define (ShaderManagerFactory.jstatic_instance)
  (when (eq? ShaderManagerFactory.jcell_instance 'jnone) (set! ShaderManagerFactory.jcell_instance (ShaderManagerFactory.jnew_0)))
  ShaderManagerFactory.jcell_instance)
(define (ShaderManagerFactory.jsetstatic_instance value) (set! ShaderManagerFactory.jcell_instance value))

(define (ShaderManagerFactory.jnew_0)
  (define this (new ShaderManagerFactory% [jclass "ShaderManagerFactory"]))
  this)

(define (ShaderManagerFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ShaderManagerFactory.jstatic_instance)))))



