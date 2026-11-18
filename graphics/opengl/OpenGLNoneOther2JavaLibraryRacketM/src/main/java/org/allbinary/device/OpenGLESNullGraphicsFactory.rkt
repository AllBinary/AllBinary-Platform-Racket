#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.device

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./OpenGLESGraphics.rkt" (OpenGLESGraphics.jnew_0)])
(provide (all-defined-out))

(define OpenGLESNullGraphicsFactory%
  (class JObject%
    (super-new)))
(define (OpenGLESNullGraphicsFactory.jclassValue) OpenGLESNullGraphicsFactory%)

(define OpenGLESNullGraphicsFactory.jcell_instance 'jnone)
(define (OpenGLESNullGraphicsFactory.jstatic_instance)
  (when (eq? OpenGLESNullGraphicsFactory.jcell_instance 'jnone) (set! OpenGLESNullGraphicsFactory.jcell_instance (OpenGLESGraphics.jnew_0)))
  OpenGLESNullGraphicsFactory.jcell_instance)
(define (OpenGLESNullGraphicsFactory.jsetstatic_instance value) (set! OpenGLESNullGraphicsFactory.jcell_instance value))

(define (OpenGLESNullGraphicsFactory.jnew_0)
  (define this (new OpenGLESNullGraphicsFactory% [jclass "OpenGLESNullGraphicsFactory"]))
  this)

(define (OpenGLESNullGraphicsFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLESNullGraphicsFactory.jstatic_instance)))))



