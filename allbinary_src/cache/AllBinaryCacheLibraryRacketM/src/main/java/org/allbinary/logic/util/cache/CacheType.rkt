#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2007 AllBinary 
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
;; package org.allbinary.logic.util.cache

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define CacheType%
  (class JObject%
    (super-new)
    (field [f_vendor JR.null])
    (field [f_type JR.null])
    (define/public (jm_getVendor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_vendor this)))))
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_type this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "CacheType: Vendor: ")
        (send _stringBuffer jm_append_1 (send this jm_getVendor_0))
        (send _stringBuffer jm_append_1 " Type: ")
        (send _stringBuffer jm_append_1 (send this jm_getType_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (CacheType.jclassValue) CacheType%)

(define (CacheType.jnew_2 _vendor _type)
  (define this (new CacheType% [jclass "CacheType"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_vendor this _vendor)
        (set-field! f_type this _type)))
  this)



