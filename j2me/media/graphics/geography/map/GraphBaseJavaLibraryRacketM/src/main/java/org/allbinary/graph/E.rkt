#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graph

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define E%
  (class JObject%
    (super-new)
    (define/public (jm_newInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (E.jstatic_e)))))))
(define (E.jclassValue) E%)

(define E.jcell_e 'jnone)
(define (E.jstatic_e)
  (when (eq? E.jcell_e 'jnone) (set! E.jcell_e (E.jnew_0)))
  E.jcell_e)
(define (E.jsetstatic_e value) (set! E.jcell_e value))

(define (E.jnew_0)
  (define this (new E% [jclass "E"]))
  this)



