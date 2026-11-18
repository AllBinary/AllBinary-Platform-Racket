#lang racket/base
;; Generated Code Do Not Modify
;; package org.apache.xmlrpc

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/io/IOException.rkt"
  "../../../java/net/MalformedURLException.rkt"
  "../../../java/net/URL.rkt"
  "./XmlRpcHandler.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define XmlRpcClient%
  (class JObject%
    (super-new)
    (field [f_url JR.null])
    (define/public (jm_getURL_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_url this)))))
    (define/public (jm_setBasicAuthentication_2 _user _password)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_execute_2 _method _params)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))))
    (define/public (jm_executeWithCrypt_3 _method _params _cryptInterface)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))))))
(define (XmlRpcClient.jclassValue) XmlRpcClient%)

(define (XmlRpcClient.jnew_1 _url)
  (define this (new XmlRpcClient% [jclass "XmlRpcClient"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_url this (URL.jnew_1 _url))))
  this)



