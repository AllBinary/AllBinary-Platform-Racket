#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Runnable.rkt")
(provide (all-defined-out))

(define OpenGLUtil%
  (class JObject%
    (super-new)
    (define/public (jm_addImage_1 _image)
    (let ()
      (let/ec jreturn
        (jreturn _image))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_addRunnable_1 _runnable)
    (let ()
      (let/ec jreturn (void))))))
(define (OpenGLUtil.jclassValue) OpenGLUtil%)

(define OpenGLUtil.jcell_instance 'jnone)
(define (OpenGLUtil.jstatic_instance)
  (when (eq? OpenGLUtil.jcell_instance 'jnone) (set! OpenGLUtil.jcell_instance (OpenGLUtil.jnew_0)))
  OpenGLUtil.jcell_instance)
(define (OpenGLUtil.jsetstatic_instance value) (set! OpenGLUtil.jcell_instance value))

(define (OpenGLUtil.jnew_0)
  (define this (new OpenGLUtil% [jclass "OpenGLUtil"]))
  this)

(define (OpenGLUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLUtil.jstatic_instance)))))



