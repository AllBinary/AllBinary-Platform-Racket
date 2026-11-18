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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OpenGLBitmapConfig%
  (class JObject%
    (super-new)
    (field [f_bitmapConfig JR.null])))
(define (OpenGLBitmapConfig.jclassValue) OpenGLBitmapConfig%)

(define (OpenGLBitmapConfig.jnew_1 _bitmapConfig)
  (define this (new OpenGLBitmapConfig% [jclass "OpenGLBitmapConfig"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_bitmapConfig this _bitmapConfig)))
  this)



