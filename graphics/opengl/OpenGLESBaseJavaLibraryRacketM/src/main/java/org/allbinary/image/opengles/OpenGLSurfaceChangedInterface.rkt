#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.image.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OpenGLSurfaceChangedInterface%
  (class JObject%
    (super-new)
    (define/public (jm_set_1 _gl)
      (raise (JR.newException "AbstractMethodError" "set")))))
(define (OpenGLSurfaceChangedInterface.jclassValue) OpenGLSurfaceChangedInterface%)

(define (OpenGLSurfaceChangedInterface.jnew_0)
  (define this (new OpenGLSurfaceChangedInterface% [jclass "OpenGLSurfaceChangedInterface"]))
  this)



