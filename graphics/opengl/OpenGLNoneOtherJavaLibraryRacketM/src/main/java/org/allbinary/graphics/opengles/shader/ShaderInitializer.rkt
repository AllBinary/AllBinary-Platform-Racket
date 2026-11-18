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
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define ShaderInitializer%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (define/public (jm_init_3 _gl _shader _attributeArray)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))))
(define (ShaderInitializer.jclassValue) ShaderInitializer%)

(define ShaderInitializer.jcell_instance 'jnone)
(define (ShaderInitializer.jstatic_instance)
  (when (eq? ShaderInitializer.jcell_instance 'jnone) (set! ShaderInitializer.jcell_instance (ShaderInitializer.jnew_0)))
  ShaderInitializer.jcell_instance)
(define (ShaderInitializer.jsetstatic_instance value) (set! ShaderInitializer.jcell_instance value))

(define (ShaderInitializer.jnew_0)
  (define this (new ShaderInitializer% [jclass "ShaderInitializer"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
  this)

(define (ShaderInitializer.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ShaderInitializer.jstatic_instance)))))



