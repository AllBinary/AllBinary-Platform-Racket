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
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OpenGLImageFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _image _bitmapFactory _textureFactory)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (OpenGLImageFactory.jclassValue) OpenGLImageFactory%)

(define OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY 'jnone)
(define (OpenGLImageFactory.jstatic_NULL_OPENGL_IMAGE_FACTORY)
  (when (eq? OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY 'jnone) (set! OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY (OpenGLImageFactory.jnew_0)))
  OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY)
(define (OpenGLImageFactory.jsetstatic_NULL_OPENGL_IMAGE_FACTORY value) (set! OpenGLImageFactory.jcell_NULL_OPENGL_IMAGE_FACTORY value))

(define (OpenGLImageFactory.jnew_0)
  (define this (new OpenGLImageFactory% [jclass "OpenGLImageFactory"]))
  this)



