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
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PlatformBitmapBase%
  (class JObject%
    (super-new)
    (field [f_alpha 0])
    (field [f_basicColor JR.null])
    (define/public (jm_getWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/public (jm_getImage_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullImage.jstatic_NULL_IMAGE)))))))
(define (PlatformBitmapBase.jclassValue) PlatformBitmapBase%)

(define PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE 'jnone)
(define (PlatformBitmapBase.jstatic_NULL_PLATFORM_BITMAP_BASE)
  (when (eq? PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE 'jnone) (set! PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE (PlatformBitmapBase.jnew_0)))
  PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE)
(define (PlatformBitmapBase.jsetstatic_NULL_PLATFORM_BITMAP_BASE value) (set! PlatformBitmapBase.jcell_NULL_PLATFORM_BITMAP_BASE value))

(define (PlatformBitmapBase.jnew_0)
  (define this (new PlatformBitmapBase% [jclass "PlatformBitmapBase"]))
    (set-field! f_alpha this 255)
    (set-field! f_basicColor this (get-field f_NULL_COLOR (BasicColorFactory.jm_getInstance_0)))
  this)



