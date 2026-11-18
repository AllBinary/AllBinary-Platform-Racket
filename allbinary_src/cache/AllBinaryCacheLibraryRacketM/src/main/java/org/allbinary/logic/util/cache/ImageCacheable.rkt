#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2011 AllBinary
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
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ImageCacheable%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (define/public (jm_getKey_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))))
(define (ImageCacheable.jclassValue) ImageCacheable%)

(define (ImageCacheable.jnew_2 _name _anyType)
  (define this (new ImageCacheable% [jclass "ImageCacheable"]))
    (set-field! f_name this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn (void)))
  this)



