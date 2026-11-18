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
  "./ShaderUpdater.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define CompositeShaderUpdater%
  (class ShaderUpdater%
    (super-new)
    (field [f_commonSeps JR.null])
    (define/public (jm_onSurfaceCreated_3 _gl _eglConfig _programHandle)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onSurfaceDestroyed_1 _gl)
    (let ()
      (let/ec jreturn (void))))))
(define (CompositeShaderUpdater.jclassValue) CompositeShaderUpdater%)

(define CompositeShaderUpdater.jcell_instanceC 'jnone)
(define (CompositeShaderUpdater.jstatic_instanceC)
  (when (eq? CompositeShaderUpdater.jcell_instanceC 'jnone) (set! CompositeShaderUpdater.jcell_instanceC (CompositeShaderUpdater.jnew_4 (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0) (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0) (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0) (get-field f_NULL_INT_ARRAY (NullUtil.jm_getInstance_0)))))
  CompositeShaderUpdater.jcell_instanceC)
(define (CompositeShaderUpdater.jsetstatic_instanceC value) (set! CompositeShaderUpdater.jcell_instanceC value))

(define (CompositeShaderUpdater.jnew_4 _uniformBlockArray _uniformArray _attributeArray _attributeHandleArray)
  (define this (new CompositeShaderUpdater% [jclass "CompositeShaderUpdater"]))
    (set-field! f_commonSeps this (CommonSeps.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (CompositeShaderUpdater.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CompositeShaderUpdater.jstatic_instanceC)))))



