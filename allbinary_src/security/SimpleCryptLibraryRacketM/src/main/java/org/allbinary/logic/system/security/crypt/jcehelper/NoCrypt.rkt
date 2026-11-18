#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/init/crypt/jcehelper/CryptInterface.rkt")
(provide (all-defined-out))

(define NoCrypt%
  (class JObject%
    (super-new)
    (define/public (jm_encrypt_1 _array)
    (let ()
      (let/ec jreturn
        (jreturn _array))))
    (define/public (jm_decrypt_1 _array)
    (let ()
      (let/ec jreturn
        (jreturn _array))))))
(define (NoCrypt.jclassValue) NoCrypt%)

(define (NoCrypt.jnew_0)
  (define this (new NoCrypt% [jclass "NoCrypt"]))
  this)



