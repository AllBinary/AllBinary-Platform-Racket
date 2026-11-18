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
;; package javax.microedition.lcdui

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./Image.rkt" (Image.jnew_0)])
(provide (all-defined-out))

(define NullImage%
  (class JObject%
    (super-new)))
(define (NullImage.jclassValue) NullImage%)

(define NullImage.jcell_NULL_IMAGE_ARRAY 'jnone)
(define (NullImage.jstatic_NULL_IMAGE_ARRAY)
  (when (eq? NullImage.jcell_NULL_IMAGE_ARRAY 'jnone) (set! NullImage.jcell_NULL_IMAGE_ARRAY (JR.newArray JR.null 0)))
  NullImage.jcell_NULL_IMAGE_ARRAY)
(define (NullImage.jsetstatic_NULL_IMAGE_ARRAY value) (set! NullImage.jcell_NULL_IMAGE_ARRAY value))

(define NullImage.jcell_NULL_IMAGE 'jnone)
(define (NullImage.jstatic_NULL_IMAGE)
  (when (eq? NullImage.jcell_NULL_IMAGE 'jnone) (set! NullImage.jcell_NULL_IMAGE (Image.jnew_0)))
  NullImage.jcell_NULL_IMAGE)
(define (NullImage.jsetstatic_NULL_IMAGE value) (set! NullImage.jcell_NULL_IMAGE value))

(define (NullImage.jnew_0)
  (define this (new NullImage% [jclass "NullImage"]))
  this)



