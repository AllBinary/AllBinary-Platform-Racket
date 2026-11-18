#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
;; package org.allbinary.persistance

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define PlatformRecordIdUtil%
  (class JObject%
    (super-new)
    (field [f_PLATFORM_SHORT_NAME JR.null])
    (define/public (jm_getRecordId_2 _abeClientInformation _baseRecordId)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (send _abeClientInformation jm_toShortString_0)) jm_append_1 (get-field f_UNDERSCORE (CommonSeps.jm_getInstance_0))) jm_append_1 (get-field f_PLATFORM_SHORT_NAME this)) jm_append_1 _baseRecordId) jm_toString_0)))))))
(define (PlatformRecordIdUtil.jclassValue) PlatformRecordIdUtil%)

(define PlatformRecordIdUtil.jcell_instance 'jnone)
(define (PlatformRecordIdUtil.jstatic_instance)
  (when (eq? PlatformRecordIdUtil.jcell_instance 'jnone) (set! PlatformRecordIdUtil.jcell_instance (PlatformRecordIdUtil.jnew_0)))
  PlatformRecordIdUtil.jcell_instance)
(define (PlatformRecordIdUtil.jsetstatic_instance value) (set! PlatformRecordIdUtil.jcell_instance value))

(define (PlatformRecordIdUtil.jnew_0)
  (define this (new PlatformRecordIdUtil% [jclass "PlatformRecordIdUtil"]))
    (set-field! f_PLATFORM_SHORT_NAME this "JME")
  this)

(define (PlatformRecordIdUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PlatformRecordIdUtil.jstatic_instance)))))



