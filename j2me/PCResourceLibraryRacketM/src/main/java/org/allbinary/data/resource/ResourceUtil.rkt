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
;; package org.allbinary.data.resource

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/ByteArrayInputStream.rkt"
  "../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../java/io/FileInputStream.rkt"
  "../../../../java/io/InputStream.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/io/StreamUtil.rkt" (StreamUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

;J2SE - PC
(define ResourceUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_path JR.null])
    (field [f_ext JR.null])
    (define/public (jm_setLoadingPaths_2 _path _ext)
    (let ()
      (let/ec jreturn
        (set-field! f_path this _path)
        (set-field! f_ext this _ext))))
    (define/public (jm_setClassLoader_1 _classLoader)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getResourceAsStream_1 _resource)
    (let ([_inputStream JR.null])
      (let/ec jreturn
        (set! _inputStream (send this jm_getResourceAsStreamAtStart_2 _resource 2))
        (when (JR.null? _inputStream)
            (begin
            (set! _inputStream (send this jm_getResourceAsStreamAtStart_2 _resource 1))
            (when (JR.null? _inputStream)
                (begin
                (raise (JR.newException "Exception" (send (send (send (StringMaker.jnew_0) jm_append_1 "Unable to obtain: ") jm_append_1 _resource) jm_toString_0)))))))
        (jreturn _inputStream))))
    (define/public (jm_getResourceAsStreamAtStart_2 _resource _startIndex)
    (let ([_inputStream JR.null][_byteArray JR.null])
      (let/ec jreturn
        (set! _inputStream (FileInputStream.jnew_1 (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_path this)) jm_append_1 _resource) jm_append_1 (get-field f_ext this)) jm_toString_0)))
        (when (not (JR.null? _inputStream))
            (begin
            (set! _byteArray (JR.newArray 0 (send _inputStream jm_available_0)))
            (send (StreamUtil.jm_getInstance_0) jm_getByteArray_3 _inputStream (ByteArrayOutputStream.jnew_0) _byteArray)
            (jreturn (ByteArrayInputStream.jnew_1 _byteArray))))
        (jreturn _inputStream))))
    (define/public (jm_addResource_2 _resource _value)
    (let ()
      (let/ec jreturn (void))))))
(define (ResourceUtil.jclassValue) ResourceUtil%)

(define ResourceUtil.jcell_instance 'jnone)
(define (ResourceUtil.jstatic_instance)
  (when (eq? ResourceUtil.jcell_instance 'jnone) (set! ResourceUtil.jcell_instance (ResourceUtil.jnew_0)))
  ResourceUtil.jcell_instance)
(define (ResourceUtil.jsetstatic_instance value) (set! ResourceUtil.jcell_instance value))

(define (ResourceUtil.jnew_0)
  (define this (new ResourceUtil% [jclass "ResourceUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_path this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_ext this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ResourceUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ResourceUtil.jstatic_instance)))))



