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
;; package org.allbinary.logic

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

;ActualPlatform
(define NullUtil%
  (class JObject%
    (super-new)
    (field [f_NULL_OBJECT JR.null])
    (field [f_NULL_CLASS JR.null])
    (field [f_NULL_OBJECT_ARRAY JR.null])
    (field [f_NULL_CHAR_ARRAY JR.null])
    (field [f_NULL_BYTE_ARRAY JR.null])
    (field [f_NULL_SHORT_ARRAY_ARRAY JR.null])
    (field [f_NULL_INT_ARRAY JR.null])
    (field [f_NULL_INT_ARRAY_ARRAY JR.null])
    (field [f_NULL_INT_ARRAY_ARRAY_ARRAY JR.null])
    (field [f_NULL_FLOAT_ARRAY JR.null])))

(define NullUtil.jcell_instance 'jnone)
(define (NullUtil.jstatic_instance)
  (when (eq? NullUtil.jcell_instance 'jnone) (set! NullUtil.jcell_instance (NullUtil.jnew_0)))
  NullUtil.jcell_instance)

(define (NullUtil.jnew_0)
  (define this (new NullUtil% [jclass "NullUtil"]))
    (set-field! f_NULL_OBJECT this (JR.newJObject "Object"))
    (set-field! f_NULL_CLASS this (JR.className (get-field f_NULL_OBJECT this)))
    (set-field! f_NULL_OBJECT_ARRAY this (JR.newArray JR.null 0))
    (set-field! f_NULL_CHAR_ARRAY this (JR.newArray 0 0))
    (set-field! f_NULL_BYTE_ARRAY this (JR.newArray 0 0))
    (set-field! f_NULL_SHORT_ARRAY_ARRAY this (JR.newArray 0 0 0))
    (set-field! f_NULL_INT_ARRAY this (JR.newArray 0 0))
    (set-field! f_NULL_INT_ARRAY_ARRAY this (JR.newArray 0 0 0))
    (set-field! f_NULL_INT_ARRAY_ARRAY_ARRAY this (JR.newArray 0 0 0 0))
    (set-field! f_NULL_FLOAT_ARRAY this (JR.newArray 0.0 0))
  this)

(define (NullUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullUtil.jstatic_instance)))))



