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
(lazy-require ["../../../../../org/allbinary/graphics/opengles/renderer/RendererStrings.rkt" (RendererStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define ShaderUpdater%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_rendererStrings JR.null])
    (define/public (jm_onSurfaceCreated_2 _gl _eglConfig)
    (let ()
      (let/ec jreturn (void))))))
(define (ShaderUpdater.jclassValue) ShaderUpdater%)

(define ShaderUpdater.jcell_instance 'jnone)
(define (ShaderUpdater.jstatic_instance)
  (when (eq? ShaderUpdater.jcell_instance 'jnone) (set! ShaderUpdater.jcell_instance (ShaderUpdater.jnew_0)))
  ShaderUpdater.jcell_instance)
(define (ShaderUpdater.jsetstatic_instance value) (set! ShaderUpdater.jcell_instance value))

(define (ShaderUpdater.jnew_0)
  (define this (new ShaderUpdater% [jclass "ShaderUpdater"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_rendererStrings this (RendererStrings.jm_getInstance_0))
  this)

(define (ShaderUpdater.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ShaderUpdater.jstatic_instance)))))



