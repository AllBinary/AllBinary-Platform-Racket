#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.graphics.form

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CustomDisplayable.rkt")
(provide (all-defined-out))

(define CustomScreen%
  (class CustomDisplayable%
    (super-new)))
(define (CustomScreen.jclassValue) CustomScreen%)

(define (CustomScreen.jnew_0)
  (define this (new CustomScreen% [jclass "CustomScreen"]))
  this)



