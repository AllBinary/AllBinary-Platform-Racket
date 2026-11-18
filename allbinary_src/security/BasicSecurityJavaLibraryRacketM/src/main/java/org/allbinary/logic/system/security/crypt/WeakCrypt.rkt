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
;; package org.allbinary.logic.system.security.crypt

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt.rkt" (AbCrypt.jnew_1)])
(lazy-require ["../../../../../../org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.rkt" (KeySpecFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./DatabaseEncoder.rkt" (DatabaseEncoder.jm_encode_1 DatabaseEncoder.jm_decode_1)])
(provide (all-defined-out))

(define WeakCrypt%
  (class JObject%
    (super-new)
    (field [f_tsUtil JR.null])
    (field [f_abCrypt JR.null])
    (define/public (jm_encrypt_1 _value)
    (let ([_crypted JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 "Encrypt Failed" this "encrypt" _e)
            (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))])
            (set! _crypted (send (get-field f_abCrypt this) jm_encrypt_1 (send (get-field f_tsUtil this) jm_getByteArray_1 _value)))
            (jreturn (DatabaseEncoder.jm_encode_1 _crypted))))))
    (define/public (jm_decrypt_1 _value)
    (let ([_decrypted JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (PreLogUtil.jm_putOE_4 "decrypt Failed" this "decrypt" _e)
            (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))])
            (set! _decrypted (send (get-field f_abCrypt this) jm_decrypt_1 (DatabaseEncoder.jm_decode_1 _value)))
            (jreturn _decrypted)))))))
(define (WeakCrypt.jclassValue) WeakCrypt%)

(define WeakCrypt.jcell_keys 'jnone)
(define (WeakCrypt.jstatic_keys)
  (when (eq? WeakCrypt.jcell_keys 'jnone) (set! WeakCrypt.jcell_keys (vector "qwres6qewrupoi1132790jfahleavi89398" "143uk32lngf8675gt1tv9214uvt924ut9u9" "12kvjlvlkv11445v12951v512v9m51295v1" "gampipoiupg4g43y5u238tu2485u20u0932" "a93u5uu02s2d2g3259u4395u409u093u9vu" "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j" "2lk5fn5j23nr8f0233vq35n23jn58vhy843" "9q24334m598t092tkn2iv0982456n425j9g" "5m9uvmt9436243m5v34g09d43i52ki35g99" "n123lr1iubiu2br32lv32rbu23b32ub2rlb" "va0u0iovji2ojpvj2oij22poiu4ov2uv28v" "bkk80gn2v9uc902340ut209pcup0u09utc9" "mn32m32neee23c42fn32nf3mf2n3fn2m3fm" "zcxpozo3423voizupovsijevnv3n33o33n3" "v0345324thv93h03893893vh893v8h3vhzz" "v8na898v8wyef9ty39yv98yaw39yeeyf8ye" "45zd36d34jg09434hfshp8uj9sy8s7cyr78" "b098yy0908vdvh983b2lb327980a76s5e5e" "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh" "vblkzhhzp8yvzi8u4t9856456zy3rv8a388" "da7696023rgf28dssfa98asd879hg32hewe" "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf" "4gijvqo8vq984hv984hj5j3511h832hf833")))
  WeakCrypt.jcell_keys)
(define (WeakCrypt.jsetstatic_keys value) (set! WeakCrypt.jcell_keys value))

(define WeakCrypt.jcell_KEYMAX 'jnone)
(define (WeakCrypt.jstatic_KEYMAX)
  (when (eq? WeakCrypt.jcell_KEYMAX 'jnone) (set! WeakCrypt.jcell_KEYMAX (vector-length (WeakCrypt.jstatic_keys))))
  WeakCrypt.jcell_KEYMAX)
(define (WeakCrypt.jsetstatic_KEYMAX value) (set! WeakCrypt.jcell_KEYMAX value))

(define (WeakCrypt.jnew_1 _key)
  (define this (new WeakCrypt% [jclass "WeakCrypt"]))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_abCrypt this (AbCrypt.jnew_1 (get-field f_DES (KeySpecFactory.jm_getInstance_0))))
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION _commonStrings) this "SuperCrypt(key)" _e))])
            (send (get-field f_abCrypt this) jm_init_1 (vector-ref (WeakCrypt.jstatic_keys) _key)))))
  this)



