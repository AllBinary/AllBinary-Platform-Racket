#lang racket/base
;; Generated Code Do Not Modify
;; package javax.microedition.khronos.egl

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define EGLConfig%
  (class JObject%
    (super-new)))
(define (EGLConfig.jclassValue) EGLConfig%)

(define (EGLConfig.jnew_0)
  (define this (new EGLConfig% [jclass "EGLConfig"]))
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException"))))
  this)



