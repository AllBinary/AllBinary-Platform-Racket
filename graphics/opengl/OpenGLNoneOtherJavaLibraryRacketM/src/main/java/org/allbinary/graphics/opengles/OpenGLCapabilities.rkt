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
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define OpenGLCapabilities%
  (class JObject%
    (super-new)
    (field [f_CUSTOM_GL_SURFACE_VIEW #f])
    (field [f_VERSION_1_0 JR.null])
    (field [f_VERSION_1_1 JR.null])
    (field [f_VERSION_2_0 JR.null])
    (field [f_VERSION_3_0 JR.null])
    (field [f_VERSION_3_1 JR.null])
    (field [f_VERSION_3_2 JR.null])
    (field [f_VERSION_HIGHER_THAN_EXISTS JR.null])
    (field [f_glVersion JR.null])
    (field [f_shaderVersion 0])
    (field [f_glInstanceVersion JR.null])
    (field [f_maxTextureSize 0])
    (define/public (jm_isInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/public (jm_initCapabilities_1 _gl)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isGlExtensionDrawTexture_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_getGlVersion_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_glVersion this)))))
    (define/public (jm_isVertexBufferObjectSupport_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_isTextureSizeValid_1 _widthAndHeight)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))
(define (OpenGLCapabilities.jclassValue) OpenGLCapabilities%)

(define OpenGLCapabilities.jcell_instance 'jnone)
(define (OpenGLCapabilities.jstatic_instance)
  (when (eq? OpenGLCapabilities.jcell_instance 'jnone) (set! OpenGLCapabilities.jcell_instance (OpenGLCapabilities.jnew_0)))
  OpenGLCapabilities.jcell_instance)
(define (OpenGLCapabilities.jsetstatic_instance value) (set! OpenGLCapabilities.jcell_instance value))

(define (OpenGLCapabilities.jnew_0)
  (define this (new OpenGLCapabilities% [jclass "OpenGLCapabilities"]))
    (set-field! f_CUSTOM_GL_SURFACE_VIEW this #t)
    (set-field! f_VERSION_1_0 this "1.0")
    (set-field! f_VERSION_1_1 this "1.1")
    (set-field! f_VERSION_2_0 this "2.0")
    (set-field! f_VERSION_3_0 this "3.0")
    (set-field! f_VERSION_3_1 this "3.1")
    (set-field! f_VERSION_3_2 this "3.2")
    (set-field! f_VERSION_HIGHER_THAN_EXISTS this "999.999")
    (set-field! f_glVersion this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_shaderVersion this 0)
    (set-field! f_glInstanceVersion this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_maxTextureSize this 64)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OpenGLCapabilities.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLCapabilities.jstatic_instance)))))



