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
;; package org.allbinary.logic.io

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../java/io/Closeable.rkt"
  "../../../../java/io/InputStream.rkt"
  "../../../../java/io/OutputStream.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define StreamUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_get_3 _inputStream _outputStream _buffer)
    (let ([_len JR.null])
      (let/ec jreturn
        (set! _len 0)
        (let/ec jbreak (let jloop () (when #t
                (let/ec jcontinue
            (set! _len (send _inputStream jm_read_3 _buffer 0 (vector-length _buffer)))
            (if (not (= _len (JR.i32 (- 1))))
                (begin
                (void))
                (begin
                (jbreak (void))))
            (send _outputStream jm_write_3 _buffer 0 _len)) (jloop))))
        (jreturn _outputStream))))
    (define/public (jm_getByteArray_3 _inputStream _outputStream2 _byteArray)
    (let ([_outputStream JR.null])
      (let/ec jreturn
        (set! _outputStream _outputStream2)
        (dynamic-wind void (lambda () (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (send this jm_get_3 _inputStream _outputStream _byteArray)
            (jreturn (send _outputStream jm_toByteArray_0))))
            (lambda ()
            (send this jm_close_1 _outputStream))))))
    (define/public (jm_close_1 _closeable)
    (let ([_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this (get-field f_CLOSE _commonStrings) _e)
            (jreturn #f))])
            (when (not (JR.null? _closeable))
                (begin
                (send _closeable jm_close_0)))
            (jreturn #t)))))))
(define (StreamUtil.jclassValue) StreamUtil%)

(define StreamUtil.jcell_instance 'jnone)
(define (StreamUtil.jstatic_instance)
  (when (eq? StreamUtil.jcell_instance 'jnone) (set! StreamUtil.jcell_instance (StreamUtil.jnew_0)))
  StreamUtil.jcell_instance)
(define (StreamUtil.jsetstatic_instance value) (set! StreamUtil.jcell_instance value))

(define (StreamUtil.jnew_0)
  (define this (new StreamUtil% [jclass "StreamUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (StreamUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (StreamUtil.jstatic_instance)))))



