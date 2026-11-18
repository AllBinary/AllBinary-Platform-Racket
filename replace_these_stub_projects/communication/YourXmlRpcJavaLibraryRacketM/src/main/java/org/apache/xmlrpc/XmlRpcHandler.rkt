#lang racket/base
;; Generated Code Do Not Modify
;; package org.apache.xmlrpc

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define XmlRpcHandler%
  (class JObject%
    (super-new)
    (define/public (jm_execute_2 _method _params)
      (raise (JR.newException "AbstractMethodError" "execute")))))
(define (XmlRpcHandler.jclassValue) XmlRpcHandler%)

(define (XmlRpcHandler.jnew_0)
  (define this (new XmlRpcHandler% [jclass "XmlRpcHandler"]))
  this)



