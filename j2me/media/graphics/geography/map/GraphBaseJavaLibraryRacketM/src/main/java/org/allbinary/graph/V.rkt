#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graph

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define V%
  (class JObject%
    (super-new)
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (V.jclassValue) V%)

(define (V.jnew_0)
  (define this (new V% [jclass "V"]))
  this)



