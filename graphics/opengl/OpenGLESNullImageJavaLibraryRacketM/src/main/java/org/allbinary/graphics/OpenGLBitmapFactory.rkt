#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/io/IOException.rkt"
  "../../../java/io/InputStream.rkt"
  "../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./OpenGLBitmapConfig.rkt" (OpenGLBitmapConfig.jnew_1)])
(lazy-require ["./OpenGLBitmap.rkt" (OpenGLBitmap.jnew_1)])
(provide (all-defined-out))

(define OpenGLBitmapFactory%
  (class PlatformBitmapBaseFactory%
    (super-new)
    (field [f_ARGB_8888 JR.null])
    (define/public (jm_createBitmap_3 _width _height _config)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLBitmap.jnew_1 (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))))))
    (define/public (jm_decodeStream_1 _inputStream)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLBitmap.jnew_1 (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))))))
    (define/override (jm_createBitmap_1 _image)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLBitmap.jnew_1 (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))))))))
(define (OpenGLBitmapFactory.jclassValue) OpenGLBitmapFactory%)

(define OpenGLBitmapFactory.jcell_instance 'jnone)
(define (OpenGLBitmapFactory.jstatic_instance)
  (when (eq? OpenGLBitmapFactory.jcell_instance 'jnone) (set! OpenGLBitmapFactory.jcell_instance (OpenGLBitmapFactory.jnew_0)))
  OpenGLBitmapFactory.jcell_instance)
(define (OpenGLBitmapFactory.jsetstatic_instance value) (set! OpenGLBitmapFactory.jcell_instance value))

(define (OpenGLBitmapFactory.jnew_0)
  (define this (new OpenGLBitmapFactory% [jclass "OpenGLBitmapFactory"]))
    (set-field! f_ARGB_8888 this (OpenGLBitmapConfig.jnew_1 (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  this)

(define (OpenGLBitmapFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLBitmapFactory.jstatic_instance)))))



