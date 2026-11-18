#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
;;  
;; By agreeing to this license you and any business entity you represent are 
;; legally bound to the AllBinary Open License Version 1 legal agreement. 
;;  
;; You may obtain the AllBinary Open License Version 1 legal agreement from 
;; AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
;;  
;; Created By: Travis Berthelot 
;;   
;; Generated Code Do Not Modify
;; package org.apache.xmlrpc

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./XmlRpcHandler.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define NullXmlRpcHandler%
  (class JObject%
    (super-new)
    (define/public (jm_execute_2 _method _params)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))))))
(define (NullXmlRpcHandler.jclassValue) NullXmlRpcHandler%)

(define NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER 'jnone)
(define (NullXmlRpcHandler.jstatic_NULL_XML_RPC_HANDLER)
  (when (eq? NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER 'jnone) (set! NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER (NullXmlRpcHandler.jnew_0)))
  NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER)
(define (NullXmlRpcHandler.jsetstatic_NULL_XML_RPC_HANDLER value) (set! NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER value))

(define (NullXmlRpcHandler.jnew_0)
  (define this (new NullXmlRpcHandler% [jclass "NullXmlRpcHandler"]))
  this)



