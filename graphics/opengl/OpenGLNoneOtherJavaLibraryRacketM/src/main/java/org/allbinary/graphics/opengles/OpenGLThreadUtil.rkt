#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OpenGLThreadUtil%
  (class JObject%
    (super-new)
    (define/public (jm_set_1 _glSurfaceView)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onPause_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onResume_0)
    (let ()
      (let/ec jreturn (void))))))
(define (OpenGLThreadUtil.jclassValue) OpenGLThreadUtil%)

(define OpenGLThreadUtil.jcell_instance 'jnone)
(define (OpenGLThreadUtil.jstatic_instance)
  (when (eq? OpenGLThreadUtil.jcell_instance 'jnone) (set! OpenGLThreadUtil.jcell_instance (OpenGLThreadUtil.jnew_0)))
  OpenGLThreadUtil.jcell_instance)
(define (OpenGLThreadUtil.jsetstatic_instance value) (set! OpenGLThreadUtil.jcell_instance value))

(define (OpenGLThreadUtil.jnew_0)
  (define this (new OpenGLThreadUtil% [jclass "OpenGLThreadUtil"]))
  this)

(define (OpenGLThreadUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLThreadUtil.jstatic_instance)))))



