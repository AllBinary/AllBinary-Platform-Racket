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
  "../../../../../../../org/allbinary/init/crypt/jcehelper/CryptInterface.rkt")
(lazy-require ["../../../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../../../../org/allbinary/logic/java/byteutil/ByteUtil.rkt" (ByteUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicCrypt%
  (class JObject%
    (super-new)
    (field [f_byteUtil JR.null])
    (field [f_key JR.null])
    (define/public (jm_encrypt_1 _array)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 "Encrypt Failed" this "encrypt" _e)
            (jreturn (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0))))])
            (jreturn (send this jm_mutilate_1 _array))))))
    (define/public (jm_decrypt_1 _array)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 "decrypt Failed" this "decrypt" _e)
            (jreturn (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0))))])
            (jreturn (send this jm_mutilate_1 _array))))))
    (define/public (jm_mutilate_1 _array)
    (let ([_value JR.null][_index JR.null])
      (let/ec jreturn
        (set! _value 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length (get-field f_key this)))
                (let/ec jcontinue
            (set! _value (vector-ref (get-field f_key this) _index))
            (set! _array (send (get-field f_byteUtil this) jm_xor_2 _array _value)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _array))))))
(define (BasicCrypt.jclassValue) BasicCrypt%)

(define (BasicCrypt.jnew_1 _keyAsString)
  (define this (new BasicCrypt% [jclass "BasicCrypt"]))
    (set-field! f_byteUtil this (ByteUtil.jm_getInstance_0))
    
    (let ([_key JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _key (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0)))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION _commonStrings) this "AbCrypt(alg,key)" _e))])
            (set! _key (send (TsUtil.jm_getInstance_0) jm_getByteArray_1 _keyAsString)))
        (set-field! f_key this _key)))
  this)



