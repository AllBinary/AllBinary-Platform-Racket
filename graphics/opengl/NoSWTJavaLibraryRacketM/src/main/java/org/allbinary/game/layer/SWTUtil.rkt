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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define SWTUtil%
  (class JObject%
    (super-new)))
(define (SWTUtil.jclassValue) SWTUtil%)

(define SWTUtil.jcell_isSWT 'jnone)
(define (SWTUtil.jstatic_isSWT)
  (when (eq? SWTUtil.jcell_isSWT 'jnone) (set! SWTUtil.jcell_isSWT #f))
  SWTUtil.jcell_isSWT)
(define (SWTUtil.jsetstatic_isSWT value) (set! SWTUtil.jcell_isSWT value))

(define SWTUtil.jcell_SWT 'jnone)
(define (SWTUtil.jstatic_SWT)
  (when (eq? SWTUtil.jcell_SWT 'jnone) (set! SWTUtil.jcell_SWT "SWT"))
  SWTUtil.jcell_SWT)
(define (SWTUtil.jsetstatic_SWT value) (set! SWTUtil.jcell_SWT value))

(define (SWTUtil.jnew_0)
  (define this (new SWTUtil% [jclass "SWTUtil"]))
  this)



