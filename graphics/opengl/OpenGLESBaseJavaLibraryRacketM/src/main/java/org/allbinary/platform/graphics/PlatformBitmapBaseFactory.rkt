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
(lazy-require ["./PlatformBitmapBase.rkt" (PlatformBitmapBase.jstatic_NULL_PLATFORM_BITMAP_BASE)])
(provide (all-defined-out))

(define PlatformBitmapBaseFactory%
  (class JObject%
    (super-new)
    (define/public (jm_createBitmap_1 _image)
    (let ()
      (let/ec jreturn
        (jreturn (PlatformBitmapBase.jstatic_NULL_PLATFORM_BITMAP_BASE)))))))
(define (PlatformBitmapBaseFactory.jclassValue) PlatformBitmapBaseFactory%)

(define PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY 'jnone)
(define (PlatformBitmapBaseFactory.jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY)
  (when (eq? PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY 'jnone) (set! PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY (PlatformBitmapBaseFactory.jnew_0)))
  PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY)
(define (PlatformBitmapBaseFactory.jsetstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY value) (set! PlatformBitmapBaseFactory.jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY value))

(define (PlatformBitmapBaseFactory.jnew_0)
  (define this (new PlatformBitmapBaseFactory% [jclass "PlatformBitmapBaseFactory"]))
  this)



