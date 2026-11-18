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
  "../../../../../allbinary_java.rkt"
  "../../../../../java/io/ByteArrayInputStream.rkt"
  "../../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../../java/io/InputStream.rkt")
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicCryptUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_tsUtil JR.null])
    (field [f_XML_START JR.null])
    (define/public (jm_getDecryptedInputStream_2 _inputStream _cryptInterface)
    (let ([_buffer JR.null][_ch JR.null][_decrypted JR.null][_decryptedString JR.null][_index JR.null])
      (let/ec jreturn
        (set! _buffer (ByteArrayOutputStream.jnew_0))
        (set! _ch 0)
        (let/ec jbreak (let jloop () (when #t
                (let/ec jcontinue
            (set! _ch (send _inputStream jm_read_0))
            (when (= _ch (JR.i32 (- 1)))
                (begin
                (jbreak (void))))
            (send _buffer jm_write_1 _ch)) (jloop))))
        (set! _decrypted (send _cryptInterface jm_decrypt_1 (send _buffer jm_toByteArray_0)))
        (set! _decryptedString _decrypted)
        (set! _index (JR.indexOf _decryptedString (get-field f_XML_START this)))
        (when (> _index 0)
            (begin
            (set! _decryptedString (JR.substring _decryptedString _index))))
        (jreturn (ByteArrayInputStream.jnew_1 (send (get-field f_tsUtil this) jm_getByteArray_1 _decryptedString))))))))
(define (BasicCryptUtil.jclassValue) BasicCryptUtil%)

(define BasicCryptUtil.jcell_instance 'jnone)
(define (BasicCryptUtil.jstatic_instance)
  (when (eq? BasicCryptUtil.jcell_instance 'jnone) (set! BasicCryptUtil.jcell_instance (BasicCryptUtil.jnew_0)))
  BasicCryptUtil.jcell_instance)
(define (BasicCryptUtil.jsetstatic_instance value) (set! BasicCryptUtil.jcell_instance value))

(define (BasicCryptUtil.jnew_0)
  (define this (new BasicCryptUtil% [jclass "BasicCryptUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_XML_START this "<?xml")
  this)

(define (BasicCryptUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicCryptUtil.jstatic_instance)))))



