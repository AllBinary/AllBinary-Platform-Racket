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
;; package org.allbinary.image.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./OpenGLSurfaceChangedInterface.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE)])
(lazy-require ["../../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory.rkt" (PlatformBitmapBaseFactory.jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY)])
(lazy-require ["../../../../org/allbinary/platform/opengles/PlatformTextureBaseFactory.rkt" (PlatformTextureBaseFactory.jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./OpenGLESImageProperties.rkt" (OpenGLESImageProperties.jnew_0)])
(provide (all-defined-out))

;OpenGLESNullImageJ2MEJavaLibrary
(define OpenGLESImage%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (field [f_textureFactory JR.null])
    (field [f_openGLBitmap JR.null])
    (field [f_openGLESImageProperties JR.null])
    (define/public (jm_set_1 _gl)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_initTexture_1 _gl)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_drawRegion_9 _gl _viewHeight _x_src _y_src _width _height _x _y _z)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_draw_4 _gl _x _y _z)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLESImage.jstatic_TYPE)))))))
(define (OpenGLESImage.jclassValue) OpenGLESImage%)

(define OpenGLESImage.jcell_NULL_OPENGL_IMAGE 'jnone)
(define (OpenGLESImage.jstatic_NULL_OPENGL_IMAGE)
  (when (eq? OpenGLESImage.jcell_NULL_OPENGL_IMAGE 'jnone) (set! OpenGLESImage.jcell_NULL_OPENGL_IMAGE (OpenGLESImage.jnew_3 (NullImage.jstatic_NULL_IMAGE) (PlatformBitmapBaseFactory.jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY) (PlatformTextureBaseFactory.jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY))))
  OpenGLESImage.jcell_NULL_OPENGL_IMAGE)
(define (OpenGLESImage.jsetstatic_NULL_OPENGL_IMAGE value) (set! OpenGLESImage.jcell_NULL_OPENGL_IMAGE value))

(define OpenGLESImage.jcell_texture2dList 'jnone)
(define (OpenGLESImage.jstatic_texture2dList)
  (when (eq? OpenGLESImage.jcell_texture2dList 'jnone) (set! OpenGLESImage.jcell_texture2dList (BasicArrayListD.jnew_0)))
  OpenGLESImage.jcell_texture2dList)
(define (OpenGLESImage.jsetstatic_texture2dList value) (set! OpenGLESImage.jcell_texture2dList value))

(define OpenGLESImage.jcell_TYPE 'jnone)
(define (OpenGLESImage.jstatic_TYPE)
  (when (eq? OpenGLESImage.jcell_TYPE 'jnone) (set! OpenGLESImage.jcell_TYPE 4))
  OpenGLESImage.jcell_TYPE)
(define (OpenGLESImage.jsetstatic_TYPE value) (set! OpenGLESImage.jcell_TYPE value))

(define (OpenGLESImage.jnew_3 _image _bitmapFactory _textureFactory)
  (define this (new OpenGLESImage% [jclass "OpenGLESImage"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    (set-field! f_openGLESImageProperties this (OpenGLESImageProperties.jnew_0))
    (let ()
      (let/ec jreturn
        (set-field! f_openGLBitmap this (send _bitmapFactory jm_createBitmap_1 _image))
        (set-field! f_textureFactory this _textureFactory)))
  this)



