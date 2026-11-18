#lang racket/base
;; Generated Code Do Not Modify
;; package java.lang.annotation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define Annotation%
  (class JObject%
    (super-new)
    (define/public (jm_annotationType_0)
      (raise (JR.newException "AbstractMethodError" "annotationType")))))
(define (Annotation.jclassValue) Annotation%)

(define (Annotation.jnew_0)
  (define this (new Annotation% [jclass "Annotation"]))
  this)



