#lang racket/base
;; Generated Code Do Not Modify
;; package org.eclipse.swt.graphics

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define Resource%
  (class JObject%
    (super-new)
    (define/public (jm_dispose_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isDisposed_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (Resource.jclassValue) Resource%)

(define (Resource.jnew_0)
  (define this (new Resource% [jclass "Resource"]))
  this)



