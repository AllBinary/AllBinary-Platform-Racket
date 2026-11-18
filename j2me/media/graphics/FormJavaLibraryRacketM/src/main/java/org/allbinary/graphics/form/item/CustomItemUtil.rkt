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
;; package org.allbinary.graphics.form.item

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CustomItemUtil%
  (class JObject%
    (super-new)
    (field [f_CUSTOM_ITEM_ARRAY JR.null])))
(define (CustomItemUtil.jclassValue) CustomItemUtil%)

(define CustomItemUtil.jcell_instance 'jnone)
(define (CustomItemUtil.jstatic_instance)
  (when (eq? CustomItemUtil.jcell_instance 'jnone) (set! CustomItemUtil.jcell_instance (CustomItemUtil.jnew_0)))
  CustomItemUtil.jcell_instance)
(define (CustomItemUtil.jsetstatic_instance value) (set! CustomItemUtil.jcell_instance value))

(define (CustomItemUtil.jnew_0)
  (define this (new CustomItemUtil% [jclass "CustomItemUtil"]))
    (set-field! f_CUSTOM_ITEM_ARRAY this (JR.newArray JR.null 0))
  this)

(define (CustomItemUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (CustomItemUtil.jstatic_instance)))))



