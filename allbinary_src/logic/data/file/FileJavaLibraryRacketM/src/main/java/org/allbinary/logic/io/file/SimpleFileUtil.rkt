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
;; package org.allbinary.logic.io.file

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../../java/io/InputStream.rkt"
  "../../../../../java/io/OutputStream.rkt"
  "../../../../../java/io/Reader.rkt"
  "../../../../../java/io/Writer.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/io/NullOutputStream.rkt" (NullOutputStream.jstatic_NULL_OUTPUT_STREAM)])
(lazy-require ["../../../../../org/allbinary/logic/io/NullReader.rkt" (NullReader.jstatic_NULL_READER)])
(lazy-require ["../../../../../org/allbinary/logic/io/NullWriter.rkt" (NullWriter.jstatic_NULL_WRITER)])
(lazy-require ["../../../../../org/allbinary/logic/io/StreamUtil.rkt" (StreamUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define SimpleFileUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_NULL_WRITER JR.null])
    (field [f_NULL_READER JR.null])
    (field [f_commonStrings JR.null])
    (field [f_nullUtil JR.null])
    (field [f_streamUtil JR.null])
    (define/public (jm_loadFileAsList_3 _inputStream _max _byteArray1)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_loadFileAsListReturnLine_4 _inputStream _max _byteArray1 0)))))
    (define/public (jm_loadFileAsListReturnLine_4 _inputStream _max _byteArray1 _includeReturnLine)
    (let ([_stringList JR.null][_byteArray JR.null][_outputStream2 JR.null][_size JR.null][_index JR.null][_startIndex JR.null][_returnLine JR.null][_s JR.null])
      (let/ec jreturn
        (set! _stringList (BasicArrayListD.jnew_0))
        (when (JR.null? _inputStream)
            (begin
            (jreturn _stringList)))
        (set! _byteArray (get-field f_NULL_BYTE_ARRAY (get-field f_nullUtil this)))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_streamUtil this) jm_close_1 _inputStream)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_ADD (get-field f_commonStrings this)) _e))])
            (set! _outputStream2 (ByteArrayOutputStream.jnew_1 _max))
            (set! _byteArray (send (get-field f_streamUtil this) jm_getByteArray_3 _inputStream _outputStream2 _byteArray1))
            (send (get-field f_streamUtil this) jm_close_1 _inputStream))
        (when (JR.null? _byteArray)
            (begin
            (jreturn _stringList)))
        (set! _size (vector-length _byteArray))
        (set! _index 0)
        (set! _startIndex 0)
        (set! _returnLine 0)
        (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _startIndex _index)
            (let/ec jbreak (let jloop () (when (and (< _index (JR.i32 (- _size 1))) (not (= (vector-ref _byteArray _index) (JR.i8 10))))
                    (let/ec jcontinue
                (set! _index (JR.i32 (+ _index 1)))) (jloop))))
            (when (= _includeReturnLine 0)
                (begin
                (if (and (> _index 0) (= (vector-ref _byteArray (JR.i32 (- _index 1))) (JR.i8 13)))
                    (begin
                    (set! _returnLine 1))
                    (begin
                    (set! _returnLine 0)))))
            (set! _s (JR.fromChars _byteArray _startIndex (JR.i32 (- (JR.i32 (- (JR.i32 (+ _index _includeReturnLine)) _returnLine)) _startIndex))))
            (send _stringList jm_add_1 _s)
            (set! _index (JR.i32 (+ _index 1)))) (jloop))))
        (jreturn _stringList))))
    (define/public (jm_createStringFromArrayOfStrings_1 _stringArray)
    (let ([_stringMaker JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _size (vector-length _stringArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _stringMaker jm_append_1 (vector-ref _stringArray _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringMaker jm_toString_0)))))))
(define (SimpleFileUtil.jclassValue) SimpleFileUtil%)

(define SimpleFileUtil.jcell_instance 'jnone)
(define (SimpleFileUtil.jstatic_instance)
  (when (eq? SimpleFileUtil.jcell_instance 'jnone) (set! SimpleFileUtil.jcell_instance (SimpleFileUtil.jnew_0)))
  SimpleFileUtil.jcell_instance)
(define (SimpleFileUtil.jsetstatic_instance value) (set! SimpleFileUtil.jcell_instance value))

(define (SimpleFileUtil.jnew_0)
  (define this (new SimpleFileUtil% [jclass "SimpleFileUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_NULL_WRITER this (SimpleFileUtil.jm_nullWriter_0))
    (set-field! f_NULL_READER this (SimpleFileUtil.jm_nullReader_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_nullUtil this (NullUtil.jm_getInstance_0))
    (set-field! f_streamUtil this (StreamUtil.jm_getInstance_0))
  this)

(define (SimpleFileUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SimpleFileUtil.jstatic_instance)))))

(define (SimpleFileUtil.jm_nullOutputStream_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullOutputStream.jstatic_NULL_OUTPUT_STREAM)))))

(define (SimpleFileUtil.jm_nullWriter_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullWriter.jstatic_NULL_WRITER)))))

(define (SimpleFileUtil.jm_nullReader_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullReader.jstatic_NULL_READER)))))



