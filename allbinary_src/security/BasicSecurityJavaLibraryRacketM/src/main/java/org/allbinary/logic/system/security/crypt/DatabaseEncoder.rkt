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
  "../../../../../../allbinary_java.rkt"
  "../../../../../../java/lang/Byte.rkt")
(lazy-require ["../../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4 PreLogUtil.jm_putSE_4)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/logic/string/tokens/Tokenizer.rkt" (Tokenizer.jnew_1)])
(lazy-require ["../../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define DatabaseEncoder%
  (class JObject%
    (super-new)))
(define (DatabaseEncoder.jclassValue) DatabaseEncoder%)

(define (DatabaseEncoder.jnew_0)
  (define this (new DatabaseEncoder% [jclass "DatabaseEncoder"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DatabaseEncoder.jm_encode_1 _value)
    (let ([_array JR.null][_stringBuffer JR.null][_index JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION _commonStrings) "DatabaseEncoder" "decode" _e)
            (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))])
            (set! _array _value)
            (set! _stringBuffer (StringMaker.jnew_0))
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index (vector-length _array))
                    (let/ec jcontinue
                (send _stringBuffer jm_append_1 (send (vector-ref _array _index) jm_toString_0))
                (when (< _index (JR.i32 (- (vector-length _array) 1)))
                    (begin
                    (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (jreturn (send _stringBuffer jm_toString_0))))))

(define (DatabaseEncoder.jm_decode_1 _value)
    (let ([_tokenizer JR.null][_vector JR.null][_size JR.null][_decode JR.null][_byteOfData JR.null][_index JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putSE_4 (get-field f_EXCEPTION _commonStrings) "DatabaseEncoder" "decode" _e)
            (jreturn (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0))))])
            (set! _tokenizer (Tokenizer.jnew_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0))))
            (set! _vector (send _tokenizer jm_getTokensFromString_2 _value (BasicArrayListD.jnew_0)))
            (set! _size (send _vector jm_size_0))
            (set! _decode (JR.newArray 0 _size))
            (set! _byteOfData JR.null)
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index _size)
                    (let/ec jcontinue
                (set! _byteOfData (vector-ref (get-field f_objectArray _vector) _index))
                (vector-set! _decode _index (Byte.jm_parseByte_1 _byteOfData)))
                    (set! _index (JR.i32 (+ _index 1))) (jloop)))))
            (jreturn _decode)))))



