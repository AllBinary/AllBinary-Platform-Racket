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
;; package org.allbinary.logic.system

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/InputStream.rkt")
(lazy-require ["../../../../org/allbinary/data/resource/ResourceUtil.rkt" (ResourceUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define PlatformAssetManager%
  (class JObject%
    (super-new)
    (define/public (jm_getResourceAsStream_1 _resource)
    (let ([_resourceUtil JR.null][_inputStream JR.null])
      (let/ec jreturn
        (set! _resourceUtil (ResourceUtil.jm_getInstance_0))
        (set! _inputStream (send _resourceUtil jm_getResourceAsStream_1 _resource))
        (jreturn _inputStream))))))
(define (PlatformAssetManager.jclassValue) PlatformAssetManager%)

(define PlatformAssetManager.jcell_instance 'jnone)
(define (PlatformAssetManager.jstatic_instance)
  (when (eq? PlatformAssetManager.jcell_instance 'jnone) (set! PlatformAssetManager.jcell_instance (PlatformAssetManager.jnew_0)))
  PlatformAssetManager.jcell_instance)
(define (PlatformAssetManager.jsetstatic_instance value) (set! PlatformAssetManager.jcell_instance value))

(define (PlatformAssetManager.jnew_0)
  (define this (new PlatformAssetManager% [jclass "PlatformAssetManager"]))
  this)

(define (PlatformAssetManager.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PlatformAssetManager.jstatic_instance)))))



