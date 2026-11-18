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
;; package org.allbinary.logic.control.validate

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/Boolean.rkt"
  "./ValidatorBaseInterface.rkt")
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/java/bool/BooleanFactory.rkt" (BooleanFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ValidatorBase%
  (class JObject%
    (super-new)
    (define/public (jm_isValid_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_TRUE (BooleanFactory.jm_getInstance_0))))))
    (define/public (jm_validationInfo_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))
    (define/public (jm_toHashtable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_TABLE (StdUtil.jm_getInstance_0))))))
    (define/public (jm_toList_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0)))))))
(define (ValidatorBase.jclassValue) ValidatorBase%)

(define ValidatorBase.jcell_instance 'jnone)
(define (ValidatorBase.jstatic_instance)
  (when (eq? ValidatorBase.jcell_instance 'jnone) (set! ValidatorBase.jcell_instance (ValidatorBase.jnew_0)))
  ValidatorBase.jcell_instance)
(define (ValidatorBase.jsetstatic_instance value) (set! ValidatorBase.jcell_instance value))

(define (ValidatorBase.jnew_0)
  (define this (new ValidatorBase% [jclass "ValidatorBase"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ValidatorBase.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ValidatorBase.jstatic_instance)))))



