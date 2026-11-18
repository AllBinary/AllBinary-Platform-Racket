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
;; package javax.microedition.lcdui

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./PlatformImage.rkt")
(provide (all-defined-out))

;PlatformNullImageJavaLibrary
(define PreLoadPlatformImage%
  (class PlatformImage%
    (super-new)))
(define (PreLoadPlatformImage.jclassValue) PreLoadPlatformImage%)

(define PreLoadPlatformImage.jcell_instance 'jnone)
(define (PreLoadPlatformImage.jstatic_instance)
  (when (eq? PreLoadPlatformImage.jcell_instance 'jnone) (set! PreLoadPlatformImage.jcell_instance (PreLoadPlatformImage.jnew_0)))
  PreLoadPlatformImage.jcell_instance)
(define (PreLoadPlatformImage.jsetstatic_instance value) (set! PreLoadPlatformImage.jcell_instance value))

(define (PreLoadPlatformImage.jnew_0)
  (define this (new PreLoadPlatformImage% [jclass "PreLoadPlatformImage"]))
  this)

(define (PreLoadPlatformImage.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PreLoadPlatformImage.jstatic_instance)))))



