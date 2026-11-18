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
;; package org.allbinary.logic.io.path

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./AbPath.rkt" (AbPath.jm_createAbPath_0)])
(provide (all-defined-out))

(define AbPathUtil%
  (class JObject%
    (super-new)
    (field [f_NO_ABPATH JR.null])))
(define (AbPathUtil.jclassValue) AbPathUtil%)

(define AbPathUtil.jcell_instance 'jnone)
(define (AbPathUtil.jstatic_instance)
  (when (eq? AbPathUtil.jcell_instance 'jnone) (set! AbPathUtil.jcell_instance (AbPathUtil.jnew_0)))
  AbPathUtil.jcell_instance)
(define (AbPathUtil.jsetstatic_instance value) (set! AbPathUtil.jcell_instance value))

(define (AbPathUtil.jnew_0)
  (define this (new AbPathUtil% [jclass "AbPathUtil"]))
    (set-field! f_NO_ABPATH this (AbPath.jm_createAbPath_0))
  this)

(define (AbPathUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AbPathUtil.jstatic_instance)))))



