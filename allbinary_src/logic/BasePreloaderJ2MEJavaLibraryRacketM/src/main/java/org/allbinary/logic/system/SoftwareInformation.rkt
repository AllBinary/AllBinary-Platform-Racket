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
;; package org.allbinary.logic.system

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/KotlinUtil.rkt" (KotlinUtil.jm_getShortName_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define SoftwareInformation%
  (class JObject%
    (super-new)
    (field [f_name JR.null])
    (field [f_shortName JR.null])
    (field [f_version JR.null])
    (define/public (jm_getName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_name this)))))
    (define/public (jm_getVersion_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_version this)))))
    (define/public (jm_toShortString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_shortName this)))))
    (define/override (jm_toString_0)
    (let ([_NAME JR.null][_VERSION JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _NAME "Name: ")
        (set! _VERSION "Version: ")
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 _NAME)
        (send _stringBuffer jm_append_1 (send this jm_getName_0))
        (send _stringBuffer jm_append_1 (get-field f_SPACE (CommonSeps.jm_getInstance_0)))
        (send _stringBuffer jm_append_1 _VERSION)
        (send _stringBuffer jm_append_1 (send this jm_getVersion_0))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (SoftwareInformation.jclassValue) SoftwareInformation%)

(define (SoftwareInformation.jnew_3 _name _version _shortName)
  (define this (new SoftwareInformation% [jclass "SoftwareInformation"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_name this _name)
        (set-field! f_version this _version)
        (set-field! f_shortName this (send (send (send (StringMaker.jnew_0) jm_append_1 _shortName) jm_append_1 (KotlinUtil.jm_getShortName_0)) jm_toString_0))))
  this)



