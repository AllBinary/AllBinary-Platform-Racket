#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt")
(lazy-require ["../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define KotlinUtil%
  (class JObject%
    (super-new)))

(define (KotlinUtil.jnew_0)
  (define this (new KotlinUtil% [jclass "KotlinUtil"]))
  this)

(define (KotlinUtil.jm_isKotlin_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))

(define (KotlinUtil.jm_getShortName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))



