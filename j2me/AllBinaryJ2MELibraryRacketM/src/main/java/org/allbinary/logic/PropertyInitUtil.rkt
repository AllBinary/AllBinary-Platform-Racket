#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2026 AllBinary 
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
;; package org.allbinary.logic

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define PropertyInitUtil%
  (class JObject%
    (super-new)))
(define (PropertyInitUtil.jclassValue) PropertyInitUtil%)

(define PropertyInitUtil.jcell_instance 'jnone)
(define (PropertyInitUtil.jstatic_instance)
  (when (eq? PropertyInitUtil.jcell_instance 'jnone) (set! PropertyInitUtil.jcell_instance (PropertyInitUtil.jnew_0)))
  PropertyInitUtil.jcell_instance)
(define (PropertyInitUtil.jsetstatic_instance value) (set! PropertyInitUtil.jcell_instance value))

(define (PropertyInitUtil.jnew_0)
  (define this (new PropertyInitUtil% [jclass "PropertyInitUtil"]))
  this)

(define (PropertyInitUtil.jm_getInstance_1 _value)
    (let ([_commonStrings JR.null][_logUtil JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (set! _logUtil (LogUtil.jm_getInstance_0))
        (send _logUtil jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "PropertyInitUtil: ") jm_appendint_1 _value) jm_toString_0) _logUtil (get-field f_CONSTRUCTOR _commonStrings))
        (jreturn (PropertyInitUtil.jstatic_instance)))))



