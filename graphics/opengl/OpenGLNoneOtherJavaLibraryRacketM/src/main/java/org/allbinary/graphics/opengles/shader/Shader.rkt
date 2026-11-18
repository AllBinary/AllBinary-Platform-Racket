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
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define Shader%
  (class JObject%
    (super-new)
    (field [f_shaderName JR.null])
    (field [f_shaderStringList JR.null])
    (field [f_shaderAsString JR.null])
    (field [f_shaderHandle 0])))
(define (Shader.jclassValue) Shader%)

(define (Shader.jnew_0)
  (define this (new Shader% [jclass "Shader"]))
    (set-field! f_shaderName this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_shaderStringList this (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
    (set-field! f_shaderAsString this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    
  this)



