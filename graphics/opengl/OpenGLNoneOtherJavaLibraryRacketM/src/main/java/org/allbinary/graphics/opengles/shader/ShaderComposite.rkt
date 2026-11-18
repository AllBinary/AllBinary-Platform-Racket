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
(lazy-require ["../../../../../org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.rkt" (NullOpenGLProcessorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./NullOpenGLTextureProcessor.rkt" (NullOpenGLTextureProcessor.jm_getInstance_0)])
(provide (all-defined-out))

(define ShaderComposite%
  (class JObject%
    (super-new)
    (field [f_disableProgramShaderOpenGLProcessor JR.null])
    (field [f_requiresOpenGLVersion JR.null])
    (field [f_shaderArray JR.null])
    (field [f_shaderInitializer JR.null])
    (field [f_compositeShaderUpdater JR.null])
    (field [f_modelViewProjection JR.null])
    (field [f_colorOpenGLProcessor JR.null])
    (field [f_vertexOpenGLProcessor JR.null])
    (field [f_useProgramShaderOpenGLProcessor JR.null])
    (field [f_shaderMatrixOpenGLProcessor JR.null])
    (field [f_colorEnableVertexAttribArrayOpenGLProcessor JR.null])
    (field [f_normalEnableVertexAttribArrayOpenGLProcessor JR.null])
    (field [f_vertexEnableVertexAttribArrayOpenGLProcessor JR.null])
    (field [f_textureEnableVertexAttribArrayOpenGLProcessor JR.null])
    (field [f_colorDisableVertexAttribArrayOpenGLProcessor JR.null])
    (field [f_normalDisableVertexAttribArrayOpenGLProcessor JR.null])
    (field [f_vertexDisableVertexAttribArrayOpenGLProcessor JR.null])
    (field [f_textureDisableVertexAttribArrayOpenGLProcessor JR.null])
    (field [f_uniformLightPositionOpenGLProcessor JR.null])
    (field [f_uniformLightColorOpenGLProcessor JR.null])
    (field [f_uniformCameraPositionOpenGLProcessor JR.null])
    (field [f_uniformTextureUnitOpenGLProcessor JR.null])
    (field [f_programHandle 0])
    (define/public (jm_init_1 _gl)
    (let ()
      (let/ec jreturn
        (set-field! f_programHandle this (send (get-field f_shaderInitializer this) jm_init_3 _gl (get-field f_shaderArray this) (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0))))))))
(define (ShaderComposite.jclassValue) ShaderComposite%)

(define (ShaderComposite.jnew_8 _requiresOpenGLVersion _shaderArray _compositeShaderUpdater _shaderInitializer _modelViewProjection _colorOpenGLProcessor _vertexOpenGLProcessor _disableProgramShaderOpenGLProcessor)
  (define this (new ShaderComposite% [jclass "ShaderComposite"]))
    
    
    
    
    
    
    
    
    (set-field! f_useProgramShaderOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_shaderMatrixOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_colorEnableVertexAttribArrayOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_normalEnableVertexAttribArrayOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_vertexEnableVertexAttribArrayOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_textureEnableVertexAttribArrayOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_colorDisableVertexAttribArrayOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_normalDisableVertexAttribArrayOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_vertexDisableVertexAttribArrayOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_textureDisableVertexAttribArrayOpenGLProcessor this (NullOpenGLProcessorFactory.jm_getInstance_0))
    (set-field! f_uniformLightPositionOpenGLProcessor this (NullOpenGLTextureProcessor.jm_getInstance_0))
    (set-field! f_uniformLightColorOpenGLProcessor this (NullOpenGLTextureProcessor.jm_getInstance_0))
    (set-field! f_uniformCameraPositionOpenGLProcessor this (NullOpenGLTextureProcessor.jm_getInstance_0))
    (set-field! f_uniformTextureUnitOpenGLProcessor this (NullOpenGLTextureProcessor.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (set-field! f_requiresOpenGLVersion this _requiresOpenGLVersion)
        (set-field! f_shaderArray this _shaderArray)
        (set-field! f_shaderInitializer this _shaderInitializer)
        (set-field! f_compositeShaderUpdater this _compositeShaderUpdater)
        (set-field! f_modelViewProjection this _modelViewProjection)
        (set-field! f_colorOpenGLProcessor this _colorOpenGLProcessor)
        (set-field! f_vertexOpenGLProcessor this _vertexOpenGLProcessor)
        (set-field! f_disableProgramShaderOpenGLProcessor this _disableProgramShaderOpenGLProcessor)))
  this)



