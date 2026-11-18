#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.device

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./OpenGLESNullGraphicsFactory.rkt" (OpenGLESNullGraphicsFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define OpenGLESGraphicsFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getOpenGLESGraphicsInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLESNullGraphicsFactory.jm_getInstance_0)))))))
(define (OpenGLESGraphicsFactory.jclassValue) OpenGLESGraphicsFactory%)

(define (OpenGLESGraphicsFactory.jnew_0)
  (define this (new OpenGLESGraphicsFactory% [jclass "OpenGLESGraphicsFactory"]))
  this)



