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

(define ShaderManager%
  (class JObject%
    (super-new)
    (field [f_LOAD_SHADER JR.null])
    (field [f_commonStrings JR.null])
    (field [f_GL_VERTEX_SHADER 0])
    (field [f_GL_FRAGMENT_SHADER 0])
    (define/public (jm_load_4 _gl _resource _shaderAsStringArray _shaderType)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/public (jm_loadShader_4 _gl _resource _stringList _shaderType)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))))
(define (ShaderManager.jclassValue) ShaderManager%)

(define ShaderManager.jcell_instance 'jnone)
(define (ShaderManager.jstatic_instance)
  (when (eq? ShaderManager.jcell_instance 'jnone) (set! ShaderManager.jcell_instance (ShaderManager.jnew_2 (JR.i32 (- 1)) (JR.i32 (- 1)))))
  ShaderManager.jcell_instance)
(define (ShaderManager.jsetstatic_instance value) (set! ShaderManager.jcell_instance value))

(define (ShaderManager.jnew_2 _GL_VERTEX_SHADER _GL_FRAGMENT_SHADER)
  (define this (new ShaderManager% [jclass "ShaderManager"]))
    (set-field! f_LOAD_SHADER this "loadShader")
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_GL_VERTEX_SHADER this _GL_VERTEX_SHADER)
        (set-field! f_GL_FRAGMENT_SHADER this _GL_FRAGMENT_SHADER)))
  this)

(define (ShaderManager.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ShaderManager.jstatic_instance)))))



