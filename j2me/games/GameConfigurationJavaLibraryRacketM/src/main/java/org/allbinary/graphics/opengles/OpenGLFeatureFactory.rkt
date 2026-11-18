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
(lazy-require ["./OpenGLFeature.rkt" (OpenGLFeature.jnew_1)])
(provide (all-defined-out))

(define OpenGLFeatureFactory%
  (class JObject%
    (super-new)
    (field [f_OPENGL_OPTIONS JR.null])
    (field [f_OPENGL JR.null])
    (field [f_OPENGL_SURFACE_VIEW JR.null])
    (field [f_OPENGL_2D JR.null])
    (field [f_OPENGL_3D JR.null])
    (field [f_OPENGL_2D_AND_3D JR.null])
    (field [f_OPENGL_AUTO_SELECT JR.null])
    (field [f_OPENGL_MINIMUM JR.null])
    (field [f_OPENGL_AS_GAME_THREAD JR.null])
    (field [f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS JR.null])
    (field [f_IMAGE_COLOR_DEPTH_4444 JR.null])
    (field [f_IMAGE_COLOR_DEPTH_8888 JR.null])
    (field [f_IMAGE_COLOR_DEPTH_565 JR.null])
    (field [f_OPENGL_COLOR_DEPTH_4444 JR.null])
    (field [f_OPENGL_COLOR_DEPTH_8888 JR.null])
    (field [f_OPENGL_COLOR_DEPTH_565 JR.null])
    (field [f_OPENGL_DRAW_TEXTURE JR.null])
    (field [f_OPENGL_VERTEX_BUFFER_OBJECT JR.null])
    (field [f_OPENGL_SIMPLE_OBJECT3D_PROCESSOR JR.null])
    (field [f_OPENGL_COMPLEX_OBJECT3D_PROCESSOR JR.null])
    (field [f_OPENGL_SIMPLE_TEXTURE_PROCESSOR JR.null])
    (field [f_OPENGL_COMPLEX_TEXTURE_PROCESSOR JR.null])))
(define (OpenGLFeatureFactory.jclassValue) OpenGLFeatureFactory%)

(define OpenGLFeatureFactory.jcell_instance 'jnone)
(define (OpenGLFeatureFactory.jstatic_instance)
  (when (eq? OpenGLFeatureFactory.jcell_instance 'jnone) (set! OpenGLFeatureFactory.jcell_instance (OpenGLFeatureFactory.jnew_0)))
  OpenGLFeatureFactory.jcell_instance)
(define (OpenGLFeatureFactory.jsetstatic_instance value) (set! OpenGLFeatureFactory.jcell_instance value))

(define (OpenGLFeatureFactory.jnew_0)
  (define this (new OpenGLFeatureFactory% [jclass "OpenGLFeatureFactory"]))
    (set-field! f_OPENGL_OPTIONS this (OpenGLFeature.jnew_1 "OpenGL Options"))
    (set-field! f_OPENGL this (OpenGLFeature.jnew_1 "OpenGL"))
    (set-field! f_OPENGL_SURFACE_VIEW this (OpenGLFeature.jnew_1 "GLSurfaceView"))
    (set-field! f_OPENGL_2D this (OpenGLFeature.jnew_1 "OpenGL 2D"))
    (set-field! f_OPENGL_3D this (OpenGLFeature.jnew_1 "OpenGL 3D"))
    (set-field! f_OPENGL_2D_AND_3D this (OpenGLFeature.jnew_1 "OpenGL 2D/3D"))
    (set-field! f_OPENGL_AUTO_SELECT this (OpenGLFeature.jnew_1 "Auto Select"))
    (set-field! f_OPENGL_MINIMUM this (OpenGLFeature.jnew_1 "Minimum"))
    (set-field! f_OPENGL_AS_GAME_THREAD this (OpenGLFeature.jnew_1 "As game thread"))
    (set-field! f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS this (OpenGLFeature.jnew_1 "As different threads"))
    (set-field! f_IMAGE_COLOR_DEPTH_4444 this (OpenGLFeature.jnew_1 "4444"))
    (set-field! f_IMAGE_COLOR_DEPTH_8888 this (OpenGLFeature.jnew_1 "8888"))
    (set-field! f_IMAGE_COLOR_DEPTH_565 this (OpenGLFeature.jnew_1 "565"))
    (set-field! f_OPENGL_COLOR_DEPTH_4444 this (OpenGLFeature.jnew_1 "4444"))
    (set-field! f_OPENGL_COLOR_DEPTH_8888 this (OpenGLFeature.jnew_1 "8888"))
    (set-field! f_OPENGL_COLOR_DEPTH_565 this (OpenGLFeature.jnew_1 "565"))
    (set-field! f_OPENGL_DRAW_TEXTURE this (OpenGLFeature.jnew_1 "GL_OES_draw_texture"))
    (set-field! f_OPENGL_VERTEX_BUFFER_OBJECT this (OpenGLFeature.jnew_1 "vertex_buffer_object"))
    (set-field! f_OPENGL_SIMPLE_OBJECT3D_PROCESSOR this (OpenGLFeature.jnew_1 "Simple Object3d Processor"))
    (set-field! f_OPENGL_COMPLEX_OBJECT3D_PROCESSOR this (OpenGLFeature.jnew_1 "Complex Object3d Processor"))
    (set-field! f_OPENGL_SIMPLE_TEXTURE_PROCESSOR this (OpenGLFeature.jnew_1 "Simple Texture Processor"))
    (set-field! f_OPENGL_COMPLEX_TEXTURE_PROCESSOR this (OpenGLFeature.jnew_1 "Complex Texture Processor"))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OpenGLFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLFeatureFactory.jstatic_instance)))))



