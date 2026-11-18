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
;; package org.allbinary.logic.system.security.crypt.jcehelper

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../java/security/Security.rkt"
  "../../../../../../../java/security/spec/KeySpec.rkt"
  "../../../../../../../javax/crypto/Cipher.rkt"
  "../../../../../../../javax/crypto/SecretKey.rkt"
  "../../../../../../../javax/crypto/SecretKeyFactory.rkt"
  "../../../../../../../org/allbinary/init/crypt/jcehelper/CryptInterface.rkt")
(lazy-require ["../../../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/bouncycastle/jce/provider/BouncyCastleProvider.rkt" (BouncyCastleProvider.jnew_0)])
(lazy-require ["./BaseSecretComposite.rkt" (BaseSecretComposite.jstatic_NULL_SECRET_COMPOSITE)])
(lazy-require ["./KeySpecFactory.rkt" (KeySpecFactory.jm_getInstance_0)])
(lazy-require ["./SecretComposite.rkt" (SecretComposite.jnew_3)])
(provide (all-defined-out))

(define AbCrypt%
  (class JObject%
    (super-new)
    (field [f_tsUtil JR.null])
    (field [f_secretComposite JR.null])
    (field [f_algorithm JR.null])
    (define/public (jm_init_1 _keyAsString)
    (let ([_commonStrings JR.null][_key JR.null][_keySpec JR.null][_keyFactory JR.null][_secretKey JR.null][_cipher JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 "init Failed" this (get-field f_INIT _commonStrings) _e))])
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_INIT _commonStrings) _e))])
                (Security.jm_addProvider_1 (BouncyCastleProvider.jnew_0)))
            (set! _key (send (get-field f_tsUtil this) jm_getByteArray_1 _keyAsString))
            (set! _keySpec (send (KeySpecFactory.jm_getInstance_0) jm_getInstance_2 (get-field f_algorithm this) _key))
            (set! _keyFactory (SecretKeyFactory.jm_getInstance_1 (get-field f_algorithm this)))
            (set! _secretKey (send _keyFactory jm_generateSecret_1 _keySpec))
            (set! _cipher (Cipher.jm_getInstance_1 (get-field f_algorithm this)))
            (set-field! f_secretComposite this (SecretComposite.jnew_3 _secretKey _cipher _key))))))
    (define/public (jm_encrypt_1 _array)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 "Encrypt Failed" this "encrypt" _e)
            (jreturn (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0))))])
            (jreturn (send (get-field f_secretComposite this) jm_encrypt_1 _array))))))
    (define/public (jm_decrypt_1 _array)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 "decrypt Failed" this "decrypt" _e)
            (jreturn (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0))))])
            (jreturn (send (get-field f_secretComposite this) jm_decrypt_1 _array))))))))
(define (AbCrypt.jclassValue) AbCrypt%)

(define (AbCrypt.jnew_1 _algorithm)
  (define this (new AbCrypt% [jclass "AbCrypt"]))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_secretComposite this (BaseSecretComposite.jstatic_NULL_SECRET_COMPOSITE))
    
    (let ()
      (let/ec jreturn
        (set-field! f_algorithm this _algorithm)))
  this)



