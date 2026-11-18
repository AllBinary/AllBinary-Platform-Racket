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
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../javax/crypto/Cipher.rkt"
  "../../../../../../../javax/crypto/SecretKey.rkt"
  "./BaseSecretComposite.rkt")
(lazy-require ["../../../../../../../org/allbinary/logic/java/byteutil/ByteUtil.rkt" (ByteUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define SecretComposite%
  (class BaseSecretComposite%
    (super-new)
    (field [f_byteUtil JR.null])
    (field [f_cipher JR.null])
    (field [f_secretKey JR.null])
    (field [f_key JR.null])
    (define/override (jm_encrypt_1 _array)
    (let ()
      (let/ec jreturn
        (set! _array (send this jm_mutilate_1 _array))
        (send (get-field f_cipher this) jm_init_2 (Cipher.jstatic_ENCRYPT_MODE) (get-field f_secretKey this))
        (jreturn (send (get-field f_cipher this) jm_doFinal_1 _array)))))
    (define/override (jm_decrypt_1 _array)
    (let ()
      (let/ec jreturn
        (send (get-field f_cipher this) jm_init_2 (Cipher.jstatic_DECRYPT_MODE) (get-field f_secretKey this))
        (jreturn (send this jm_mutilate_1 (send (get-field f_cipher this) jm_doFinal_1 _array))))))
    (define/public (jm_mutilate_1 _array)
    (let ([_value JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length (get-field f_key this)))
                (let/ec jcontinue
            (set! _value (vector-ref (get-field f_key this) _index))
            (when (and (< _value 8) (> _value 0))
                (begin
                (set! _array (send (get-field f_byteUtil this) jm_xorByte_2 _array _value)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _array))))))
(define (SecretComposite.jclassValue) SecretComposite%)

(define (SecretComposite.jnew_3 _secretKey _cipher _key)
  (define this (new SecretComposite% [jclass "SecretComposite"]))
    (set-field! f_byteUtil this (ByteUtil.jm_getInstance_0))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_secretKey this _secretKey)
        (set-field! f_cipher this _cipher)
        (set-field! f_key this _key)))
  this)



