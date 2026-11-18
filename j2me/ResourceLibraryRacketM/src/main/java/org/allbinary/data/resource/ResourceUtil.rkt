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
  "../../../../java/lang/Integer.rkt"
  "../../../../java/lang/Thread.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

;J2SE - J2ME
(define ResourceUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_setLoadingPaths_2 _path _ext)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_NOT_IMPLEMENTED (CommonStrings.jm_getInstance_0)) this "setLoadingPaths"))))
    (define/public (jm_setClassLoader_1 _classLoader)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Resource Loader: ") jm_append_1 (JR.className _classLoader)) jm_toString_0) this "setClassLoader")
        (set! ResourceUtil.jcell_classLoader _classLoader))))
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
    (let ([_commonSeps JR.null][_index JR.null][_resourcePath JR.null][_inputStream JR.null][_classLoader JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _index (JR.indexOf _resource (get-field f_COLON _commonSeps)))
        (set! _resourcePath (JR.substring _resource (JR.i32 (+ _index _startIndex))))
        (set! _inputStream (JR.className (JR.className _resource)))
        (when (not (JR.null? _inputStream))
            (begin
            (jreturn _inputStream)))
        (set! _classLoader (ResourceUtil.jstatic_classLoader))
        (set! _inputStream (send _classLoader jm_getResourceAsStream_1 _resourcePath))
        (when (not (JR.null? _inputStream))
            (begin
            (jreturn _inputStream)))
        (set! _inputStream (JR.className (JR.className (Thread.jm_currentThread_0))))
        (when (not (JR.null? _inputStream))
            (begin
            (jreturn _inputStream)))
        (jreturn _inputStream))))
    (define/public (jm_addResource_2 _resource _value)
    (let ()
      (let/ec jreturn (void))))))
(define (ResourceUtil.jclassValue) ResourceUtil%)

(define ResourceUtil.jcell_classLoader 'jnone)
(define (ResourceUtil.jstatic_classLoader)
  (when (eq? ResourceUtil.jcell_classLoader 'jnone) (set! ResourceUtil.jcell_classLoader (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  ResourceUtil.jcell_classLoader)
(define (ResourceUtil.jsetstatic_classLoader value) (set! ResourceUtil.jcell_classLoader value))

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



