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
;; package org.allbinary.platform.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define PlatformTextureBaseFactory%
  (class JObject%
    (super-new)
    (field [f_commonStrings JR.null])
    (define/public (jm_load_6 _gl _target _level _image _border _flip)
    (let ()
      (let/ec jreturn (void))))))
(define (PlatformTextureBaseFactory.jclassValue) PlatformTextureBaseFactory%)

(define PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY 'jnone)
(define (PlatformTextureBaseFactory.jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY)
  (when (eq? PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY 'jnone) (set! PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY (PlatformTextureBaseFactory.jnew_0)))
  PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY)
(define (PlatformTextureBaseFactory.jsetstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY value) (set! PlatformTextureBaseFactory.jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY value))

(define (PlatformTextureBaseFactory.jnew_0)
  (define this (new PlatformTextureBaseFactory% [jclass "PlatformTextureBaseFactory"]))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
  this)



