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
;; package org.allbinary.init.crypt.jcehelper

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CryptInterface%
  (class JObject%
    (super-new)
    (define/public (jm_encrypt_1 _array)
      (raise (JR.newException "AbstractMethodError" "encrypt")))
    (define/public (jm_decrypt_1 _array)
      (raise (JR.newException "AbstractMethodError" "decrypt")))))
(define (CryptInterface.jclassValue) CryptInterface%)

(define (CryptInterface.jnew_0)
  (define this (new CryptInterface% [jclass "CryptInterface"]))
  this)



