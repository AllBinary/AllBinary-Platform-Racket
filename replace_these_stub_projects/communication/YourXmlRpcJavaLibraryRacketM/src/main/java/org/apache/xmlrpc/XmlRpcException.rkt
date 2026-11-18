#lang racket/base
;; Generated Code Do Not Modify
;; package org.apache.xmlrpc

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define XmlRpcException%
  (class Exception%
    (super-new)))
(define (XmlRpcException.jclassValue) XmlRpcException%)

(define (XmlRpcException.jnew_2 _code _message)
  (define this (new XmlRpcException% [jclass "XmlRpcException"]))
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_1 _message)))
  this)



