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
;; package org.allbinary.logic.system.security.crypt.jcehelper

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BaseSecretComposite%
  (class JObject%
    (super-new)
    (define/public (jm_encrypt_1 _array)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0))))))
    (define/public (jm_decrypt_1 _array)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0))))))))
(define (BaseSecretComposite.jclassValue) BaseSecretComposite%)

(define BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE 'jnone)
(define (BaseSecretComposite.jstatic_NULL_SECRET_COMPOSITE)
  (when (eq? BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE 'jnone) (set! BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE (BaseSecretComposite.jnew_0)))
  BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE)
(define (BaseSecretComposite.jsetstatic_NULL_SECRET_COMPOSITE value) (set! BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE value))

(define (BaseSecretComposite.jnew_0)
  (define this (new BaseSecretComposite% [jclass "BaseSecretComposite"]))
  this)



