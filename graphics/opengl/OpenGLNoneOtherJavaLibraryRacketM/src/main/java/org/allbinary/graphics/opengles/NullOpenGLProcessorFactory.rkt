#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./OpenGLProcessor.rkt" (OpenGLProcessor.jnew_0)])
(provide (all-defined-out))

(define NullOpenGLProcessorFactory%
  (class JObject%
    (super-new)))
(define (NullOpenGLProcessorFactory.jclassValue) NullOpenGLProcessorFactory%)

(define NullOpenGLProcessorFactory.jcell_instance 'jnone)
(define (NullOpenGLProcessorFactory.jstatic_instance)
  (when (eq? NullOpenGLProcessorFactory.jcell_instance 'jnone) (set! NullOpenGLProcessorFactory.jcell_instance (OpenGLProcessor.jnew_0)))
  NullOpenGLProcessorFactory.jcell_instance)
(define (NullOpenGLProcessorFactory.jsetstatic_instance value) (set! NullOpenGLProcessorFactory.jcell_instance value))

(define (NullOpenGLProcessorFactory.jnew_0)
  (define this (new NullOpenGLProcessorFactory% [jclass "NullOpenGLProcessorFactory"]))
  this)

(define (NullOpenGLProcessorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullOpenGLProcessorFactory.jstatic_instance)))))



