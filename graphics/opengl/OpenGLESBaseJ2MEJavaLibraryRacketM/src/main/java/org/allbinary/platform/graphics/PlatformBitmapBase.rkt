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
;; package org.allbinary.platform.graphics

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE)])
(provide (all-defined-out))

(define PlatformBitmapBase%
  (class JObject%
    (super-new)
    (define/public (jm_getImage_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullImage.jstatic_NULL_IMAGE)))))))
(define (PlatformBitmapBase.jclassValue) PlatformBitmapBase%)

(define (PlatformBitmapBase.jnew_0)
  (define this (new PlatformBitmapBase% [jclass "PlatformBitmapBase"]))
  this)



