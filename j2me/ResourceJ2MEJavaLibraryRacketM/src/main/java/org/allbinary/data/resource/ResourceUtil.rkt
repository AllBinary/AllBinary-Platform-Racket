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
  "../../../../java/io/InputStream.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

;J2ME
(define ResourceUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_setLoadingPaths_2 _path _ext)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_NOT_IMPLEMENTED (CommonStrings.jm_getInstance_0)) this "setLoadingPaths"))))
    (define/public (jm_getResourceAsStream_1 _resource)
    (let ([_inputStream JR.null][_stringMaker JR.null][_index JR.null][_resourcePath JR.null][_RES JR.null][_COLON JR.null][_RESOURCE_STRING JR.null])
      (let/ec jreturn
        (set! _inputStream (JR.className (JR.className _resource)))
        (when (JR.null? _inputStream)
            (begin
            (set! _inputStream (send this jm_getResourceAsStreamAtStart_2 _resource 2))
            (when (JR.null? _inputStream)
                (begin
                (set! _inputStream (send this jm_getResourceAsStreamAtStart_2 _resource 1))
                (when (JR.null? _inputStream)
                    (begin
                    (set! _stringMaker (StringMaker.jnew_0))
                    (set! _index (JR.lastIndexOf _resource (char->integer #\/)))
                    (set! _resourcePath (JR.substring _resource (JR.i32 (+ _index 1))))
                    (set! _inputStream (JR.className (JR.className _resource)))
                    (when (JR.null? _inputStream)
                        (begin
                        (set! _resourcePath (JR.substring _resource _index))
                        (set! _inputStream (JR.className (JR.className _resource)))
                        (when (JR.null? _inputStream)
                            (begin
                            (set! _RES "res")
                            (set! _resourcePath (send (send (send _stringMaker jm_append_1 _RES) jm_append_1 (JR.substring _resource _index)) jm_toString_0))
                            (set! _inputStream (JR.className (JR.className _resource)))
                            (when (JR.null? _inputStream)
                                (begin
                                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                                (set! _resourcePath (send (send (send (send _stringMaker jm_append_1 "/") jm_append_1 _RES) jm_append_1 (JR.substring _resource _index)) jm_toString_0))
                                (set! _inputStream (JR.className (JR.className _resource)))
                                (set! _COLON (get-field f_COLON (CommonSeps.jm_getInstance_0)))
                                (when (JR.null? _inputStream)
                                    (begin
                                    (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                                    (set! _resourcePath (send (send (send (send _stringMaker jm_append_1 _RES) jm_append_1 _COLON) jm_append_1 (JR.substring _resource _index)) jm_toString_0))
                                    (set! _inputStream (JR.className (JR.className _resource)))
                                    (when (JR.null? _inputStream)
                                        (begin
                                        (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                                        (set! _resourcePath (send (send (send (send _stringMaker jm_append_1 _RES) jm_append_1 _COLON) jm_append_1 (JR.substring _resource (JR.i32 (+ _index 1)))) jm_toString_0))
                                        (set! _inputStream (JR.className (JR.className _resource)))
                                        (when (JR.null? _inputStream)
                                            (begin
                                            (set! _RESOURCE_STRING "resource")
                                            (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                                            (set! _resourcePath (send (send (send (send _stringMaker jm_append_1 _RESOURCE_STRING) jm_append_1 _COLON) jm_append_1 (JR.substring _resource _index)) jm_toString_0))
                                            (set! _inputStream (JR.className (JR.className _resource)))
                                            (when (JR.null? _inputStream)
                                                (begin
                                                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                                                (set! _resourcePath (send (send (send (send _stringMaker jm_append_1 _RESOURCE_STRING) jm_append_1 _COLON) jm_append_1 (JR.substring _resource (JR.i32 (+ _index 1)))) jm_toString_0))
                                                (set! _inputStream (JR.className (JR.className _resource)))
                                                (when (JR.null? _inputStream)
                                                    (begin
                                                    (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                                                    (raise (JR.newException "Exception" (send (send (send _stringMaker jm_append_1 "Unable to obtain: ") jm_append_1 _resource) jm_toString_0)))))))))))))))))))))))))
        (jreturn _inputStream))))
    (define/public (jm_getResourceAsStreamAtStart_2 _resource _startIndex)
    (let ([_stringMaker JR.null][_index JR.null][_resourcePath JR.null][_inputStream JR.null])
      (let/ec jreturn
        (set! _stringMaker (StringMaker.jnew_0))
        (set! _index (JR.indexOf _resource (get-field f_COLON (CommonSeps.jm_getInstance_0))))
        (set! _resourcePath (JR.substring _resource (JR.i32 (+ _index _startIndex))))
        (set! _inputStream (JR.className (JR.className _resource)))
        (when (not (JR.null? _inputStream))
            (begin
            (jreturn _inputStream)))
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
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ResourceUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ResourceUtil.jstatic_instance)))))



